package com.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.Model.SV_DangKyDT;

public class SV_NopDT_DAO {
	public static Connection conn = Connect.getConnection();
	public static PreparedStatement pst = null;
	public static CallableStatement calstmt = null;
	public static ResultSet rs = null;

	public ArrayList<SV_DangKyDT> getListDetai(String username) {
		ArrayList<SV_DangKyDT> list = new ArrayList<>();
		String sql = "Select account_subject.idSub, nameSub,contentSub, nameTea,ngayDangKy, ngayCap, hanNop, tinhTrang,ghichu ,linkDT FROM account_subject, subject ,teacher "
				+ "    			        			 WHERE account_subject.idSub = subject.idSub AND (tinhtrang =N'đã nộp' OR tinhTrang=N'đã duyệt') AND idSupport = idTea AND idAcc =(SELECT idAcc FROM account WHERE userName='"
				+ username + "')";
		try {

			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			while (rs.next()) {
				int idSub = rs.getInt(1);
				String nameSub = rs.getString(2);
				String contentSub = rs.getString(3);
				String nameteacher = rs.getString(4);
				String ngayDangKy = rs.getString(5);
				String ngayCap = rs.getString(6);
				String hanNop = rs.getString(7);
				String tinhTrang = rs.getString(8);
				String ghichu = rs.getString(9);
				String link = rs.getString(10);
				SV_DangKyDT svdt = new SV_DangKyDT(idSub, nameSub, contentSub, nameteacher, ngayDangKy, ngayCap, hanNop,
						tinhTrang, ghichu, link);
				list.add(svdt);
			}
			return list;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public void Update(int idsub, String link, String ghichu) {
		try {
			String sql = "UPDATE account_subject SET tinhTrang=N'đã nộp' ,ghichu=N'" + ghichu + "',linkDT='" + link
					+ "' WHERE idSub =" + idsub;
			pst = conn.prepareStatement(sql);
			pst.execute();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public SV_DangKyDT find(int idsub) {
		try {
			String sql = "SELECT * FROM account_subject WHERE idSub=?";
			pst = conn.prepareStatement(sql);
			pst.setInt(1, idsub);
			rs = pst.executeQuery();
			SV_DangKyDT sv = null;
			while (rs.next()) {
				int id = rs.getInt(2);
				String ghichu = rs.getString(8);
				String link = rs.getString(9);
				sv = new SV_DangKyDT(ghichu, id, link);
			}
			return sv;
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}
	}
}
