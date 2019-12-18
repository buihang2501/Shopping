package model;

import java.sql.Date;

public class History {
	private String history_id;
	//private String user_id;
	private String MaSP;
	private Date ngaymua;
	private int soluong;
	private int price;
	
	public History() {
	}
	
	public History(String history_id, String maSP, Date ngaymua, int soluong, int price) {
		this.history_id = history_id;
		//this.user_id = user_id;
		this.MaSP = maSP;
		this.ngaymua = ngaymua;
		this.soluong = soluong;
		this.price = price;
	}
	public String getHistory_id() {
		return history_id;
	}
	public void setHistory_id(String history_id) {
		this.history_id = history_id;
	}
	/*public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}*/
	public String getMaSP() {
		return MaSP;
	}
	public void setMaSP(String maSP) {
		MaSP = maSP;
	}
	public Date getNgaymua() {
		return ngaymua;
	}
	public void setNgaymua(Date ngaymua) {
		this.ngaymua = ngaymua;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

}
