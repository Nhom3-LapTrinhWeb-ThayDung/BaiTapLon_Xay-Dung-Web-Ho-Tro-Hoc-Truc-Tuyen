
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Kết quả trả lời</title>
</head>
<body>
	<h2>Chọn đáp án đúng nhất cho các câu hỏi dưới đây:</h2>

	<form method="post" action="DoQuestionListServlet">
		<c:forEach items="${listQuestionRadios }" var="questionRadio">
			<c:forEach items="${listAnswerUsers }" var="answerUser">

				<c:if test="${questionRadio.number == answerUser.number }">

					<c:if test="${questionRadio.answer == 'A' }">
						<c:if test="${answerUser.answer == 'A' }">
							<p>
								<b>${questionRadio.number }.</b> ${questionRadio.question }
							</p>

							<div style="padding-left: 20px;">
								<img alt="Correct"
									src="${pageContext.request.contextPath }/Images/available.png" />
								${questionRadio.option1 } <br /> ${questionRadio.option2 } <br />
								${questionRadio.option3 } <br /> ${questionRadio.option4 } <br />
							</div>
						</c:if>

						<c:if test="${answerUser.answer == 'B' }">
							<p>
								<b>${questionRadio.number }.</b> ${questionRadio.question }
							</p>

							<div style="padding-left: 20px;">
								<img alt="Correct"
									src="${pageContext.request.contextPath }/Images/available.png" />
								${questionRadio.option1 } <br /> <img alt="In-Correct"
									src="${pageContext.request.contextPath }/Images/not-available.png" />
								${questionRadio.option2 } <br /> ${questionRadio.option3 } <br />
								${questionRadio.option4 } <br />
							</div>
						</c:if>

						<c:if test="${answerUser.answer == 'C' }">
							<p>
								<b>${questionRadio.number }.</b> ${questionRadio.question }
							</p>

							<div style="padding-left: 20px;">
								<img alt="Correct"
									src="${pageContext.request.contextPath }/Images/available.png" />
								${questionRadio.option1 } <br /> ${questionRadio.option2 } <br />
								<img alt="In-Correct"
									src="${pageContext.request.contextPath }/Images/not-available.png" />
								${questionRadio.option3 } <br /> ${questionRadio.option4 } <br />
							</div>
						</c:if>

						<c:if test="${answerUser.answer == 'D' }">
							<p>
								<b>${questionRadio.number }.</b> ${questionRadio.question }
							</p>

							<div style="padding-left: 20px;">
								<img alt="Correct"
									src="${pageContext.request.contextPath }/Images/available.png" />
								${questionRadio.option1 } <br /> ${questionRadio.option2 } <br />
								${questionRadio.option3 } <br /> <img alt="In-Correct"
									src="${pageContext.request.contextPath }/Images/not-available.png" />
								${questionRadio.option4 } <br />
							</div>
						</c:if>
					</c:if>

					<c:if test="${questionRadio.answer == 'B' }">
						<c:if test="${answerUser.answer == 'A' }">
							<p>
								<b>${questionRadio.number }.</b> ${questionRadio.question }
							</p>

							<div style="padding-left: 20px;">
								<img alt="In-Correct"
									src="${pageContext.request.contextPath }/Images/not-available.png" />
								${questionRadio.option1 } <br /> <img alt="Correct"
									src="${pageContext.request.contextPath }/Images/available.png" />
								${questionRadio.option2 } <br /> ${questionRadio.option3 } <br />
								${questionRadio.option4 } <br />
							</div>
						</c:if>

						<c:if test="${answerUser.answer == 'B' }">
							<p>
								<b>${questionRadio.number }.</b> ${questionRadio.question }
							</p>

							<div style="padding-left: 20px;">
								${questionRadio.option1 } <br /> <img alt="Correct"
									src="${pageContext.request.contextPath }/Images/available.png" />
								${questionRadio.option2 } <br /> ${questionRadio.option3 } <br />
								${questionRadio.option4 } <br />
							</div>
						</c:if>

						<c:if test="${answerUser.answer == 'C' }">
							<p>
								<b>${questionRadio.number }.</b> ${questionRadio.question }
							</p>

							<div style="padding-left: 20px;">
								${questionRadio.option1 } <br /> <img alt="Correct"
									src="${pageContext.request.contextPath }/Images/available.png" />
								${questionRadio.option2 } <br /> <img alt="In-Correct"
									src="${pageContext.request.contextPath }/Images/not-available.png" />
								${questionRadio.option3 } <br /> ${questionRadio.option4 } <br />
							</div>
						</c:if>

						<c:if test="${answerUser.answer == 'D' }">
							<p>
								<b>${questionRadio.number }.</b> ${questionRadio.question }
							</p>

							<div style="padding-left: 20px;">
								${questionRadio.option1 } <br /> <img alt="Correct"
									src="${pageContext.request.contextPath }/Images/available.png" />
								${questionRadio.option2 } <br /> ${questionRadio.option3 } <br />
								<img alt="In-Correct"
									src="${pageContext.request.contextPath }/Images/not-available.png" />
								${questionRadio.option4 } <br />
							</div>
						</c:if>
					</c:if>

					<c:if test="${questionRadio.answer == 'C' }">
						<c:if test="${answerUser.answer == 'A' }">
							<p>
								<b>${questionRadio.number }.</b> ${questionRadio.question }
							</p>

							<div style="padding-left: 20px;">
								<img alt="In-Correct"
									src="${pageContext.request.contextPath }/Images/not-available.png" />
								${questionRadio.option1 } <br /> ${questionRadio.option2 } <br />
								<img alt="Correct"
									src="${pageContext.request.contextPath }/Images/available.png" />
								${questionRadio.option3 } <br /> ${questionRadio.option4 } <br />
							</div>
						</c:if>

						<c:if test="${answerUser.answer == 'B' }">
							<p>
								<b>${questionRadio.number }.</b> ${questionRadio.question }
							</p>

							<div style="padding-left: 20px;">
								${questionRadio.option1 } <br /> <img alt="In-Correct"
									src="${pageContext.request.contextPath }/Images/not-available.png" />
								${questionRadio.option2 } <br /> <img alt="Correct"
									src="${pageContext.request.contextPath }/Images/available.png" />
								${questionRadio.option3 } <br /> ${questionRadio.option4 } <br />
							</div>
						</c:if>

						<c:if test="${answerUser.answer == 'C' }">
							<p>
								<b>${questionRadio.number }.</b> ${questionRadio.question }
							</p>

							<div style="padding-left: 20px;">
								${questionRadio.option1 } <br /> ${questionRadio.option2 } <br />
								<img alt="Correct"
									src="${pageContext.request.contextPath }/Images/available.png" />
								${questionRadio.option3 } <br /> ${questionRadio.option4 } <br />
							</div>
						</c:if>

						<c:if test="${answerUser.answer == 'D' }">
							<p>
								<b>${questionRadio.number }.</b> ${questionRadio.question }
							</p>

							<div style="padding-left: 20px;">
								${questionRadio.option1 } <br /> ${questionRadio.option2 } <br />
								<img alt="Correct"
									src="${pageContext.request.contextPath }/Images/available.png" />
								${questionRadio.option3 } <br /> <img alt="In-Correct"
									src="${pageContext.request.contextPath }/Images/not-available.png" />
								${questionRadio.option4 } <br />
							</div>
						</c:if>
					</c:if>

					<c:if test="${questionRadio.answer == 'D' }">
						<c:if test="${answerUser.answer == 'A' }">
							<p>
								<b>${questionRadio.number }.</b> ${questionRadio.question }
							</p>

							<div style="padding-left: 20px;">
								<img alt="In-Correct"
									src="${pageContext.request.contextPath }/Images/not-available.png" />
								${questionRadio.option1 } <br /> ${questionRadio.option2 } <br />
								${questionRadio.option3 } <br /> <img alt="Correct"
									src="${pageContext.request.contextPath }/Images/available.png" />
								${questionRadio.option4 } <br />
							</div>
						</c:if>

						<c:if test="${answerUser.answer == 'B' }">
							<p>
								<b>${questionRadio.number }.</b> ${questionRadio.question }
							</p>

							<div style="padding-left: 20px;">
								${questionRadio.option1 } <br /> <img alt="In-Correct"
									src="${pageContext.request.contextPath }/Images/not-available.png" />
								${questionRadio.option2 } <br /> ${questionRadio.option3 } <br />
								<img alt="Correct"
									src="${pageContext.request.contextPath }/Images/available.png" />
								${questionRadio.option4 } <br />
							</div>
						</c:if>

						<c:if test="${answerUser.answer == 'C' }">
							<p>
								<b>${questionRadio.number }.</b> ${questionRadio.question }
							</p>

							<div style="padding-left: 20px;">
								${questionRadio.option1 } <br /> ${questionRadio.option2 } <br />
								<img alt="In-Correct"
									src="${pageContext.request.contextPath }/Images/not-available.png" />
								${questionRadio.option3 } <br /> <img alt="Correct"
									src="${pageContext.request.contextPath }/Images/available.png" />
								${questionRadio.option4 } <br />
							</div>
						</c:if>

						<c:if test="${answerUser.answer == 'D' }">
							<p>
								<b>${questionRadio.number }.</b> ${questionRadio.question }
							</p>

							<div style="padding-left: 20px;">
								${questionRadio.option1 } <br /> ${questionRadio.option2 } <br />
								${questionRadio.option3 } <br /> <img alt="Correct"
									src="${pageContext.request.contextPath }/Images/available.png" />
								${questionRadio.option4 } <br />
							</div>
						</c:if>
					</c:if>

				</c:if>

			</c:forEach>
		</c:forEach>

		<br /> <input type="submit" value="Thử lại" />
	</form>
</body>
</html>