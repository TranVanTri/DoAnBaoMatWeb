package com.Model;

public class DangNhap_GV {
	private String userName;
	private String passWord;
	private String nameTea;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getNameTea() {
		return nameTea;
	}
	public void setNameTea(String nameTea) {
		this.nameTea = nameTea;
	}
	
	public DangNhap_GV(String userName, String passWord, String nameTea){
		this.userName=userName;
		this.passWord=passWord;
		this.nameTea=nameTea;
	}
	
	public DangNhap_GV(String userName,String passWord){
		this.userName=userName;
		this.passWord=passWord;
	}
}
