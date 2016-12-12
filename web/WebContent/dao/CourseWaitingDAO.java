package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connect.DBConnect;
import model.Course;
import model.CourseWaiting;
import model.User_info;;

public class CourseWaitingDAO {

	private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PreparedStatement ps;
	}
	
	public boolean insert(CourseWaiting cw)
	{
		Connection con = DBConnect.getConnecttion();
		String sql = "insert into message values(?,?,?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareCall(sql);
			ps.setLong(1, cw.getCourse_waiting_id());
			ps.setLong(2, cw.getUser_id());
			ps.setLong(3, cw.getCourse_id());
			ps.setTimestamp(4, cw.getTime_register());
			return true;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean delete(long course_waiting_id)
	{
		Connection con = DBConnect.getConnecttion();
		String sql = "delete from course_waiting where course_waiting_id=?";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareCall(sql);
			ps.setLong(1, course_waiting_id);
			ps.executeUpdate();
			return true;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean deleteWaiting(long course_waiting_id)
	{
		Connection con = DBConnect.getConnecttion();
		String sql = "DELETE FROM course_waiting WHERE course_waiting_id ='"+course_waiting_id+"'";
		PreparedStatement ps;
		try{
			ps = (PreparedStatement) con.prepareCall(sql);
			
			ps.executeUpdate();
			
			return true;
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean insertCouser_user(long course_waiting_id,long course_id ,long user_id)
	{
		Connection con = DBConnect.getConnecttion();
		String sql = "insert into course_user values(?,?)";
		String sql1 = "DELETE FROM course_waiting WHERE course_waiting_id ='"+course_waiting_id+"'";
		PreparedStatement ps;
		PreparedStatement ps1;
		try {
			ps = (PreparedStatement) con.prepareCall(sql);
			ps.setLong(1, user_id);
			ps.setLong(2, course_id);
			ps.executeUpdate();
			
			ps1 = (PreparedStatement) con.prepareCall(sql1);
			ps1.executeUpdate();
			return true;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	//Lấy teacher
	public User_info getteacher(long course_id) {
        try {
        	Connection conn = DBConnect.getConnecttion();
            String sql = "select * from user_info, course_user where user_info.id = course_user.id and quyen=1 and course_id='"+course_id+"'";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            User_info u = new User_info();
            while (rs.next()) {
            	u.setId(rs.getLong(1));
            	u.setTen(rs.getString(2));
            	u.setSodienthoai(rs.getString(3));
            	u.setGioitinh(rs.getInt(4));
            	u.setNgaysinh(rs.getString(5));
            	u.setEmail(rs.getString(6));
            	
            	u.setDiachi(rs.getString(8));
            	u.setQuyen(rs.getInt(9));            	
            }
            conn.close();
            return u;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
	//Lấy danh sách khóa học đang chờ xác nhận theo từng học viên
	public List<Course> getListCourseWaiting(long user_id) {
        try {
        	Connection conn = DBConnect.getConnecttion();
            String sql = "select * from course_waiting, course where course_waiting.course_id = course.course_id and user_id='"+user_id+"'";
            
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
             
            List<Course> listCourseWaiting = new ArrayList<Course>();
            
            while (rs.next()) {
            	Course cw = new Course();
            	
            	cw.setCourse_id(rs.getLong(3));
            	cw.setCourse_name(rs.getString(6));
            	cw.setCourse_startdate(rs.getString(7));
            	cw.setCourse_enddate(rs.getString(8));
            	cw.setCourse_schedulingday(rs.getInt(9));
            	cw.setCourse_startlession(rs.getInt(10));
            	cw.setCourse_endlession(rs.getInt(11));
            	cw.setCourse_place(rs.getString(12));
            	cw.setCourse_description(rs.getString(13));
            	
            	listCourseWaiting.add(cw);
            }
            conn.close();
            return listCourseWaiting;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
