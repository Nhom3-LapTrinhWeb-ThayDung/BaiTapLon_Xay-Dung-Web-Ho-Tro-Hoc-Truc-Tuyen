package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QuestionRadioDAO;
import model.QuestionQuiz;
import model.AnswerUser;
/**
 * Servlet implementation class DoQuestionListServlet
 */
@WebServlet("/DoQuestionListServlet")
public class DoQuestionListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoQuestionListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QuestionRadioDAO questionRadioDAO = new QuestionRadioDAO();
        
        int countRow = questionRadioDAO.getCountRow();
         
        List<QuestionQuiz> listQuestionRadios = questionRadioDAO.getListQuestionRadios();
        List<AnswerUser> listAnswerUsers = new ArrayList<AnswerUser>();
         
        String errorStr = "";
         
        for (int i = 1; i <= countRow; i++) {
            String answerUser = request.getParameter("ans[" + i + "]");
             
            if (answerUser == null) {
                errorStr = "Bạn chưa trả lời hết các câu hỏi !";
            } else {
                AnswerUser au = new AnswerUser(i, answerUser);
                listAnswerUsers.add(au);
            }
        }
         
        if (!errorStr.isEmpty()) {
            request.setAttribute("errorStr", errorStr);
            request.setCharacterEncoding("UTF-8");
             
            request.setAttribute("listQuestionRadios", listQuestionRadios);
             
            RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/question.list.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("listQuestionRadios", listQuestionRadios);
            request.setAttribute("listAnswerUsers", listAnswerUsers);
             
            RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/question.result.jsp");
            dispatcher.forward(request, response);
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
QuestionRadioDAO questionRadioDAO = new QuestionRadioDAO();
        
        int countRow = questionRadioDAO.getCountRow();
         
        List<QuestionQuiz> listQuestionRadios = questionRadioDAO.getListQuestionRadios();
        List<AnswerUser> listAnswerUsers = new ArrayList<AnswerUser>();
         
        String errorStr = "";
         
        for (int i = 1; i <= countRow; i++) {
            String answerUser = request.getParameter("ans[" + i + "]");
             
            if (answerUser == null) {
                errorStr = "Bạn chưa trả lời hết các câu hỏi !";
            } else {
                AnswerUser au = new AnswerUser(i, answerUser);
                listAnswerUsers.add(au);
            }
        }
         
        if (!errorStr.isEmpty()) {
            request.setAttribute("errorStr", errorStr);
            request.setCharacterEncoding("UTF-8");
             
            request.setAttribute("listQuestionRadios", listQuestionRadios);
             
            RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/question.list.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("listQuestionRadios", listQuestionRadios);
            request.setAttribute("listAnswerUsers", listAnswerUsers);
             
            RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/question.result.jsp");
            dispatcher.forward(request, response);
        }
	}

}
