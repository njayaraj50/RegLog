<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sellerdetails</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="userdetails.css">
</head>
<body>
<%@page import="dao.UserDetailsDao,dao.UserDetails"%> 
<% 

String id=session.getAttribute("status").toString();
UserDetails u1=UserDetailsDao.getUserById(Integer.parseInt(id)); 
%>
 <div class="icon-bar">
  <a  href="sellerdashboard.jsp"><i class="fa fa-home"></i></a> 
  <a class="active" href="sellerdetails.jsp"><i class="fa fa-fw fa-user"></i></a>
  <a href="AddProduct.html"><i class="fa fa-cart-plus"></i></a> 
  <a href="viewsellerproducts.jsp"><i class="fa fa-list-alt"></i></a> 
  <a href="#"><i class="fa fa-globe"></i></a>
  <a href="#"><i class="fa fa-trash"></i></a> 
  <a href="loginform.jsp"><i class="glyphicon glyphicon-log-out"></i></a>
</div>
  
      <h2 id="personal" style="text-align:center;">Personal Details</h2> 
      <div class="container mt-3">
      <form class="form-horizontal" action="sellerdashboard.jsp" method="get">
<div class="table-responsive">
<input type="hidden" name="id" value="<%= u1.getId()%>">
<table class="table table-bordered table-striped table-highlight">

  <tr style="font-weight: bold">
       <td>First Name:</td>
       <td><input type="text" name="firstname" value="<%=u1.getFirstname()%>"></td>
  </tr>
  <tr style="font-weight: bold">
     <td>Last Name:</td>
     <td><input type="text" id="lname" name="lastname" value="<%= u1.getLastname()%>"></td>
  </tr>
  <tr style="font-weight: bold">
     <td>Mobile:</td>
     <td><input type="text" name="mobile" value="<%= u1.getMobile()%>"></td>
  </tr>
  <tr style="font-weight: bold">
     <td>Email:</td>
     <td><input type="text" id="email" name="email" value="<%=u1.getEmail()%>" ></td>
  </tr>
  <tr style="font-weight: bold">
     <td>UserName:</td>
     <td><input type="text" name="username" value="<%=u1.getUsername()%>"></td>
  </tr>
  <tr style="font-weight: bold">
     <td>Password:</td>
     <td><input type="text" id="pswd" name="password" value="<%=u1.getPassword()%>"></td>
  </tr>
  <tr style="font-weight: bold">
     <td colspan="2"><input type="submit" value="OK"></td>
  </tr>
</table>
</div>
</form>    
   
</div>

</body>
</html>