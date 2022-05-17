<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Products</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="viewAllProducts.css">
</head>
<body>      
   <div class="icon-bar">
  <a  href="dashboard.jsp"><i class="fa fa-home"></i></a> 
  <a href="userdetails.jsp"><i class="fa fa-fw fa-user"></i></a>
  <a class="active" href="viewAllProducts.jsp"><i class="fa fa-shopping-cart"></i></a>
  <a href="#"><i class="fa fa-globe"></i></a>
  <a href="#"><i class="fa fa-trash"></i></a> 
  <a href="loginform.jsp"><i class="glyphicon glyphicon-log-out"></i></a> 
</div>
<%@page import="dao.UserDetailsDao,dao.UserDetails,dao.Product,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
   
<%  

List<Product> list=UserDetailsDao.getAllRecords();  
request.setAttribute("list",list);  
%> 

<div class="container-fluid" id="dashboard" >
           <h2>Product List</h2>
  </div>
  <div class="container mt-3">
      <form class="form-horizontal" action="#" method="get">
<div class="table-responsive">
<table class="table table-bordered table-striped table-highlight" style="text-align:center;">
<tr><th style="text-align:center;">Product Name</th><th style="text-align:center;">Description</th></tr>  
<c:forEach items="${list}" var="p">
 <tr><td>${p.getProductname()}</td><td>${p.getDescription()}</td> </tr>
</c:forEach>

  </table>
  </div>
  </form>
  </div>

</body>
</html>