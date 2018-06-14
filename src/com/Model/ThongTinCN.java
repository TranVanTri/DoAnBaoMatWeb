package com.Model;

public class ThongTinCN {
	private int id;
	private String idacc;
	private String name;
	private String address;
	private int age;
	private String ngayLap;
	private String hieuLucTaiKhoan;
	private String SDT;
	private String email;
	private String major;

	public String getNgayLap() {
		return ngayLap;
	}

	public void setNgayLap(String ngayLap) {
		this.ngayLap = ngayLap;
	}

	public String getHieuLucTaiKhoan() {
		return hieuLucTaiKhoan;
	}

	public void setHieuLucTaiKhoan(String hieuLucTaiKhoan) {
		this.hieuLucTaiKhoan = hieuLucTaiKhoan;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSDT() {
		return SDT;
	}

	public void setSDT(String sDT) {
		SDT = sDT;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIdacc() {
		return idacc;
	}

	public void setIdacc(String idacc) {
		this.idacc = idacc;
	}

	private String pic;
	private String profess;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getProfess() {
		return profess;
	}

	public void setProfess(String profess) {
		this.profess = profess;
	}

	public ThongTinCN(int id, String idacc, String name, String address, int age, String pic, String profess,
			String cap, String han, String SDT, String email,String major) {
		this.id = id;
		this.idacc = idacc;
		this.name = name;
		this.address = address;
		this.age = age;
		this.pic = pic;
		this.profess = profess;
		this.ngayLap = cap;
		this.hieuLucTaiKhoan = han;
		this.SDT = SDT;
		this.email = email;
		this.major=major;
	}

	public ThongTinCN(int id, String name) {
		this.id = id;
		this.name = name;
	}

}
