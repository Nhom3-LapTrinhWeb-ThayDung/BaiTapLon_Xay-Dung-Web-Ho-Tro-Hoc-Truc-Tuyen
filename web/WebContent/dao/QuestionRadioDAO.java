package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connect.DBConnect;
import model.QuestionQuiz;
import model.Quiz;
import model.Users;

public class QuestionRadioDAO {
	private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    
    // Lấy ra danh sách câu hỏi
    public List<QuestionQuiz> getListQuestionRadios(String quiz_name) {
        try {
            conn = DBConnect.getConnecttion();
            String sql = "SELECT * FROM quiz_question where quiz_name='"+quiz_name+"'";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
             
            List<QuestionQuiz> listQuestionRadios = new ArrayList<QuestionQuiz>();
            while (rs.next()) {
            	QuestionQuiz qq = new QuestionQuiz();
                qq.setId(rs.getInt("id"));
                qq.setNumber(rs.getInt("number"));
                qq.setQuestion(rs.getString("question"));
                qq.setOption1(rs.getString("option1"));
                qq.setOption2(rs.getString("option2"));
                qq.setOption3(rs.getString("option3"));
                qq.setOption4(rs.getString("option4"));
                qq.setAnswer(rs.getString("answer"));
                qq.setQuiz_name(rs.getString("quiz_name"));
                listQuestionRadios.add(qq);
            }
             
            return listQuestionRadios;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        	try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
        return null;
    }
    
    // Trả về tổng số câu hỏi có trong bảng
    public int getCountRow(String quiz_name) {
        int countRow = 0;
         
        try {
            conn = DBConnect.getConnecttion();
            String sql = "select count from quiz where quiz_name = '"+quiz_name+"'";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
             
            if (rs.next())
                countRow = rs.getInt(1);
             
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        	try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
        return countRow;
    }
    
    //Lấy quiz
    public Quiz getQuiz(String quiz_name) {
		Connection con = DBConnect.getConnecttion();
		String sql = "select * from Quiz where quiz_name = '"+quiz_name+"'";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				Quiz q = new Quiz();
				q.setId(rs.getInt("id"));
				q.setQuiz_name(rs.getString("quiz_name"));
				q.setStart_date(rs.getString("start_date"));
				q.setEnd_date(rs.getString("end_date"));
				q.setTime(rs.getString("time"));
				q.setCount(rs.getInt("count"));
				q.setDescription(rs.getString("description"));
				con.close();
				return q;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
    
  //thêm bài thi
    public boolean insertQuiz(Quiz q)
    {
    	Connection con = DBConnect.getConnecttion();
		String sql = 
				"insert into quiz (quiz_name, start_date, end_date, time, count, description) values(?, ?, ?, ?, ?, ?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareCall(sql);

			ps.setString(1, q.getQuiz_name());
			ps.setString(2, q.getStart_date());
			ps.setString(3, q.getEnd_date());
			ps.setString(4, q.getTime());
			ps.setInt(5, q.getCount());
			ps.setString(6, q.getDescription());
			ps.executeUpdate();
			return true;

		} catch (SQLException e) {
			e.printStackTrace();
		}
    	return false;
    }
    
    
    //thêm câu hỏi
    public boolean insertQuestion(QuestionQuiz q)
    {
    	Connection con = DBConnect.getConnecttion();
		String sql = 
				"insert into quiz_question (number,question,option1,option2,option3,option4,answer,quiz_name) values (?,?,?,?,?,?,?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareCall(sql);
			ps.setInt(1, q.getNumber());
			ps.setString(2, q.getQuestion());
			ps.setString(3, q.getOption1());
			ps.setString(4, q.getOption2());
			ps.setString(5, q.getOption3());
			ps.setString(6, q.getOption4());
			ps.setString(7, q.getAnswer());
			ps.setString(8, q.getQuiz_name());
			ps.executeUpdate();
			return true;

		} catch (SQLException e) {
			e.printStackTrace();
		}
    	return false;
    }
}
