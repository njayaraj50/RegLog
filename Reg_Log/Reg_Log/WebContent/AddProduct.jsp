<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dao.UserDetailsDao"%>  
<jsp:useBean id="p" class="dao.Product"></jsp:useBean>  
<jsp:setProperty property="*" name="p"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
</head>
<body>
      <%
      String id=session.getAttribute("status").toString();
      int id1=Integer.parseInt(id);
	int i=UserDetailsDao.addproduct(p,id1);  
if(i>0){  
response.sendRedirect("success.jsp");  
}else{  
response.sendRedirect("error.jsp");  
}
%>  
</body>
</html>