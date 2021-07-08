package team05.seller;

import java.sql.Timestamp;

public class SellerDTO {
	private String id;
	private String pw;
	private String name;
	private String email;
	private String phone;
	private String bizname;
	private String biznum;
	private String bizaddress;
	private String ceoname;
	private String biztel;
	private String managername;
	private String manageremail;
	private String website;	
	private Timestamp reg;
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getBizname() {
		return bizname;
	}
	public void setBizname(String bizname) {
		this.bizname = bizname;
	}
	
	public String getBiznum() {
		return biznum;
	}
	public void setBiznum(String biznum) {
		this.biznum = biznum;
	}
	
	public String getBizaddress() {
		return bizaddress;
	}
	public void setBizaddress(String bizaddress) {
		this.bizaddress = bizaddress;
	}
	
	public String getCeoname() {
		return ceoname;
	}
	public void setCeoname(String ceoname) {
		this.ceoname = ceoname;
	}
	
	public String getBiztel() {
		return biztel;
	}
	public void setBiztel(String biztel) {
		this.biztel = biztel;
	}
	
	public String getManagername() {
		return managername;
	}
	public void setManagername(String managername) {
		this.managername = managername;
	}
	
	public String getManageremail() {
		return manageremail;
	}
	public void setManageremail(String manageremail) {
		this.manageremail = manageremail;
	}
	
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	
	public Timestamp getReg() {
		return reg;
	}
	public void setReg(Timestamp reg) {
		this.reg = reg;
	}	
}
