package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.smhrd.entity.t_member;

public interface Mapper {

	
	@Select("select * from t_member where id=#{id} and pwd=#{pwd}")
	public t_member loginCheck(t_member vo);
}
