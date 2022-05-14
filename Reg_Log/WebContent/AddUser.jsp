<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dao.UserDetailsDao"%>  
<jsp:useBean id="u" class="dao.UserDetails"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddUser</title>
</head>
<body>
<%
	int i=UserDetailsDao.save(u);  
if(i>0){  
response.sendRedirect("AddUser_Success.jsp");  
}else{  
response.sendRedirect("AddUser_Error.jsp");  
}
%>  
</body>
</html>