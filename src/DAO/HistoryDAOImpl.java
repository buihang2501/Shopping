package DAO;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.DoanhSo;
import model.MyConnectDB;

public class HistoryDAOImpl implements HistoryDAO {

	@Override
	public List<DoanhSo> history() {
		List<DoanhSo> doanhso = new ArrayList<DoanhSo>();
		String sql = "SELECT test.MaSP, Product.TenSP, test.price, sum(test.soluong) FROM [test], [Product] WHERE test.MaSP = Product.MaSP GROUP BY test.MaSP, Product.TenSP, test.price ";
		try {
			ResultSet rs = MyConnectDB.chonDuLieu(sql);
			while(rs.next()) {
				String maSP = rs.getString(1);
				String tenSP = rs.getNString(2);
				int soluong = rs.getInt(4);
				int thanhtien = soluong*rs.getInt(3);
				doanhso.add(new DoanhSo(maSP,tenSP,soluong,thanhtien));
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return doanhso;
	}
	
	public static void main(String[] args) {
		HistoryDAOImpl h = new HistoryDAOImpl();
		List<DoanhSo> d = h.history();
		System.out.println(d.get(0).getThanhtien());
	}
}
