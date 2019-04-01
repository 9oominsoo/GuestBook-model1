<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.josh.dao.GuestBookDao" %>
<%@ page import="com.josh.dto.GuestBookDto" %>
<%@ page import="java.util.List" %>
    
<%
  request.setCharacterEncoding("UTF-8");
  String password = request.getParameter("pwd");
  String no = request.getParameter("no");

  GuestBookDto dto = new GuestBookDto();
  dto.setPassword(password);
  dto.setNo(Integer.parseInt(no));

  GuestBookDao dao = new GuestBookDao();
  dao.delete(dto);
  
  List<GuestBookDto> list = dao.getList();
  response.sendRedirect("showList.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>