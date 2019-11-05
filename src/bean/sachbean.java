package bean;

import java.sql.Date;

public class sachbean {
	private String masach;
	private String tensach;
	private String tacgia;
	private String image;
	private long gia;
	private java.util.Date ngaynhap;
	private String maloai;
	
	public sachbean(String masach, String tensach, String tacgia, String image, long gia, java.util.Date ngaynhap,
			String maloai) {
		super();
		this.masach = masach;
		this.tensach = tensach;
		this.tacgia = tacgia;
		this.image = image;
		this.gia = gia;
		this.ngaynhap = ngaynhap;
		this.maloai = maloai;
	}

	public String getMasach() {
		return masach;
	}

	public void setMasach(String masach) {
		this.masach = masach;
	}

	public String getTensach() {
		return tensach;
	}

	public void setTensach(String tensach) {
		this.tensach = tensach;
	}

	public String getTacgia() {
		return tacgia;
	}

	public void setTacgia(String tacgia) {
		this.tacgia = tacgia;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public long getGia() {
		return gia;
	}

	public void setGia(long gia) {
		this.gia = gia;
	}

	public java.util.Date getNgaynhap() {
		return ngaynhap;
	}

	public void setNgaynhap(java.util.Date ngaynhap) {
		this.ngaynhap = ngaynhap;
	}

	public String getMaloai() {
		return maloai;
	}

	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	
	
	
}
