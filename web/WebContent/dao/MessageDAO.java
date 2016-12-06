package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import connect.DBConnect;
import model.Message;
import model.User_info;

public class MessageDAO {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MessageDAO msDAO = new MessageDAO();
		Message m = new Message();
		m.setId_message(new Date().getTime());
		m.setDaxem(false);
		m.setNoidung("wrgytuykgk,");
		m.setId_nguoigui(Long.parseLong("2"));
		m.setId_nguoinhan(Long.parseLong("1"));
		m.setThoigian(new Timestamp(new Date().getTime()));
		boolean f=msDAO.insert(m);
		System.out.println(f);
	}
	public boolean insert(Message m)
	{
		Connection con = DBConnect.getConnecttion();
		String sql = "insert into message values(?,?,?,?,?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareCall(sql);
			ps.setLong(1, m.getId_message());
			ps.setString(2, m.getNoidung());
			ps.setLong(3, m.getId_nguoigui());
			ps.setLong(4, m.getId_nguoinhan());
			ps.setTimestamp(5, m.getThoigian());
			ps.setBoolean(6, m.isDaxem());
			ps.executeUpdate();
			return true;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
