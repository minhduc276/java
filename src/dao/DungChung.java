package dao;

import java.sql.DriverManager;

import com.sun.corba.se.pept.transport.Connection;

public class DungChung {
	public java.sql.Connection cn;
	public void KetNoi() throws Exception{
		//b1: Xac dinh he quan tri CSDL
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		System.out.print("Da xac dinh HQTCSDL");
		//b2: Ket noi vao csdl
		String url = "jdbc:sqlserver://ADMIN\\SQLEXPRESS:1433;databaseName=Qlsach;user=sa; password=123";
		cn = DriverManager.getConnection(url);
		System.out.print("Da ket noi");
	}
}
