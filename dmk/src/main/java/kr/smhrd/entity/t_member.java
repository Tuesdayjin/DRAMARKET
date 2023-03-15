package kr.smhrd.entity;

import java.util.Date;

import lombok.Data;

@Data
public class t_member {

    // 아이디. 아이디
    private String id;

    // 비밀번호. 비밀번호
    private String pwd;

    // 닉네임. 닉네임
    private String nick;

    // 성별. 성별
    private String gender;

    // 생년월일. 생년월일
    private String birth;
    
    // 프로필 이미지
    private String profile_name;

}
