package com.Model;

public class DangNhap {
	private String userName;
	private String passWord;
	private String nameStu;
	public String getNameStu() {
		return nameStu;
	}
	public void setNameStu(String nameStu) {
		this.nameStu = nameStu;
	}
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
	
	public DangNhap(String userName, String passWord, String nameStu){
		this.userName=userName;
		this.passWord=passWord;
		this.nameStu=nameStu;
	}
	
	public DangNhap(String userName,String passWord){
		this.userName=userName;
		this.passWord=passWord;
	}
}
