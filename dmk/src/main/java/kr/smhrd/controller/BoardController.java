package kr.smhrd.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.security.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.imgscalr.Scalr;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mysql.cj.util.Util;

import kr.smhrd.entity.t_board;
import kr.smhrd.mapper.Mapper;
import kr.smhrd.util.common_util;

@Controller
public class BoardController { //DAO 대신 mapper 호출
	
	@Autowired 
	private Mapper mapper;
	
	@RequestMapping("/boardList.do") //게시판 페이지
	public String boardList(Model model) {
		
		List<t_board> list = mapper.selecT_board();
		model.addAttribute("list",list);
		
		return "boardList";
	}
	
	
	@GetMapping("/board_Write.do") //글쓰기 페이지 불러오기 
	public String board_Write() {
		
		return "board_Write";
	}
	
	
	
	@RequestMapping(value = "/writeupload.do", method= RequestMethod.POST)
	public String writeupload(t_board vo) {


		vo.setIndate(java.sql.Timestamp.valueOf(LocalDateTime.now()));
		mapper.insertWrite(vo);
		
		return "redirect:/board_Write";
		
	}
	
	
	@RequestMapping("/fileupload.do") //파일 등록
	public String fileupload(MultipartHttpServletRequest multipartRequest,  HttpServletResponse response)
	throws ServletException, IOException{
		
		// 파일 저장 디렉토리 설정
		String uploadFolder = "C:\\Users\\smhrd\\git\\DRAMARKET\\dmk\\src\\main\\webapp\\resources\\boardimg";
		//String path = multipartRequest.getServletContext().getRealPath("")+File.separator+"img"; // 쌤 경로
	    // 날짜별로 디렉토리 생성, uploadPath 설정
	    File uploadPath = new File(uploadFolder);
	    if(!uploadPath.exists()) uploadPath.mkdirs();
		

		Iterator<String> it= multipartRequest.getFileNames();
		List<String> fileList = new ArrayList<String>();
		String UploadName="";
		while (it.hasNext()) { // 마지막 파라메터가 없으면 false 반복 종료
			String paramFileName = it.next();
			
			//파일을 다루는 클래스 (파라메터로 받아온 파일의 이름, 타입, 크기 등의 정보 )
			MultipartFile mFile = multipartRequest.getFile(paramFileName);
			String fileRealName = mFile.getOriginalFilename();//실제 파일 이름
			System.out.println(fileRealName); //넘어오는 값들 확인 
			fileList.add(fileRealName);
			
			
			//업로드 이름(UploadName) 지정
			UUID uuid = UUID.randomUUID();
	        UploadName= uuid.toString() + "_" + fileRealName;
			
	        //파일 저장(UploadPath, UploadName)
	        File saveFile = new File(uploadPath, UploadName);
	        
			try {
				mFile.transferTo(saveFile);
				System.out.println("저장완료. 저장 경로는 : "+saveFile.getPath() );
				
			} catch (Exception error) {
				System.out.println(error.getMessage());
			}
			
			new common_util().thumb(saveFile, uploadPath, UploadName, fileRealName);
		}
		System.out.println(UploadName);
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print(UploadName);
		
		return null;

		
	}
	


	/*@RequestMapping("/fileupload.do") //파일 등록
	public String boardList(MultipartHttpServletRequest multipartRequest) {
		// MultipartHttpServletRequest 스프링에서 파일 받아주는 객체  
		// HttpServletRequest input 값 받아주는 객체 
		
		// 파일 저장 디렉토리 설정
		String uploadPath = "/dmk/src/main/webapp/resources/board_img";
		/*System.getProperty("user.home");
		File uploadPath = new common_util().makefolder(uploadFolder);
		MultipartFile file = multipartRequest.getFile("file"); // jsp에서 name값
		
	
		//받아온 값들 저장할 map
		Map map =new HashMap(); //(key, value)
		
		//Enumeration = 나열, 열거 -> form 의 input의 name값들 줄줄이 받아오기 
		Enumeration<String> e = multipartRequest.getParameterNames();
		
		 //name값에 맞는 value 줄줄이 받아오기 (file 제외)
		while(e.hasMoreElements()){ // 마지막 파라메터가 없으면 false 반복 종료
			String name = e.nextElement();
			String value = multipartRequest.getParameter(name);
			System.out.println(name +" : "+value); //넘어오는 값들 확인 
			map.put(name,value); //맵에 parameter 저장 
		}
		
		
		//파일 파라메터 읽어오기 Iterator => 이것도 나열, 열거형 (메서드가 반환하는 파일 형식에 맞춰서 사용)
		Iterator<String> it= multipartRequest.getFileNames(); //파일 이름을 읽어오는게 아니라 -> 파일 input name 값 읽어오는것 ★
		List<String> fileList = new ArrayList<String>();
		while (it.hasNext()) { // 마지막 파라메터가 없으면 false 반복 종료
			String paramFileName = it.next();
			
			//파일을 다루는 클래스 (파라메터로 받아온 파일의 이름, 타입, 크기 등의 정보 )
			MultipartFile mFile = multipartRequest.getFile(paramFileName);
			String fileRealName = mFile.getOriginalFilename();//실제 파일 이름
			System.out.println(fileRealName); //넘어오는 값들 확인 
			fileList.add(fileRealName);
			
			//업로드 이름(UploadName) 지정
			UUID uuid = UUID.randomUUID();
	        String UploadName= uuid.toString() + "_" + fileRealName;
			
	        //파일 저장(UploadPath, UploadName)
	        File saveFile = new File(uploadPath, UploadName);
	        
			try {
				mFile.transferTo(saveFile);
				
			} catch (Exception error) {
				System.out.println(error.getMessage());
			}

			// 파일 저장 후 썸네일 생성
			new common_util().thumb(saveFile, uploadPath, UploadName, fileRealName);
			}
			
		
		
				
		return "";
	}
	*/

}
