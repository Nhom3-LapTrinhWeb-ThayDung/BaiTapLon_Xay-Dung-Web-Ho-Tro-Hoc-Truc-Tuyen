<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="model.QuestionQuiz"%>
<%@page import="model.AnswerUser"%>
<%@page import="dao.QuestionRadioDAO"%>
<%@page import="controller.DoQuestionListServlet"%>
<%@page import="controller.QuestionListServlet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Danh sách câu hỏi</title>
</head>
<body>	
	<h2>Chọn đáp án đúng nhất cho các câu hỏi dưới đây:</h2>
	
	<c:if test="${errorStr != null }">
		<p style="color: red; font-style: italic;">${errorStr }</p>
	</c:if>	

	<form method="post" action="DoQuestionListServlet">
		<c:forEach items="${listQuestionRadios }" var="questionRadio">
			<p>
				<b>${questionRadio.number }.</b> ${questionRadio.question }
			</p>
			
			<div style="padding-left: 20px;">
			
				<input type="radio" name="ans[${questionRadio.number }]" value="A" /> ${questionRadio.option1 }
				<br />
				<input type="radio" name="ans[${questionRadio.number }]" value="B" /> ${questionRadio.option2 }
				<br />
				<input type="radio" name="ans[${questionRadio.number }]" value="C" /> ${questionRadio.option3 }
				<br />
				<input type="radio" name="ans[${questionRadio.number }]" value="D" /> ${questionRadio.option4 }
				<br />
			</div>
		</c:forEach>
		
		<br />
		
		<input type="submit" value="Kiểm tra" />
	</form>
</body>
</html>