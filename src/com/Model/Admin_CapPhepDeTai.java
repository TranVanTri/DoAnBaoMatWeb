package com.Model;

public class Admin_CapPhepDeTai {
	private String userName;
	private String nameSub;
	private int idSupport;
	private String ngayDangKy;
	private int idSub;
	private int idAcc;
	public int getIdAcc() {
		return idAcc;
	}
	public void setIdAcc(int idAcc) {
		this.idAcc = idAcc;
	}
	public int getIdSub() {
		return idSub;
	}
	public void setIdSub(int idSub) {
		this.idSub = idSub;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getNameSub() {
		return nameSub;
	}
	public void setNameSub(String nameSub) {
		this.nameSub = nameSub;
	}
	public int getIdSupport() {
		return idSupport;
	}
	public void setIdSupport(int idSupport) {
		this.idSupport = idSupport;
	}
	public String getNgayDangKy() {
		return ngayDangKy;
	}
	public void setNgayDangKy(String ngayDangKy) {
		this.ngayDangKy = ngayDangKy;
	}
	
	public Admin_CapPhepDeTai(String user, String nameSub, int idSup, String ngaydk, int idSub){
		this.userName=user;
		this.nameSub=nameSub;
		this.idSupport=idSup;
		this.ngayDangKy=ngaydk;
		this.idSub=idSub;
	}
	
	public Admin_CapPhepDeTai(String user)
	{
		this.userName=user;
	}
	public Admin_CapPhepDeTai()
	{
		
	}
	
	public Admin_CapPhepDeTai(String user, String nameSub, int idSup, String ngaydk, int idSub, int idAcc){
		this.userName=user;
		this.nameSub=nameSub;
		this.idSupport=idSup;
		this.ngayDangKy=ngaydk;
		this.idSub=idSub;
		this.idAcc=idAcc;
	}
}
