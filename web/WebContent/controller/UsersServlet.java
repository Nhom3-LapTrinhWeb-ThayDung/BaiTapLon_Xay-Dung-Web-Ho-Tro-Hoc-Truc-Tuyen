package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UsersDAO;
import model.Users;

/**
 * Servlet implementation class UsersServlet
 */
@WebServlet("/UsersServlet")
public class UsersServlet extends HttpServlet {
	UsersDAO usersDAO = new UsersDAO();
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UsersServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("command");
		String url = "";
		Users users = new Users();
		HttpSession session = request.getSession();
		switch(command){
		case "insert":
			users.setUserName(request.getParameter("username-register"));
			users.setUserPass(request.getParameter("pass-register"));
			users.setUserEmail(request.getParameter("email-register"));
			users.setUserID(new java.util.Date().getTime());
			boolean f = usersDAO.insertUser(users);
			if(f)
			{
				session.setAttribute("user", users);
				url="index.jsp";
			}
			else
			{
				//session.removeAttribute("user");
				url="index.jsp";
			}
			break;

		case "login":
			users = usersDAO.login(request.getParameter("username"),request.getParameter("password") );
			if(users!=null){
				session.setAttribute("user", users);
				url = "index.jsp";
			}
			else{
				request.setAttribute("error","Error user name or password");
				url = "index.jsp";
			}
			break;
		}
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

}
