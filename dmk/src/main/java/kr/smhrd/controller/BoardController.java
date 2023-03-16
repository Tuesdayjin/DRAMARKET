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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.mysql.cj.util.Util;

import kr.smhrd.entity.t_board;
import kr.smhrd.entity.t_member;
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
	
	
	@GetMapping("/boardInsert.do") //글쓰기 페이지 불러오기 
	public String boardInsert() {
		
		return "boardInsert";
	}

	
	//글 + 첨부파일 insert
	@RequestMapping(value = "/writeaddfile.do", method= RequestMethod.POST)
	public String writeaddfile(t_board vo) {
		System.out.println("1번) 이미지는 : "+vo.getImg_name());
		String id=vo.getId();
		t_member writerVO=mapper.memberById(id);  //작성자 vo 가져오기
		System.out.println(writerVO.getNick());
		vo.setNick(writerVO.getNick());  // 게시글에 작성자 닉네임 추가 
		vo.setProfile_name(writerVO.getProfile_name());  // 게시글에 작성자 프로필 이미지 패스 추가
		
		vo.setIndate(java.sql.Timestamp.valueOf(LocalDateTime.now()));
		System.out.println("2번)이미지는 : "+vo.getImg_name());
		mapper.insertWriteaddfile(vo);
		
		return "redirect:/boardList.do";
		
	}	
	
	
	//글만 insert
	@RequestMapping(value = "/write.do", method= RequestMethod.POST)
	public String write(t_board vo) {

		System.out.println(vo.getId());
		String id=vo.getId();
		
		t_member writerVO=mapper.memberById(id);  //작성자 vo 가져오기
		System.out.println(writerVO.getNick());
		vo.setNick(writerVO.getNick());  // 게시글에 작성자 닉네임 추가 
		vo.setProfile_name(writerVO.getProfile_name());  // 게시글에 작성자 프로필 이미지 패스 추가
		
		vo.setIndate(java.sql.Timestamp.valueOf(LocalDateTime.now()));
		mapper.insertWrite(vo);
		
		return "redirect:/boardList.do";
		
	}
	
	
	@RequestMapping("/fileupload.do") //파일 등록
	public String fileupload(MultipartHttpServletRequest multipartRequest,  HttpServletResponse response)
	throws ServletException, IOException{
		
		// 파일 저장 디렉토리 설정
		String uploadFolder = "C:\\Users\\smhrd\\git\\DRAMARKET\\dmk\\src\\main\\webapp\\resources\\img\\boardimg";
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
	
	@RequestMapping("/boardContent.do") //게시글 조회 페이지 불러오기 
	public String boardContent(long num,Model model) {
		
		// 조회수 누적
		mapper.countUpdate(num); 
		t_board board_vo = mapper.selectContent(num);
		System.out.println("이미지 파일:"+board_vo.getImg_name());
		model.addAttribute("board_vo",board_vo);
		
		return "boardContent";
	}
	



}
