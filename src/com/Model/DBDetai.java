package com.Model;

import java.sql.ResultSet;

public class DBDetai {
	DAL dal;
	public DBDetai(){
		dal=new DAL();
	}
	
	public ResultSet getListDetai() {
		return dal.getData("select s.idSub, st.nameStu, s.nameSub , accs.idSupport, accs.ngayDangKy, accs.ngayCap , accs.hanNop,accs.tinhTrang"+ 
	"from subject as s, account_subject as accs, account as a, student as st, student_account as sta"+
	"where s.idSub=accs.idSub and accs.idAcc=a.idAcc and a.idAcc=sta.idAcc and sta.idStu=st.idStu");
	}
}
