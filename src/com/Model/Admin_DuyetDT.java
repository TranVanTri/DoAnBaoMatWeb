package com.Model;

public class Admin_DuyetDT {
	int idSub;
	String nameSub;
	String nameStu;
	String ngayDangKy;
	int type;
	public int getIdSub() {
		return idSub;
	}
	public void setIdSub(int idSub) {
		this.idSub = idSub;
	}
	public String getNameSub() {
		return nameSub;
	}
	public void setNameSub(String nameSub) {
		this.nameSub = nameSub;
	}
	public String getNameStu() {
		return nameStu;
	}
	public void setNameStu(String nameStu) {
		this.nameStu = nameStu;
	}
	public String getNgayDangKy() {
		return ngayDangKy;
	}
	public void setNgayDangKy(String ngayDangKy) {
		this.ngayDangKy = ngayDangKy;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	public Admin_DuyetDT(int idSub,String nameSub,String nameStu,String ngayDangKy,int type){
		this.idSub=idSub;
		this.nameSub=nameSub;
		this.nameStu=nameStu;
		this.ngayDangKy=ngayDangKy;
		this.type=type;
	}
}
