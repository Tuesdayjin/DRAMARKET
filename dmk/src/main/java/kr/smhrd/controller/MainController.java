package kr.smhrd.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.smhrd.entity.t_board;
import kr.smhrd.entity.t_member;
import kr.smhrd.mapper.Mapper;

@Controller
public class MainController {

	@Autowired
	private Mapper mapper;
	
	@RequestMapping("/Main.do") //Main 페이지
	public String Main() {
		
		return "Main";
	}
	
	@GetMapping("/login.do") //login 페이지로 연결
	public String login() {
		return "login";
	}
	
	@PostMapping("/login.do") //login 페이지로 연결 
	public String login(t_member vo, HttpSession session) {
		 t_member mvo = mapper.loginCheck(vo); //(회원인증매퍼)
		 mvo.getId();
		 if(mvo != null) {
			 session.setAttribute("mvo", mvo);
			 // 이때, ★★ model 에 바인딩하면 안된다..!★★
			 // 원래 스프링에서 HttpSession session 안쓰지만 일단 여기까지만 배움
			 // 보안에 더 안전한 방법 있는데 그거는 나중에 책보고 해보세요
		 }
	 return "redirect:/Main.do";
	}
	
	@PostMapping("/memeberRegister.do") //login 페이지로 연결 
	public String memeberRegister(t_member vo, HttpSession session) {
		 t_member mvo = mapper.loginCheck(vo); //(회원인증매퍼)
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
	
	@PostMapping("/uploadFile.do")
	public String upload(@RequestParam("uploadFile") MultipartFile file, RedirectAttributes rttr) {
		String fileRealName = file.getOriginalFilename(); //파일명을 얻어낼 수 있는 메서드!
		long size = file.getSize(); //파일 사이즈
		
		System.out.println("파일명 : "  + fileRealName);
		System.out.println("용량크기(byte) : " + size);
		//서버에 저장할 파일이름 fileextension으로 .jsp이런식의  확장자 명을 구함
		String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
		String uploadFolder = "C:\\Users\\SMHRD\\dmkFlask\\upload";
		
		
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

	@RequestMapping("/result.do")
	public String viewFile(@RequestParam("fileName") String fileName, Model model) {
		model.addAttribute("fileName", fileName);
		return "result";
	}

}
