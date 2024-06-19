package com.exam.dto;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

@Alias("GoodsDTO")
public class GoodsDTO {
	
	String gCode;
	String userid;
	String gCategory;
	String gName;
	String gContent;
	int gPrice;
	MultipartFile image;
	String gImage;
	
	public GoodsDTO() {}

	public GoodsDTO(String gCode, String userid, String gCategory, String gName, String gContent, int gPrice,
			MultipartFile image, String gImage) {
		super();
		this.gCode = gCode;
		this.userid = userid;
		this.gCategory = gCategory;
		this.gName = gName;
		this.gContent = gContent;
		this.gPrice = gPrice;
		this.image = image;
		this.gImage = gImage;
	}

	public String getgCode() {
		return gCode;
	}

	public void setgCode(String gCode) {
		this.gCode = gCode;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getgCategory() {
		return gCategory;
	}

	public void setgCategory(String gCategory) {
		this.gCategory = gCategory;
	}

	public String getgName() {
		return gName;
	}

	public void setgName(String gName) {
		this.gName = gName;
	}

	public String getgContent() {
		return gContent;
	}

	public void setgContent(String gContent) {
		this.gContent = gContent;
	}

	public int getgPrice() {
		return gPrice;
	}

	public void setgPrice(int gPrice) {
		this.gPrice = gPrice;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	public String getgImage() {
		return gImage;
	}

	public void setgImage(String gImage) {
		this.gImage = gImage;
	}

	@Override
	public String toString() {
		return "GoodsDTO [gCode=" + gCode + ", userid=" + userid + ", gCategory=" + gCategory + ", gName=" + gName
				+ ", gContent=" + gContent + ", gPrice=" + gPrice + ", image=" + image + ", gImage=" + gImage + "]";
	}
}
