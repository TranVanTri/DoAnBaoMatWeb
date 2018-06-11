package com.Model;

public class SV_DangKyDT {
	private int idSub;
	private String nameSub;
	private String contentSub;
	private String nameteacher;
	private int idSupport;
	private String ngayDangKy;
	private String ngayCap;
	private String hanNop;
	private String tinhTrang;
	private String ghichu;
	private String link;
	
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



	public String getContentSub() {
		return contentSub;
	}



	public void setContentSub(String contentSub) {
		this.contentSub = contentSub;
	}



	public String getNameteacher() {
		return nameteacher;
	}



	public void setNameteacher(String nameteacher) {
		this.nameteacher = nameteacher;
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



	public String getNgayCap() {
		return ngayCap;
	}



	public void setNgayCap(String ngayCap) {
		this.ngayCap = ngayCap;
	}



	public String getHanNop() {
		return hanNop;
	}



	public void setHanNop(String hanNop) {
		this.hanNop = hanNop;
	}



	public String getTinhTrang() {
		return tinhTrang;
	}



	public void setTinhTrang(String tinhTrang) {
		this.tinhTrang = tinhTrang;
	}

	

	public String getGhichu() {
		return ghichu;
	}



	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}



	public String getLink() {
		return link;
	}



	public void setLink(String link) {
		this.link = link;
	}



	public SV_DangKyDT(int idSub, String nameSub, String contentSub, String nameteacher, String ngayDangKy,
			String ngayCap,	String hanNop, String tinhTrang , String ghichu,String link){
		this.idSub=idSub;
		this.nameSub=nameSub;
		this.contentSub=contentSub;
		this.nameteacher=nameteacher;
		this.ngayDangKy=ngayDangKy;
		this.ngayCap=ngayCap;
		this.hanNop=hanNop;
		this.tinhTrang=tinhTrang;
		this.ghichu=ghichu;
		this.link=link;
	}
	public SV_DangKyDT(int idSub, String nameSub, String contentSub){
		this.idSub=idSub;
		this.nameSub=nameSub;
		this.contentSub=contentSub;
	}
	public SV_DangKyDT(String ghichu, int idSub, String link){
		this.ghichu=ghichu;
		this.link=link;
		this.idSub=idSub;
	}
}
