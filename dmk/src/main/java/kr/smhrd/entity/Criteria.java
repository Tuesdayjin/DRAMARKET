package kr.smhrd.entity;

import lombok.Data;

@Data
public class Criteria {
	private int page; // 현재 페이지 번호
	private int perPageNum; // 한 페이지에 보여줄 게시글의 수
	private int pageStart;

	public Criteria() {
		this.page = 1;
		this.perPageNum = 10; // 조정
	}

	// 현재 페이지 게시물의 시작 번호
	public int getPageStart() {
		return (page - 1) * perPageNum; // 0, 5, 10
		// limit 시작번호: 0;
	}

}
