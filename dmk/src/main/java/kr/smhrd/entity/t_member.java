package kr.smhrd.entity;

import java.util.Date;

import lombok.Data;

@Data
public class t_member {

	private String id;
	private String pwd;
	private String gender;
	private Date birth;
}
