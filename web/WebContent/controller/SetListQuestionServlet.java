package controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QuestionRadioDAO;
import model.AnswerUser;
import model.QuestionQuiz;
import model.Quiz;
/**
 * Servlet implementation class SetListQuestionServlet
 */
@WebServlet("/SetListQuestionServlet")
public class SetListQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SetListQuestionServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String errorStr = "";
		//insert quiz
		Quiz quiz = new Quiz();
		int idqz = (int) new java.util.Date().getTime();
		String quiz_name = request.getParameter("quiz_name");
		String start_date = request.getParameter("timestart[year]")
				+"-"+ request.getParameter("timestart[month]")
				+"-"+ request.getParameter("timestart[day]") ;
		String end_date = request.getParameter("timeend[year]")
				+"-"+ request.getParameter("timeend[month]")
				+"-"+ request.getParameter("timeend[day]") ;
		String time = request.getParameter("times[hour]")
				+":"+ request.getParameter("times[minute]"); 
		int count= Integer.parseInt( request.getParameter("question_count"));
		String description = request.getParameter("description");
		if(quiz_name=="" ||start_date==null ||end_date==null ||time==null ||count==0)	
		{
			errorStr = "Bạn chưa điền đủ thông tin !";
		}
		else
		{
			errorStr="";
			quiz = new Quiz(idqz,quiz_name,start_date,end_date,time,count,description);
		}


		// insert các câu hỏi (question)
		List<QuestionQuiz> listQuestion =  new ArrayList<QuestionQuiz>();
		for (int i = 1; i <= count; i++) {
			//String answerUser = request.getParameter("ans[" + i + "]");
			int id = (int) new java.util.Date().getTime();
			
			String question = request.getParameter("question["+i+"]");
			String option1 = request.getParameter("txtoption[1]");
			String option2 = request.getParameter("txtoption[2]");
			String option3 = request.getParameter("txtoption[3]");
			String option4 = request.getParameter("txtoption[4]");
			String answer = request.getParameter("ans["+i+"]");
			quiz_name = request.getParameter("quiz_name");
			if (question == null ||  option1==null || option2==null ||option3==null ||option4==null || answer==null || quiz_name=="")
			{
				errorStr = "Bạn chưa điền đủ thông tin !";
			} else {
				errorStr="";
				QuestionQuiz q = new QuestionQuiz(id,i,question,option1,option2,option3,option4,answer,quiz_name );
				listQuestion.add(q);
			}
		}

		if (!errorStr.isEmpty()) {

		} else {
			QuestionRadioDAO questionRadioDAO = new QuestionRadioDAO();

			boolean f1 = questionRadioDAO.insertQuiz(quiz);
			if(f1)
			{
				
			
				for (QuestionQuiz questionQuiz : listQuestion) {
					boolean f = questionRadioDAO.insertQuestion(questionQuiz);
					if(f)
					{
						errorStr="thêm bài thi trắc nghiệm thành công";
					}
					else
					{
						errorStr="thêm bài thi trắc nghiệm không thành công";
					}
				}
			}
			else
			{
				errorStr="thêm quiz không thành công";
			}
		}
		request.setAttribute("errorStr", errorStr);
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/edit-quiz.jsp");
		dispatcher.forward(request, response);
	}

}