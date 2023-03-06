package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import kr.smhrd.entity.t_member;
import kr.smhrd.mapper.Mapper;

@Controller
public class BoardController {

	@Autowired
	private Mapper mapper;
	
	@RequestMapping("/Main.do") //Main 페이지
	public String boardList() {
		
		return "Main";
	}
	
	@GetMapping("/login.do") //login 페이지로 연결
	public String login() {
		return "login";
	}
	
	@PostMapping("/login.do") //login 페이지로 연결
	public String login(t_member vo, HttpSession session) {
		
		
		t_member mvo = mapper.loginCheck(vo);
		 if(mvo != null) {
			 // 회원 인증 성공
			 // 이때, ★★모델에 바인딩하면 안된다..!★★
			 // 원래 스프링에서 HttpSession session 안쓴다
			 // 보안에 더 안전한 방법 있는데 그거는 나중에 책보고 해보세요
			 
			 session.setAttribute("mvo", mvo);
		 }
	 return "redirect:/Main.do";
	}
}
