package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connect.DBConnect;
import model.QuestionQuiz;

public class QuestionRadioDAO {
	private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    
    // Lấy ra danh sách câu hỏi
    public List<QuestionQuiz> getListQuestionRadios() {
        try {
            conn = DBConnect.getConnecttion();
            String sql = "SELECT * FROM quiz_question";
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
                qq.setQuiz_id(rs.getInt("quiz_id"));
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
    public int getCountRow() {
        int countRow = 0;
         
        try {
            conn = DBConnect.getConnecttion();
            String sql = "SELECT count(*) FROM quiz_question";
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
    
    //Lấy mã id tự động
    /*public int getQuestionID()
    {
    	int id;
    	Connection con = DBConnect.getConnecttion();
		String sql = "insert into quiz_question values(?,?,?,?)";
		PreparedStatement ps;
		try {
			

		} catch (SQLException e) {
			e.printStackTrace();
		}
    	return id;
    }*/
    
    //thêm câu hỏi
   /* public boolean insertQuestion(QuestionQuiz q)
    {
    	Connection con = DBConnect.getConnecttion();
		String sql = "insert into quiz_question values(?,?,?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareCall(sql);
			ps.setString(1, u.getUserName());
			ps.setString(2, u.getUserPass());
			ps.setString(3, u.getUserEmail());
			ps.setLong(4, u.getUserID());
			ps.executeUpdate();
			return true;

		} catch (SQLException e) {
			e.printStackTrace();
		}
    	return false;
    }*/
}
