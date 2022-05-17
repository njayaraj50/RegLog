<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SellerDashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="sellerdetails.css">
  
</head>
<body>
<jsp:include page="sellerdashboard.html"></jsp:include>
     <%@page import="dao.UserDetailsDao,dao.UserDetails,dao.Product,java.util.*"%>  
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
     
<% String id=session.getAttribute("status").toString();
List<Product> list=UserDetailsDao.getProductsbBySeller(Integer.parseInt(id));  
request.setAttribute("list",list);  
%> 
<div id="dashboard2">
<h2>Product List</h2>  
</div>
 <div class="container mt-3">
      <form class="form-horizontal" action="AddProduct.html" method="get">
<div class="table-responsive">
<table class="table table-bordered table-striped table-highlight">
<tr ><th style="text-align: center;">Product Name</th><th style="text-align: center;">Description</th></tr>  
<c:forEach items="${list}" var="p">
 <tr><td>${p.getProductname()}</td><td>${p.getDescription()}</td> </tr>
</c:forEach>
</table>
  </div>
    <div class="mb-3 mt-3" style="text-align: center;">
             <button type="submit" id="add" name="add" class="btn btn-info" style='font-size:20px'>Add<i class='fa fa-cart-plus'></i></button>
           </div>
      
  </form>
    </div>
    
</body>
</html>