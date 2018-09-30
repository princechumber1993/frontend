<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="resources/image/7.jpg">
<div class="container">
<h2 align="center">Add Product</h2><hr>
<spring:form action="${pageContext.request.contextPath}/addproduct" modelAttribute="pat" method="POST">
<div class="form-group">
<c:if test="${not empty prod.product_Name}">
<label for=pid>Product ID:</label>
<spring:input type="text" path="product_Id" class="form-control" id="pid"  readonly="true" disabled="true"/>
<spring:hidden path="product_Id"/>
</c:if>
</div>
<div class="form-group">
<label for=pName>Product Name:</label>
 <spring:input type="text" class="form-control" id="pname" path="productName"/>
 </div>
 <div class="form-group">
 <label for=pdesc>Product Description:</label>
<spring:input type="text" class="form-control" id="pdesc" path="productDescription"/>
</div>
 <div class="form-group">
 <label for=pprice>Product price:</label>
<spring:input type="number" class="form-control" id="pprice" path="price"/>
</div>
<div class="form-group">
 <label for=Pq>Product quantity:</label>
<spring:input type="number" class="form-control" id="Pq" path="quantity"/>
</div>
</spring:form>
<c:if test="${empty pat.productName}"><input type="submit" value="Add"/></c:if>
<c:if test="${not empty pat.productName}"><input type="submit" value="Update"/></c:if>

<c:if test="${not empty productList}">

<table class="table table-hover" >
 <thead>
<tr><th>ProductId</th>
<th>Product Name</th>
<th>Product description</th>
<th>Product price</th>
<th>Product Quantity</th>
<th>Edit</th>
<th>delete</th>
</tr>
</thead>
<c:forEach items="${productList}" var="pro">
<tbody>
<tr>
<td>${pro.productId}</td>
<td>${pro.productName}</td>
<td>${pro.productDescription}</td>
<td>${pro.productprice}</td>
<td>${pro.productquantity}</td>

<td><a href="editProduct/${pro.productId}">Edit</a></td>

<td><a href="deleteProduct/${pro.productId}">delete</a></td>
</tr>
</tbody>
</c:forEach>
</table>

</c:if>
</div>
</body>
</html>