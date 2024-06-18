package com.exam.dto;

import org.apache.ibatis.type.Alias;

@Alias("CartDTO")
public class CartDTO {

	String num;
	String userid;
	String gCode;
	
	public CartDTO() {
	}

	public CartDTO(String num, String userid, String gCode) {
		super();
		this.num = num;
		this.userid = userid;
		this.gCode = gCode;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getgCode() {
		return gCode;
	}

	public void setgCode(String gCode) {
		this.gCode = gCode;
	}

	@Override
	public String toString() {
		return "CartDTO [num=" + num + ", userid=" + userid + ", gCode=" + gCode + "]";
	}
	
	
	
	
}
