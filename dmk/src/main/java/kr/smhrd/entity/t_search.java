package kr.smhrd.entity;

import lombok.Data;

@Data
public class t_search {
	
    // 번호. 번호
    private Long idx;

    // 유저 아이디. 유저 아이디
    private String id;

    // 입력값 이미지. 입력값 이미지
    private String in_img;

    // 입력값 링크. 입력값 링크
    private String in_url;

}
