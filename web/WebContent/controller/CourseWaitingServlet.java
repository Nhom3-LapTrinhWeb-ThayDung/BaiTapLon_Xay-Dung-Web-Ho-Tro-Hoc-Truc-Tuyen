package controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.CourseWaiting;
import model.User_info;
import model.Course;
import dao.CourseWaitingDAO;


/**
 * Servlet implementation class CourseWaitingServlet
 */
@WebServlet("/CourseWaitingServlet")
public class CourseWaitingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CourseWaitingServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String command = request.getParameter("command");
		String url = "";
		CourseWaiting coursewaiting = new CourseWaiting();
		CourseWaitingDAO coursewaitingDAO = new CourseWaitingDAO();

		RequestDispatcher rd ;

		HttpSession session = request.getSession();
		User_info user_register= (User_info)session.getAttribute("user_info");
		/*Course course_register = (Course)session.getAttribute("course_register");*/

		switch(command){
		case "insert":
			long x = new java.util.Date().getTime();
			coursewaiting.setCourse_waiting_id(x);
			coursewaiting.setUser_id(user_register.getId());
			coursewaiting.setCourse_id(Long.parseLong(request.getParameter("course_register")));			
			coursewaiting.setTime_register(new Timestamp(new Date().getTime()));	


			boolean f = coursewaitingDAO.insert(coursewaiting);
			if(f)
			{
				response.getWriter().write("Đăng ký khóa học thành công. Vui lòng chờ xác nhận !");
			}
			else
			{
				//session.removeAttribute("user");
				response.getWriter().write("Đăng ký thất bại !");
			}
			/*RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);*/
			break;	
		case "delete":
			url="";

			String course_waiting_id = request.getParameter("course_waiting_id");
			f = coursewaitingDAO.delete(Long.parseLong(course_waiting_id));
			if(f)
				response.getWriter().write("thành công!");
			else
				response.getWriter().write("không thành công!");
			break;

		}
	}
}


