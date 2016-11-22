package controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;

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
    	request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
    	String quiz_Name=request.getParameter("quiz_name");
    	QuestionRadioDAO questionRadioDAO = new QuestionRadioDAO();
        
        int countRow = questionRadioDAO.getCountRow(quiz_Name);
         
        List<QuestionQuiz> listQuestionRadios = questionRadioDAO.getListQuestionRadios(quiz_Name);
        List<AnswerUser> listAnswerUsers = new ArrayList<AnswerUser>();
         
        String errorStr = "";
         
        for (int i = 1; i <= countRow; i++) {
            String answerUser = request.getParameter("ans[" + i + "]");
             
            if (answerUser == null) {
                errorStr = "Bạn chưa trả lời hết các câu hỏi!"+countRow + answerUser;
            } else {
                AnswerUser au = new AnswerUser(i, answerUser);
                listAnswerUsers.add(au);
            }
        }
         
        /*if (!errorStr.isEmpty()) {
            request.setAttribute("errorStr", errorStr);
            request.setCharacterEncoding("UTF-8");
             
            request.setAttribute("listQuestionRadios", listQuestionRadios);
             
            RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/BaiTestSo1.result.jsp");
            dispatcher.forward(request, response);
        } else {
        	errorStr = "";*/
        	request.setAttribute("errorStr", errorStr);
            request.setAttribute("listQuestionRadios", listQuestionRadios);
            request.setAttribute("listAnswerUsers", listAnswerUsers);
             
            RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/BaiTestSo1.result.jsp");
            dispatcher.forward(request, response);
        //}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String quiz_name=request.getParameter("quiz_name");
		String command = request.getParameter("command");
		String url = "";
		QuestionRadioDAO questionRadioDAO = new QuestionRadioDAO();
		int countRow = questionRadioDAO.getCountRow(quiz_name);
		String errorStr = "";
            switch(command){
    		case "nopbai":
    			
    	        List<QuestionQuiz> listQuestionRadios = questionRadioDAO.getListQuestionRadios(quiz_name);
    	        List<AnswerUser> listAnswerUsers = new ArrayList<AnswerUser>();
    	         
    	        
    	         
    	        for (int i = 1; i <= countRow; i++) {
    	            String answerUser = request.getParameter("ans[" + i + "]");
    	             
    	            if (answerUser == null) {
    	                errorStr = "Bạn chưa trả lời hết các câu hỏi!"+countRow + answerUser;
    	            } else {
    	                AnswerUser au = new AnswerUser(i, answerUser);
    	                listAnswerUsers.add(au);
    	            }
    	        }
    	        /*request.setAttribute("errorStr", errorStr);*/
    	        request.setAttribute("errorStr", countRow);
                request.setAttribute("listQuestionRadios", listQuestionRadios);
                request.setAttribute("listAnswerUsers", listAnswerUsers);
                 url="/BaiTestSo1.result.jsp";
               
    			break;
    		case "chamdiem":
    			double diem;
    			int socaudung =Integer.parseInt(request.getParameter("socaudung"));
    			int tongsocau = countRow;
    			//Time thoigianlambai = Time.parse("thoigianlambai");
    			diem = (10.0/tongsocau)* socaudung;

    			
    			request.setAttribute("errorStr", errorStr);
    			request.setAttribute("quiz_name", quiz_name);
    			request.setAttribute("diem", diem);
    			request.setAttribute("socaudung", socaudung);
    			request.setAttribute("tongsocau", tongsocau);
    			url="/NopBai.jsp";
    			break;
    		}
            RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher(url);
            dispatcher.forward(request, response);
            
            
            /*QuestionRadioDAO questionRadioDAO = new QuestionRadioDAO();
            
            int countRow = questionRadioDAO.getCountRow();
             
            List<QuestionQuiz> listQuestionRadios = questionRadioDAO.getListQuestionRadios();
            List<AnswerUser> listAnswerUsers = new ArrayList<AnswerUser>();
             
            String errorStr = "";
             
            for (int i = 1; i <= countRow; i++) {
                String answerUser = request.getParameter("ans[" + i + "]");
                 
                if (answerUser == null) {
                    errorStr = "Bạn chưa trả lời hết các câu hỏi! " + countRow;
                } else {
                    AnswerUser au = new AnswerUser(i, answerUser);
                    listAnswerUsers.add(au);
                }
            }
             
            if (!errorStr.isEmpty()) {
                request.setAttribute("errorStr", errorStr);
                request.setCharacterEncoding("UTF-8");
                 
                request.setAttribute("listQuestionRadios", listQuestionRadios);
                 
                RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/BaiTestSo1.result.jsp");
                dispatcher.forward(request, response);
            } else {
            	errorStr = "";
            	request.setAttribute("errorStr", errorStr);
                request.setAttribute("listQuestionRadios", listQuestionRadios);
                request.setAttribute("listAnswerUsers", listAnswerUsers);
                 
                RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/BaiTestSo1.result.jsp");
                dispatcher.forward(request, response);
            //}*/	
            }

}
