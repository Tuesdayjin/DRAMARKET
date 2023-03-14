package kr.smhrd.entity;

import java.util.Date;

import lombok.Data;

@Data
public class t_board {

    // 게시물번호. 게시물번호
    private Long num;

    // 제목. 제목
    private String title;

    // 내용. 내용
    private String content;

    // 작성자. 작성자
    private String id;

    // 작성일시. 작성일시
    private Date indate;

    // 첨부파일. 첨부파일
    private String img_name;

    // 조회수. 조회수
    private Integer views;
    
    // 닉네임. 닉네임
    private String nick;

}
