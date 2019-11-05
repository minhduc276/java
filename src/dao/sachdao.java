package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.sachbean;

public class sachdao {
	DungChung dc = new DungChung();
	public ArrayList<sachbean> getSach() throws Exception {
		ArrayList<sachbean> danhsach = new ArrayList<sachbean>();
		
//		danhsach.add(new sachbean("S01","Book 1","Peter","sach-1.jpg",50));
//		danhsach.add(new sachbean("S02","Book 2","Linda","sach-2.jpg",20));
//		danhsach.add(new sachbean("S03","Book 3","Mia","sach-3.jpg",30));
//		danhsach.add(new sachbean("S04","Book 4","Rock","sach-4.jpg",50));
//		danhsach.add(new sachbean("S05","Book 5","Louis","sach-5.jpg",25));
		
		//b1: Ket noi vao CSDL
		dc.KetNoi();
		//b2: Lay du lieu ve
		String sql = "Select * from sach";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery(); //Lay du lieu ve
		while(rs.next()){
			String masach = rs.getString("masach");
			String tensach = rs.getString("tensach");
			String tacgia = rs.getString("tacgia");
			String anh = rs.getString("anh");
			long gia = rs.getLong("gia");
			Date ngaynhap = rs.getDate("ngaynhap");
			String maloai = rs.getString("maloai");
			sachbean s = new sachbean(masach, tensach, tacgia, anh, gia, ngaynhap, maloai);
			danhsach.add(s);
		}
		//b3:Dong ket noi
		rs.close();
		dc.cn.close();
		
		return danhsach;
	}
}
