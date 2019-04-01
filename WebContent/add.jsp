<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.josh.dao.GuestBookDao" %>
<%@ page import="com.josh.dto.GuestBookDto" %>
<%@ page import="java.util.List" %>
<%
  request.setCharacterEncoding("UTF-8");
  String name = request.getParameter("name");
  String password = request.getParameter("pwd");
  String content = request.getParameter("content");

  GuestBookDto dto = new GuestBookDto();
  dto.setName(name);
  dto.setContent(content);
  dto.setPassword(password);

  GuestBookDao dao = new GuestBookDao();
  dao.insert(dto);
  
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