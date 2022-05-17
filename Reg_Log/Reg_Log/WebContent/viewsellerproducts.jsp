<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Seller Products</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="userdetails.css">
</head>
<body>
      
   <div class="icon-bar">
  <a  href="sellerdashboard.jsp"><i class="fa fa-home"></i></a> 
  <a href="sellerdetails.jsp"><i class="fa fa-fw fa-user"></i></a>
  <a href="AddProduct.html"><i class="fa fa-cart-plus"></i></a> 
  <a class="active" href="viewsellerproducts.jsp"><i class="fa fa-list-alt"></i></a> 
  <a href="#"><i class="fa fa-globe"></i></a>
  <a href="#"><i class="fa fa-trash"></i></a> 
  <a href="loginform.jsp"><i class="glyphicon glyphicon-log-out"></i></a>
</div>
<div id="dashboard1">
<h2 style="text-align: center">Product List</h2>
</div>

<%@page import="dao.UserDetailsDao,dao.UserDetails,dao.Product,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
   
<%  
String id=session.getAttribute("status").toString();
List<Product> list=UserDetailsDao.getProductsbBySeller(Integer.parseInt(id));  
request.setAttribute("list",list);  
%>  
  <div class="container mt-3">
      <form class="form-horizontal" action="AddProduct.html" method="get">
<div class="table-responsive">
<table class="table table-bordered table-striped table-highlight" style="text-align:center;">
<tr><th style="text-align:center;">Product Name</th><th style="text-align:center;">Description</th></tr>  
<c:forEach items="${list}" var="p">
 <tr><td>${p.getProductname()}</td><td>${p.getDescription()}</td> </tr>
</c:forEach>

  </table>
  </div>
  <div class="mb-3 mt-3" style="text-align: center;">
             <button type="submit" id="add" name="add" class="btn btn-info" style='font-size:20px'style="text-align:center;">Add<i class='fa fa-cart-plus'></i></button>
           </div>
  </form>
  </div>

</body>
</html>