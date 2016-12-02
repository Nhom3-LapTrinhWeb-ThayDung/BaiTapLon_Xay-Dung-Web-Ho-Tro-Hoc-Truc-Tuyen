package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connect.DBConnect;
import model.Section;

public class SectionDAO {
    private PreparedStatement ps;
    private ResultSet rs;
	public List<Section> getListSection(long section_id) {
        try {
        	Connection conn = DBConnect.getConnecttion();
            String sql = "select * from section where course_id ='"+section_id+"'";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
             
            List<Section> listSection = new ArrayList<Section>();
            while (rs.next()) {
            	Section s = new Section();
            	s.setSection_id(rs.getLong("section_id"));
            	s.setSection_name(rs.getString("section_name"));
            	s.setSection_content(rs.getString("section_content"));
            	s.setCourse_id(rs.getLong("course_id"));
            	listSection.add(s);
            }
            conn.close();
            return listSection;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
	public Section getSection(long section_id) {
        try {
        	Connection conn = DBConnect.getConnecttion();
            String sql = "select * from section where section_id ='"+section_id+"'";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
             
            Section s = new Section();
            while (rs.next()) {
            	s.setSection_id(rs.getLong("section_id"));
            	s.setSection_name(rs.getString("section_name"));
            	s.setSection_content(rs.getString("section_content"));
            	s.setCourse_id(rs.getLong("course_id"));
            }
            conn.close();
            return s;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
	
	//them
	public boolean insert(Section s)
	{
		Connection con = DBConnect.getConnecttion();
		String sql = "insert into section values(?,?,?,?)";
		PreparedStatement ps;
		try {
			ps = (PreparedStatement) con.prepareCall(sql);
			ps.setLong(1, s.getSection_id());
			ps.setString(2, s.getSection_name());
			ps.setString(3, s.getSection_content());
			ps.setLong(4, s.getCourse_id());
			ps.executeUpdate();
			return true;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	public static void main(String[] args) {
		/*// TODO Auto-generated method stub
		Long c_id = Long.parseLong("1479799303858");
		SectionDAO dao = new SectionDAO();
		for (Section s : dao.getListSection(c_id)) {
			System.out.println(s.getCourse_id() +"-"+s.getSection_name());
		}*/
	}

}
