package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.t_member;
import kr.smhrd.mapper.BoardMapper;

@Controller
public class BoardController {

	@Autowired
	private BoardMapper mapper;
	
	@RequestMapping("/Main.do")
	public String boardList(HttpServletRequest request) {
		List<t_member> list = mapper.boardList();
		 
		request.setAttribute("list", list);
		return "Main";
	}
}
