package com.Model;

import java.sql.ResultSet;

public class DB_DanhSachCapDeTai {
	DAL dal;
	public DB_DanhSachCapDeTai(){
		dal= new DAL();
	}
	public ResultSet getListDetai() {
		return dal.getData("select * from account_subject where ngaycap!='null';");
	}
}
