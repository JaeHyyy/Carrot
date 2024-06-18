package com.exam.dto;

import org.apache.ibatis.type.Alias;

@Alias("CartDTO")
public class CartDTO {

	String num;
	String userid;
	String gCode;
	String gName;
	int gPrice;
	String gImage;
	String gContent;
	
	public CartDTO() {
	}

	public CartDTO(String num, String userid, String gCode, String gName, int gPrice, String gImage, String gContent) {
		super();
		this.num = num;
		this.userid = userid;
		this.gCode = gCode;
		this.gName = gName;
		this.gPrice = gPrice;
		this.gImage = gImage;
		this.gContent = gContent;
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

	public String getgName() {
		return gName;
	}

	public void setgName(String gName) {
		this.gName = gName;
	}

	public int getgPrice() {
		return gPrice;
	}

	public void setgPrice(int gPrice) {
		this.gPrice = gPrice;
	}

	public String getgImage() {
		return gImage;
	}

	public void setgImage(String gImage) {
		this.gImage = gImage;
	}

	public String getgContent() {
		return gContent;
	}

	public void setgContent(String gContent) {
		this.gContent = gContent;
	}

	@Override
	public String toString() {
		return "CartDTO [num=" + num + ", userid=" + userid + ", gCode=" + gCode + ", gName=" + gName + ", gPrice="
				+ gPrice + ", gImage=" + gImage + ", gContent=" + gContent + "]";
	}

	
	
	
	
	
}
