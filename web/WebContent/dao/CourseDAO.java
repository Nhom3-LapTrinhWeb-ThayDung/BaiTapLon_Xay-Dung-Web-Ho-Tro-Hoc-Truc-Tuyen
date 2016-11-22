package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import connect.DBConnect;
import model.Course;

public class CourseDAO {
	public boolean insert(Course c)
	{
		Connection con = DBConnect.getConnecttion();
		String sql = "insert into course values(?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareCall(sql);
			ps.setLong(1, c.getCourse_id());
			ps.setString(2, c.getCourse_name());
			ps.setString(3,c.getCourse_startdate());
			ps.setString(4, c.getCourse_enddate());
			ps.setInt(5, c.getCourse_schedulingday());
			ps.setInt(6, c.getCourse_startlession());
			ps.setInt(7, c.getCourse_endlession());
			ps.setString(8, c.getCourse_place());
			ps.setString(9, c.getCourse_description());

			ps.executeUpdate();
			return true;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean insertCourse_User(long Courseid, long Userid)
	{
		Connection con = DBConnect.getConnecttion();
		String sql = "insert into course_user values(?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareCall(sql);
			ps.setLong(1, Userid);
			ps.setLong(2, Courseid);
			
			ps.executeUpdate();
			return true;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
