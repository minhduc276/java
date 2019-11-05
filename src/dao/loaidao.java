package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.loaibean;
import bean.sachbean;

public class loaidao {
	DungChung dc = new DungChung();
	public ArrayList<loaibean> getloai() throws Exception{
		ArrayList<loaibean> ds = new ArrayList<loaibean>();
		
		//b1: Ket noi vao CSDL
		dc.KetNoi();
		//b2: Lay du lieu ve
		String sql = "Select * from loai";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery(); //Lay du lieu ve
		while(rs.next()){
			String maloai = rs.getString("maloai");
			String tenloai = rs.getString("tenloai");
			loaibean s = new loaibean(maloai, tenloai);
			ds.add(s);
		}
		//b3:Dong ket noi
		rs.close();
		dc.cn.close();
		
		return ds;
	}
}
