<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dao.UserDetailsDao"%>  
<jsp:useBean id="u" class="dao.UserDetails"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CheckLogin</title>
</head>
<body>
   <%
   int status=UserDetailsDao.Checkuser(u);
  
   if(status>0){
	   session.setAttribute("status",status);
	   response.sendRedirect("dashboard.jsp"); 
	      
   }else{  
   response.sendRedirect("AddUser_Error.jsp"); 
   }
   %>    
</body>
</html>