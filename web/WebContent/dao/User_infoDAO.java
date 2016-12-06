package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import connect.DBConnect;
import model.User_info;
import model.Users;

public class User_infoDAO {
	
	//login lấy thông tin cá nhân
	public User_info login(String username, String password, int quyen){
		Connection con = DBConnect.getConnecttion();
		String sql = "select * from user_info,user where user_name ='"+username+"' and user_pass='"+password+"' and user_id = id and quyen = '"+quyen+"'";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				User_info u = new User_info();
				u.setId(rs.getLong("id"));
				u.setAnhdaidien(rs.getString("anhdaidien"));
				u.setDiachi(rs.getString("diachi"));
				u.setEmail(rs.getString("email"));
				u.setGioitinh(rs.getInt("gioitinh"));
				u.setNgaysinh(rs.getString("ngaysinh"));
				u.setQuyen(rs.getInt("quyen"));
				u.setSodienthoai(rs.getString("sodienthoai"));
				u.setTen(rs.getString("ten"));
				con.close();
				return u;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	//them user
	public boolean insertUser_info(User_info u)
	{
		Connection con = DBConnect.getConnecttion();
		String sql = "insert into user_info values(?,?,?,?,?,?,NULL,NULL,2)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareCall(sql);
			ps.setLong(1, u.getId());
			ps.setString(2, u.getTen());
			ps.setString(3, u.getSodienthoai());
			ps.setInt(4,u.getGioitinh());
			ps.setString(5, u.getNgaysinh());
			ps.setString(6, u.getEmail());
			ps.executeUpdate();
			return true;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean updateUser_info(User_info u)
	{
		Connection con = DBConnect.getConnecttion();
		String sql = "update user_info set ten=?,sodienthoai=?,gioitinh=?,ngaysinh=?,email=?,anhdaidien=?,diachi=? where id=?";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareCall(sql);
			ps.setString(1, u.getTen());
			ps.setString(2, u.getSodienthoai());
			ps.setInt(3,u.getGioitinh());
			ps.setString(4, u.getNgaysinh());
			ps.setString(5, u.getEmail());
			ps.setString(6, u.getAnhdaidien());
			ps.setString(7, u.getDiachi());
			ps.setLong(8, u.getId());
			ps.executeUpdate();
			return true;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
