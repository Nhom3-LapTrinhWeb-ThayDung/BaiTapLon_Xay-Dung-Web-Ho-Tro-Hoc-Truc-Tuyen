package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;

import connect.DBConnect;
import model.Course;
import model.Exercise;
import model.Exercise_User;
import model.QuestionQuiz;
import model.Quiz;
import model.Quiz_User;
import model.Resources;
import model.Url;
import model.User_info;

public class CourseDAO {
	private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
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
	
	public boolean update(Course c)
	{
		Connection con = DBConnect.getConnecttion();
		String sql = "update course set course_name=?,course_startdate=?,course_enddate=?,"
				+ "course_schedulingday=?,course_startlesson=?,course_endlesson=?,course_place=?,course_description=? where course_id=?";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareCall(sql);
			ps.setLong(9, c.getCourse_id());
			ps.setString(1, c.getCourse_name());
			ps.setString(2,c.getCourse_startdate());
			ps.setString(3, c.getCourse_enddate());
			ps.setInt(4, c.getCourse_schedulingday());
			ps.setInt(5, c.getCourse_startlession());
			ps.setInt(6, c.getCourse_endlession());
			ps.setString(7, c.getCourse_place());
			ps.setString(8, c.getCourse_description());

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
	//láº¥y 1 khĂ³a há»�c
	public Course getCourse(long course_id) {
        try {
        	Connection conn = DBConnect.getConnecttion();
            String sql = "select * from course where course_id='"+course_id+"'";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            Course c = new Course();
            while (rs.next()) {
            	c.setCourse_id(rs.getLong(1));
            	c.setCourse_name(rs.getString(2));
            	c.setCourse_startdate(rs.getString(3));
            	c.setCourse_enddate(rs.getString(4));
            	c.setCourse_schedulingday(rs.getInt(5));
            	c.setCourse_startlession(rs.getInt(6));
            	c.setCourse_endlession(rs.getInt(7));
            	c.setCourse_place(rs.getString(8));
            	c.setCourse_description(rs.getString(9));
            }
            conn.close();
            return c;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
	
	// Láº¥y ra danh sĂ¡ch táº¥t cáº£ khĂ³a
    public List<Course> getAllListCourse() {
        try {
        	Connection conn = DBConnect.getConnecttion();
            String sql = "select * from course";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
             
            List<Course> listCourse = new ArrayList<Course>();
            while (rs.next()) {
            	Course c = new Course();
            	c.setCourse_id(rs.getLong(1));
            	c.setCourse_name(rs.getString(2));
            	c.setCourse_startdate(rs.getString(3));
            	c.setCourse_enddate(rs.getString(4));
            	c.setCourse_schedulingday(rs.getInt(5));
            	c.setCourse_startlession(rs.getInt(6));
            	c.setCourse_endlession(rs.getInt(7));
            	c.setCourse_place(rs.getString(8));
            	c.setCourse_description(rs.getString(9));

            	listCourse.add(c);
            }
            conn.close();
            return listCourse;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
	
	// Láº¥y ra danh sĂ¡ch khĂ³a há»�c cá»§a user
    public List<Course> getListCourse(long userid) {
        try {
        	Connection conn = DBConnect.getConnecttion();
            String sql = "select * from course, course_user where course.course_id=course_user.course_id and course_user.id='"+userid+"'";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
             
            List<Course> listCourse = new ArrayList<Course>();
            while (rs.next()) {
            	Course c = new Course();
            	c.setCourse_id(rs.getLong(1));
            	c.setCourse_name(rs.getString(2));
            	c.setCourse_startdate(rs.getString(3));
            	c.setCourse_enddate(rs.getString(4));
            	c.setCourse_schedulingday(rs.getInt(5));
            	c.setCourse_startlession(rs.getInt(6));
            	c.setCourse_endlession(rs.getInt(7));
            	c.setCourse_place(rs.getString(8));
            	c.setCourse_description(rs.getString(9));

            	listCourse.add(c);
            }
            conn.close();
            return listCourse;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    
    //lay danh sach hoc vien cua khoa hoc
    public List<User_info> getListStudent(long course_id) {
        try {
        	Connection conn = DBConnect.getConnecttion();
            String sql = "select * from user_info,course_user where course_user.course_id='"+course_id+"' and user_info.id =course_user.id and user_info.quyen=2 ";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
             
            List<User_info> listStudent = new ArrayList<User_info>();
            while (rs.next()) {
            	User_info u = new User_info();
            	u.setId(rs.getLong(1));
            	u.setTen(rs.getString(2));
            	u.setSodienthoai(rs.getString(3));
            	u.setGioitinh(rs.getInt(4));
            	u.setNgaysinh(rs.getString(5));
            	u.setEmail(rs.getString(6));
            	u.setAnhdaidien(rs.getString(7));
            	u.setDiachi(rs.getString(8));
            	u.setQuyen(rs.getInt(9));
            	listStudent.add(u);
            }
            conn.close();
            return listStudent;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    //lay danh sach bai tap cua khoa hoc
    public List<Exercise> getListExercise(long course_id) {
        try {
        	Connection conn = DBConnect.getConnecttion();
            String sql = "select exercise_id,exercise_name,section_name,exercise_startdate,exercise_starttime,exercise_enddate,exercise_endtime,exercise.section_id from exercise,section,course where exercise.section_id=section.section_id and section.course_id=course.course_id and course.course_id='"+course_id+"'";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
             
            List<Exercise> listExercise = new ArrayList<Exercise>();
            while (rs.next()) {
            	Exercise ex = new Exercise();
            	ex.setExercise_id(rs.getLong(1));
            	ex.setExercise_name(rs.getString(2));
            	ex.setExersice_content(rs.getString(3));
            	ex.setExercise_startdate(rs.getString(4));
            	ex.setExercise_starttime(rs.getString(5));
            	ex.setExercise_enddate(rs.getString(6));
            	ex.setExercise_endtime(rs.getString(7));
            	ex.setSection_id(rs.getLong(8));

            	listExercise.add(ex);
            }
            conn.close();
            return listExercise;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public List<Resources> getListResources(long section_id) {
        try {
        	Connection conn = DBConnect.getConnecttion();
            String sql = "select  * from resources where section_id='"+section_id+"'";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
             
            List<Resources> listResources = new ArrayList<Resources>();
            while (rs.next()) {
            	Resources s = new Resources();
            	s.setResources_id(rs.getLong(1));
            	s.setResources_name(rs.getString(2));
            	s.setResources_type(rs.getString(3));
            	s.setSection_id(rs.getLong(4));
            	listResources.add(s);
            }
            conn.close();
            return listResources;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    //Lay giang vien
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
    
    public List<Quiz> getListQuiz(long course_id) {
        try {
            conn = DBConnect.getConnecttion();
            String sql = "select * from quiz,section where quiz.section_id=section.section_id and section.course_id='"+course_id+"'";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
             
            List<Quiz> listQuiz = new ArrayList<Quiz>();
            while (rs.next()) {
            	Quiz q = new Quiz();
				q.setId(rs.getLong("id"));
				q.setQuiz_name(rs.getString("quiz_name"));
				q.setStart_date(rs.getString("start_date"));
				q.setEnd_date(rs.getString("end_date"));
				q.setTime(rs.getString("time"));
				q.setCount(rs.getInt("count"));
				q.setDescription(rs.getString("section_name"));
				q.setSection_id(rs.getLong("section_id"));
				listQuiz.add(q);
            }
            conn.close();
            return listQuiz;
        } catch (Exception e) {
            e.printStackTrace();
        }
		return null;
    }
    
    public List<Course> findListCourse(long userid,String str) {
        try {
        	Connection conn = DBConnect.getConnecttion();
            String sql = "select * from course, course_user where course.course_id=course_user.course_id and course_user.id='"+userid+"' and (course_name like '%"+str+"%' or course_startdate like '%"+str+"%')";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
             
            List<Course> listCourse = new ArrayList<Course>();
            while (rs.next()) {
            	Course c = new Course();
            	c.setCourse_id(rs.getLong(1));
            	c.setCourse_name(rs.getString(2));
            	c.setCourse_startdate(rs.getString(3));
            	c.setCourse_enddate(rs.getString(4));
            	c.setCourse_schedulingday(rs.getInt(5));
            	c.setCourse_startlession(rs.getInt(6));
            	c.setCourse_endlession(rs.getInt(7));
            	c.setCourse_place(rs.getString(8));
            	c.setCourse_description(rs.getString(9));

            	listCourse.add(c);
            }
            conn.close();
            return listCourse;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public List<Exercise_User> findListExercise_User(String course_id,String str) {
        try {
        	Connection conn = DBConnect.getConnecttion();
            String sql = "select * from exercise_user where course_id='"+course_id+"' and (user_name like '%"+str+"%' or section_name like '%"+str+"%' "
            		+ "or exercise_name like '%"+str+"%' or filesubmit like '%"+str+"%' or timesubmit like '%"+str+"%')";
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
            	ex.setDescription(rs.getString(10));
            	ex.setScore(rs.getDouble(11));
            	ex.setReview(rs.getString(12));
            	listExerciseUser.add(ex);
            }
            conn.close();
            return listExerciseUser;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public List<Exercise> findListExercise(String course_id,String str) {
        try {
        	Connection conn = DBConnect.getConnecttion();
            String sql = "select * from exercise,section where exercise.section_id=section.section_id and course_id='"+course_id+"' and (exercise_name like '%"+str+"%' "
            		+ "or exercise_startdate like '%"+str+"%' or exercise_starttime like '%"+str+"%' or exercise_enddate like '%"+str+"%' or exercise_endtime like '%"+str+"%')";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
             
            List<Exercise> listExercise = new ArrayList<Exercise>();
            while (rs.next()) {
            	Exercise ex = new Exercise();
            	ex.setExercise_id(rs.getLong(1));
            	ex.setExercise_name(rs.getString(2));
            	ex.setExersice_content(rs.getString(3));
            	ex.setExercise_startdate(rs.getString(4));
            	ex.setExercise_starttime(rs.getString(5));
            	ex.setExercise_enddate(rs.getString(6));
            	ex.setExercise_endtime(rs.getString(7));
            	ex.setSection_id(rs.getLong(8));

            	listExercise.add(ex);
            }
            conn.close();
            return listExercise;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    
    public List<Quiz_User> findListQuiz_User(String course_id,String str) {
        try {
        	Connection conn = DBConnect.getConnecttion();
            String sql = "select * from quiz,quiz_result,section,user_info "
            		+ "where section.course_id='"+course_id+"' and quiz.id=quiz_result.quiz_id and quiz.section_id=section.section_id and quiz_result.user_id=user_info.id "
            		+ "and (quiz_name like '%"+str+"%' or  ten like '%"+str+"%' or section_name like '%"+str+"%' or user_id like '%"+str+"%' or timesubmit like '%"+str+"%' or start_date like '%"+str+"%')";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
             
            List<Quiz_User> listQuiz_User = new ArrayList<Quiz_User>();
            while (rs.next()) {
            	Quiz_User q = new Quiz_User();
            	q.setCourse_id(rs.getLong("course_id"));
            	q.setQuiz_id(rs.getLong("quiz_id"));
            	q.setQuiz_name(rs.getString("quiz_name"));
            	q.setResult_id(rs.getLong("result_id"));
            	q.setScores(rs.getDouble("scores"));
            	q.setSection_name(rs.getString("section_name"));
            	q.setSocaudung(rs.getInt("socaudung"));
            	q.setTimesubmit(rs.getTimestamp("timesubmit"));
            	q.setTimeswork(rs.getString("timework"));
            	q.setTongsocau(rs.getInt("tongsocau"));
            	q.setUser_id(rs.getLong("user_id"));
            	q.setUser_name(rs.getString("ten"));
            	listQuiz_User.add(q);
            }
            conn.close();
            return listQuiz_User;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    
    public List<Resources> findListResources(String course_id, String str) {
        try {
        	Connection conn = DBConnect.getConnecttion();
            String sql = "select * from resources, section "
            		+ "where resources.section_id=section.section_id and course_id='"+course_id+"' and (resources_name like '%"+str+"%')";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
             
            List<Resources> listResources = new ArrayList<Resources>();
            while (rs.next()) {
            	Resources s = new Resources();
            	s.setResources_id(rs.getLong(1));
            	s.setResources_name(rs.getString(2));
            	s.setResources_type(rs.getString(3));
            	s.setSection_id(rs.getLong(4));
            	listResources.add(s);
            }
            conn.close();
            return listResources;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public List<User_info> findListStudent(String course_id,String str) {
        try {
        	Connection conn = DBConnect.getConnecttion();
            String sql = "select * from user_info,course_user where course_user.course_id='"+course_id+"' and user_info.id =course_user.id"
            		+ " and user_info.quyen=2 and (ten like '%"+str+"%' or user_info.id like '%"+str+"%' or email like '%"+str+"%')";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
             
            List<User_info> listStudent = new ArrayList<User_info>();
            while (rs.next()) {
            	User_info u = new User_info();
            	u.setId(rs.getLong(1));
            	u.setTen(rs.getString(2));
            	u.setSodienthoai(rs.getString(3));
            	u.setGioitinh(rs.getInt(4));
            	u.setNgaysinh(rs.getString(5));
            	u.setEmail(rs.getString(6));
            	u.setAnhdaidien(rs.getString(7));
            	u.setDiachi(rs.getString(8));
            	u.setQuyen(rs.getInt(9));
            	listStudent.add(u);
            }
            conn.close();
            return listStudent;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public boolean clearstrsearch()
   	{
   		Connection con = DBConnect.getConnecttion();
   		String sql = "delete from search";
   		PreparedStatement ps;
   		try {
   			ps = (PreparedStatement) con.prepareCall(sql);
   			ps.executeUpdate();
   			return true;

   		} catch (SQLException e) {
   			e.printStackTrace();
   		}
   		return false;
   	}
       
       public boolean setstrsearch(String str)
   	{
   		Connection con = DBConnect.getConnecttion();
   		String sql = "insert into search values(?)";
   		PreparedStatement ps;
   		try {
   			ps = (PreparedStatement) con.prepareCall(sql);
   			ps.setString(1, str);

   			ps.executeUpdate();
   			return true;

   		} catch (SQLException e) {
   			e.printStackTrace();
   		}
   		return false;
   	}
       
       public String getstrsearch() {
           try {
           	String str ="";
           	Connection conn = DBConnect.getConnecttion();
               String sql = "select * from search ";
               ps = conn.prepareStatement(sql);
               rs = ps.executeQuery();
              
               while (rs.next()) {
               	str = rs.getString(1);
               }
               conn.close();
               return str;
           } catch (Exception e) {
               e.printStackTrace();
           }
           return null;
       }
    
    public static void main(String[] args) throws SQLException{
    	CourseDAO dao = new CourseDAO();
    	/*List<Course> lcourse = dao.getListCourse(1);
    	for (Course course : dao.getListCourse(2)) {
    		System.out.println(course.getCourse_id() + "-" + course.getCourse_name()
    		 + "-" + course.getCourse_startdate()  + "-" + course.getCourse_enddate()
    		 + "-" + course.getCourse_startlession() + "-" + course.getCourse_endlession()
    		 + "-" + course.getCourse_schedulingday() + "-" + course.getCourse_place() + "-" + course.getCourse_description());
		}*/
    	/*Course c = new Course(Long.parseLong("1479832606700"),"aaaaaa","1947-02-16","1945-01-16",2,2,4,"asdsadads","sadsadsad");
    	dao.update(c);*/
    	/*User_info teach = new User_info();
    	teach = dao.getteacher(Long.parseLong("1479732694852"));
    	System.out.println(teach.getTen());*/
    	/*String r =dao.getstrsearch();
    	System.out.println(r);*/
    	List<Course> listcourse = new ArrayList<Course>();
    	listcourse=	dao.getListCourse(Long.parseLong("1"));
		String JSONResult = JSONArray.toJSONString(listcourse);
		System.out.println(JSONResult);
 
    }
    
   
}
