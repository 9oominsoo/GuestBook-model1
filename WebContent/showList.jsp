<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.josh.dao.GuestBookDao" %>
<%@ page import="com.josh.dto.GuestBookDto" %>
<%@ page import="java.util.List" %>


<%
	GuestBookDao dao = new GuestBookDao();
	List<GuestBookDto> list = dao.getList();
	System.out.println(list.toString());
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GuestBook</title>
</head>
<body>
  <p>
  <form method="get" action="add.jsp">
  <table border="2" width="500">
  	<tr>
      <td width="10%">이름</td>
      <td width="35%"><input type="text" name="name"></td>
      <td width="20%">비밀번호</td>
      <td width="35%"><input type="text" name="pwd"></td>
    </tr>
  	<tr>
  	  <td colspan="4"><textarea name="content" cols="70" rows="10"></textarea></td>
  	</tr>
  	<tr>
  	  <td colspan="4"><input type="submit" name value="확인"></td>
  	</tr>
  </table>
  </form>

  <br/><br/>

  <% for(GuestBookDto dto : list){ %>
  <p>
  <table border="1" width="500">
    <tr>
      <td width="10%"><%= dto.getNo() %></td>
      <td width="25%"><%= dto.getName() %></td>
      <td width="*"><%= dto.getRegDate() %></td>
      <td width="15%"><a href="confirmDelete.jsp?no=<%=dto.getNo() %>">삭제</a></td>
    </tr>
    <tr>
      <td colspan="4">첫번째 방명록 내용<br/><%= dto.getContent() %></td>
    </tr>
  </table>
  </p>
  <% } %>
</body>
</html>
