<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<% response.sendRedirect(request.getContextPath()+"/board/list"); %>

		<!-- �ּ�:
		���⼭ �����Ŀ� 
		http://localhost:8080/JSP_model2Board/view/Index.jsp 
		�� �ּ� ȭ�鿡�� ok�� ������
		http://localhost:8080/JSP_model2Board/board/index
		view���� �����ϰ� board/index �Է��Ͽ���.
		�� ȭ�鿡���� ok�� ���´� 
		-->
</body>
</html>