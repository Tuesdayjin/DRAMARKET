package kr.smhrd.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.smhrd.entity.t_board;
import kr.smhrd.entity.t_member;
import kr.smhrd.mapper.Mapper;
import kr.smhrd.util.common_util;

@Controller
public class MainController {

	@Autowired
	private Mapper mapper;
	
	@RequestMapping("/intro.do") //Main 페이지
	public String intro() {
		
		return "intro";
	}
	
	@RequestMapping("/Main.do") //Main 페이지
	public String Main() {
		
		return "Main";
	}
	
	@RequestMapping("/test.do") //Main 페이지
	public String test() {
		
		return "test";
	}
	
	
	@PostMapping("/uploadFile.do")
	public String upload(@RequestParam("uploadFile") MultipartFile file, RedirectAttributes rttr) {
		String fileRealName = file.getOriginalFilename(); //파일명을 얻어낼 수 있는 메서드!
		long size = file.getSize(); //파일 사이즈
		
		System.out.println("파일명 : "  + fileRealName);
		System.out.println("용량크기(byte) : " + size);
		//서버에 저장할 파일이름 fileextension으로 .jsp이런식의  확장자 명을 구함
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
		String uploadFolder = "C:\\dmkServer\\upload";
		
		
		/*
		  파일 업로드시 파일명이 동일한 파일이 이미 존재할 수도 있고 사용자가 
		  업로드 하는 파일명이 언어 이외의 언어로 되어있을 수 있습니다. 
		  타인어를 지원하지 않는 환경에서는 정산 동작이 되지 않습니다.(리눅스가 대표적인 예시)
		  고유한 랜던 문자를 통해 db와 서버에 저장할 파일명을 새롭게 만들어 준다.
		 */
		
		UUID uuid = UUID.randomUUID();
		System.out.println(uuid.toString());
		String[] uuids = uuid.toString().split("-");
		
		String uniqueName = uuids[0];
		System.out.println("생성된 고유문자열" + uniqueName);
		System.out.println("확장자명" + fileExtension);
		
		// File saveFile = new File(uploadFolder+"\\"+fileRealName); uuid 적용 전
		
		File saveFile = new File(uploadFolder+"\\"+uniqueName + fileExtension);  // 적용 후
		try {
			file.transferTo(saveFile); // 실제 파일 저장메서드(filewriter 작업을 손쉽게 한방에 처리해준다.)
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		rttr.addAttribute("fileName", uniqueName + fileExtension);
		
		return "redirect:http://localhost:5000/predict";
	}

	@RequestMapping("/captureUpload.do")
	public String captureUpload(MultipartHttpServletRequest multipartRequest,  HttpServletResponse response)
			throws ServletException, IOException {
		// 파일 저장 디렉토리 설정
		String uploadFolder = "C:\\dmkServer\\upload";
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
			System.out.println(uuid.toString());
			String[] uuids = uuid.toString().split("-");
			
			String uniqueName = uuids[0];
			
	        //파일 저장(UploadPath, UploadName)
	        File saveFile = new File(uploadFolder+"\\"+uniqueName + ".png");  // 적용 후
	        
			try {
				mFile.transferTo(saveFile);
				System.out.println("저장완료. 저장 경로는 : "+saveFile.getPath() );
				
			} catch (Exception error) {
				System.out.println(error.getMessage());
			}
			
		}
		System.out.println(UploadName);
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print(UploadName);
		
		return null;

		
	}
	
	@RequestMapping("/asdf.do") //Main 페이지
	public String asdf(@RequestParam("captureFile") String filename) {
		System.out.println(filename);
		
		
		return "Main";
	}
	
	@RequestMapping("/result.do")
	public String viewFile(@RequestParam("fileName") String fileName, Model model) {
		model.addAttribute("fileName", fileName);
		return "result";
	}
	
}
