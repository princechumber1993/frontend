<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@include file="Header.jsp" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
<h2 Align="center">Add Product </h2>
 <div class="container">
	<spring:form action="${pageContext.request.contextPath}/addProduct" modelAttribute="pat" method="post"
	enctype="Multipart/form-data">
	<div class="form-group">
	<c:if test="${not empty pat.productName}">
	<label for=pid>ProductId</label>
	<spring:input type="text" id="pid" class="form-control" path="ProductId" readonly="true" disabled="true"/>
	<spring:hidden path="ProductId"/>
	</c:if>
	</div>
	<div class="form-group">
	<label for=cname>ProductName</label>
	<spring:input type="text" id="pname" class="form-control" path="productName"/>
	</div>
	<div class="form-group">
	<label for=pdesc>ProductDescription</label>
     <spring:input type="text" id="pdesc" class="form-control" path="productDescription"/><br>
     </div>
     <div class="form-group">
     <label for=cquan>ProductQuantity</label>
    <spring:input type="text" id="cquan" class="form-control" path="quantity"/>
     </div>
     <div class="form-group">
     <label for=pprice>ProductPrice</label>
	<spring:input type="text" id="pprice" class="form-control" path="price"/>
	</div>
	 
	<div class="form-group">
	<label for="c1">Category</label>
	 <spring:select  path="categoryId" class="form-control" id="c1">
	 <c:forEach items="${categoryList}" var="cat">
  	<option value="${cat.categoryId}">${cat.categoryName}</option>
	</c:forEach>
	</spring:select>
  	</div>
		
	<c:if test="${empty pat.productName}">
	<input type="submit" value="AddProducts"/>
	</c:if>
	<c:if test="${not empty pat.productName}" >
	<input type="submit" value="UpdateProducts"/>
	</c:if>
	</spring:form>
	
	<c:if test="${not empty productList }">
	<table border="1">
<tr><td>ProductId</td>
<td>ProductName</td>
<td>ProductDescription</td>
<td>Price</td>
<td>Product Quantity</td>
<td>Edit</td>
<td>Delete</td>
</tr>
<c:forEach items="${productList}" var="pro">
<tr>
<td>${pro.productId}</td>
<td>${pro.productName}</td>
<td>${pro.productDescription} </td>
<td>${pro.quantity}</td>
<td>${pro.price }</td> 
<td><a href="<c:out value="editProduct/${pro.productId}"></td>></c:out>">Edit</a>
<td><a href="<c:out value="deleteProduct/${pro.productId}"></td>></c:out>">Delete</a>
</tr>


</c:forEach>
</table>

</c:if>
</div>
</body>
</html>