
package kr.smhrd.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.smhrd.entity.t_member;
import kr.smhrd.mapper.Mapper;
import kr.smhrd.util.common_util;

@Controller
public class MemberController {

	
	@Autowired
	private Mapper mapper;
	
	
	@GetMapping("/login.do") //login 페이지로 연결
	public String login() {
		return "login";
	}

	
	@PostMapping("/login.do") //login 기능 구현
	public String login(t_member vo, HttpSession session) {
		System.out.println(vo.getId());
		System.out.println(vo.getPwd());
		
		 t_member mvo = mapper.loginCheck(vo); //(회원인증매퍼)
		 System.out.println(mvo.getId());
		 
		 if(mvo != null) {
			 session.setAttribute("mvo", mvo);
			 // 이때, ★★ model 에 바인딩하면 안된다..!★★
			 // 원래 스프링에서 HttpSession session 안쓰지만 일단 여기까지만 배움
			 // 보안에 더 안전한 방법 있는데 그거는 나중에 책보고 해보세요
		 }
	 return "redirect:/Main.do";
	}
	
	
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		//세션 무효화, 세션 비우기
		session.invalidate();
		return "redirect:/Main.do";
	}
	
	
	@RequestMapping("/memberRegister.do")
	public String memberRegister(t_member vo, HttpSession session) {
		
		System.out.println(vo.getGender());
		System.out.println(vo.getId());
		System.out.println(vo.getProfile_name());
		System.out.println(vo.getBirth());
		mapper.memberRegister(vo); 
		t_member mvo = mapper.loginCheck(vo); //(회원인증매퍼)
	
		
		if(mvo != null) {
			 session.setAttribute("mvo", mvo);
		 }
		return "redirect:/Main.do";
		
	}
	
	@RequestMapping("/profileupload.do") //파일 등록
	public String fileupload(MultipartHttpServletRequest multipartRequest,  HttpServletResponse response)
	throws ServletException, IOException{
		
		// 파일 저장 디렉토리 설정
		String uploadFolder = "C:\\Users\\smhrd\\git\\DRAMARKET\\dmk\\src\\main\\webapp\\resources\\img\\profile";
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
			
			new common_util().profilecut(saveFile, uploadPath, UploadName, fileRealName);
		}
		System.out.println(UploadName);
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().print(UploadName);
		
		return null;
	}
}
