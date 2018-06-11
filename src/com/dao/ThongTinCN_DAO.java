package com.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.Model.DangNhap;
import com.Model.SV_DangKyDT;
import com.Model.ThongTinCN;

public class ThongTinCN_DAO {
	public static Connection conn = Connect.getConnection();
	public static PreparedStatement pst = null;
	public static CallableStatement calstmt = null;
	public static ResultSet rs = null;

	public ThongTinCN getThongTinCaNhan(String userName) throws SQLException {
		ThongTinCN thongtin = null;
		String nameStu = "";
		String addressStu = "";
		int ageStu;
		String picStu = "";
		String professStu = "";
		String ngayLap = "";
		String hieuLucTaiKhoan = "";
		String idacc = "";
		String sdt = "";
		String email = "";
		String major = "";
		int idstu = 0;

		String sql = "select st.idStu, a.idAcc, st.nameStu,st.addressStu,st.ageStu,st.picStu,st.professStu,sta.ngayLap,sta.hieuLucTaiKhoan, st.SDT,st.email,st.majorStu"
				+ " from account as a, student_account as sta, student as st"
				+ " where a.idAcc=sta.idAcc and sta.idStu=st.idStu and a.userName='" + userName + "'";

		pst = conn.prepareStatement(sql);
		rs = pst.executeQuery();

		while (rs.next()) {
			idstu = Integer.parseInt(rs.getString("idStu"));
			idacc = rs.getString("idAcc");
			nameStu = rs.getString("nameStu");
			addressStu = rs.getString("addressStu");
			ageStu = rs.getInt("ageStu");
			picStu = rs.getString("picStu");
			professStu = rs.getString("professStu");
			ngayLap = rs.getString("ngayLap");
			hieuLucTaiKhoan = rs.getString("hieuLucTaiKhoan");
			sdt = rs.getString("SDT");
			email = rs.getString("email");
			major = rs.getString("majorStu");
			return thongtin = new ThongTinCN(idstu, idacc, nameStu, addressStu, ageStu, picStu, professStu, ngayLap,
					hieuLucTaiKhoan, sdt, email, major);
		}
		return null;
	}

	public void UpdateStu(int id, String diachi, String sdt, String email) {
		try {
			String sql = "UPDATE student SET addressStu=N'" + diachi + "', SDT= '" + sdt + "', email='" + email
					+ "' WHERE idStu =" + id;
			pst = conn.prepareStatement(sql);
			pst.execute();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}

	public void UpdateTea(int id, String diachi, String sdt, String email) {
		try {
			String sql = "UPDATE teacher SET addressTea=N'" + diachi + "', SDT= '" + sdt + "', email='" + email
					+ "' WHERE idTea =" + id;
			pst = conn.prepareStatement(sql);
			pst.execute();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}

	public ThongTinCN getThongTinCaNhanTea(String userName) throws SQLException {
		ThongTinCN thongtin = null;
		String name = "";
		String address = "";
		int age;
		String pic = "";
		String profess = "";
		String ngayLap = "";
		String hieuLucTaiKhoan = "";
		String idacc = "";
		String sdt = "";
		String email = "";
		String major = "";
		int idstu = 0;

		String sql = "select t.idTea, a.idAcc, t.nameTea,t.addressTea,t.ageTea,t.picTea,t.professTea,ta.ngayLap,ta.hieuLucTaiKhoan, t.SDT,t.email,t.majorTea "
				+ "				 from account as a, teacher_account as ta, teacher as t "
				+ "				 where a.idAcc=ta.idAcc and ta.idTea=t.idTea and a.userName='" + userName + "'";

		pst = conn.prepareStatement(sql);
		rs = pst.executeQuery();

		while (rs.next()) {
			idstu = Integer.parseInt(rs.getString("idTea"));
			idacc = rs.getString("idAcc");
			name = rs.getString("nameTea");
			address = rs.getString("addressTea");
			age = rs.getInt("ageTea");
			pic = rs.getString("picTea");
			profess = rs.getString("professTea");
			ngayLap = rs.getString("ngayLap");
			hieuLucTaiKhoan = rs.getString("hieuLucTaiKhoan");
			sdt = rs.getString("SDT");
			email = rs.getString("email");
			major = rs.getString("majorTea");
			return thongtin = new ThongTinCN(idstu, idacc, name, address, age, pic, profess, ngayLap, hieuLucTaiKhoan,
					sdt, email, major);
		}
		return null;
	}

	public static String getNameTeacherByUserName(String userName) throws SQLException {
		String sql = "select nameTea" + " from account as acc, teacher_account as teaa, Teacher as tea"
				+ " where acc.idAcc=teaa.idAcc and teaa.idTea=tea.idTea and userName=" + userName;
		pst = conn.prepareStatement(sql);
		rs = pst.executeQuery();
		while (rs.next()) {
			return rs.getString("nameTea");
		}
		return null;
	}

	public String getpassword(String userName) {
		try {
			String sql = "select password from account where username ='" + userName + "'";
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			while (rs.next()) {
				return rs.getString("password");
			}
			// System.out.println("Sửa thành công");
		} catch (Exception ex) {
			ex.printStackTrace();

		}
		return null;
	}
	public void doimk(String userName, String mk) {
		try {
			String sql = "update account set password = '"+mk+"' where username= '"+userName+"'";
			pst = conn.prepareStatement(sql);
			pst.execute();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}
}
