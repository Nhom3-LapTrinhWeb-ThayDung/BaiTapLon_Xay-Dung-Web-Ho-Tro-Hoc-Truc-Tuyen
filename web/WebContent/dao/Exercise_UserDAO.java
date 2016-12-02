package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connect.DBConnect;
import model.Exercise;
import model.Exercise_User;
import model.QuizResult;

public class Exercise_UserDAO {
	private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
	
	public List<Exercise_User> getListExercise_User(long course_id) {
        try {
        	Connection conn = DBConnect.getConnecttion();
            String sql = "select * from exercise_user where course_id='"+course_id+"'";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
             
            List<Exercise_User> listExerciseUser = new ArrayList<Exercise_User>();
            while (rs.next()) {
            	Exercise_User ex = new Exercise_User();
            	ex.setResult_id(rs.getLong(1));
            	ex.setExercise_id(rs.getLong(2));
            	ex.setUser_id(rs.getLong(3));
            	ex.setUser_name(rs.getString(4));
            	ex.setCourse_id(rs.getLong(5));
            	ex.setSection_name(rs.getString(6));
            	ex.setExercise_name(rs.getString(7));
            	ex.setFilesubmit(rs.getString(8));
            	ex.setTimesubmit(rs.getTimestamp(9));
            	ex.setScore(rs.getDouble(10));
            	ex.setReview(rs.getString(11));
            	listExerciseUser.add(ex);
            }
            conn.close();
            return listExerciseUser;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
	
	public boolean chamdiem(long result_id, double score, String review )
    {
    	Connection con = DBConnect.getConnecttion();
		String sql = "update exercise_user set score=?,review=? where result_id=?";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareCall(sql);
			ps.setDouble(1, score);
			ps.setString(2, review);
			ps.setLong(3, result_id);
			ps.executeUpdate();
			return true;

		} catch (SQLException e) {
			e.printStackTrace();
		}
    	return false;
    }
	
	
	public static void main(String[] args) {
	// TODO Auto-generated method stub
		Exercise_UserDAO dao = new Exercise_UserDAO();
    	
    	
    	for (Exercise_User ex : dao.getListExercise_User(Long.parseLong("1479799303858"))) {
    		System.out.println(ex.getResult_id() +"-"+ex.getSection_name() + "-" + ex.getExercise_id()
    		 + "-" + ex.getExercise_name()  + "-" + ex.getFilesubmit()
    		 + "-" + ex.getReview() + "-" + ex.getScore()
    		 + "-" + ex.getUser_id() + "-" + ex.getUser_name() + "-" + ex.getTimesubmit());
		}
	}

}
