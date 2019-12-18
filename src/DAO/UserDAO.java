package DAO;

import java.sql.ResultSet;

import model.User;
import model.MyConnectDB;
public class UserDAO implements ObjectDAO{

	@Override
	public boolean addUser(Object obj) {
		User kh = (User) obj;
		try {
			new MyConnectDB().thucThiSQL("insert into [User] values('"+kh.getUser_id()+"','"+kh.getUsername()+"','"+kh.getPassword()+"','"+kh.getEmail()+"','"+kh.getAddress()+"')");
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public static User SelectInformationUser(String username) {
		try {
			ResultSet  rs=new MyConnectDB().chonDuLieu("select * from [User] where username='"+username+"'");
			while(rs.next()){
				String user_id = rs.getString(1);
				String user_name = rs.getString(2);
				String password = rs.getString(3);
				String email = rs.getString(4);
				String address = rs.getString(5);
				return new User(user_id, user_name, password,email, address);
			 }
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		return null;
	}
	
	@Override
	public boolean login(String name_user, String pass) {
		try {
			ResultSet  rs = new MyConnectDB().chonDuLieu("select * from [User] where username='"+name_user+"'");
			 while(rs.next()){
				 if(rs.getString(2).equals(name_user) && rs.getString(3).equals(pass)){
					 return true;
				 }
			 }
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		
		return false;
	}
	
	@Override
	public boolean checkUser(String user_name) {
		try {
			
			ResultSet  rs=new MyConnectDB().chonDuLieu("select * from [User] where username='"+user_name+"'");
			if(rs.next()) {
				return true;
			 }
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		
		return false;
	}
	
	public static void main(String[] args) {
//		System.out.println(new KhachHangDAO().themTaiKhoan(kh));
//		System.out.println(new UserDAO().login("buihang", "123"));
//		User kh = new User("3","ti","13","b.com","bach khoa");
//		System.out.println(new UserDAO().addUser(kh));
//		System.out.println(SelectInformationUser("buihang"));
		System.out.println(new UserDAO().checkUser("hong"));
	}
	
}
