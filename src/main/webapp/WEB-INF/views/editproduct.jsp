<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="./links.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">${title }</h1>
				<form action="${pageContext.request.contextPath}/handleaddproduct" method="post">
				<input type="hidden" value="${product.id }" name="id"  />
					<div class="form-group">
						<label for="name">Product Name</label> <input type="text"
							class="form-control" id="name" name="name"
							placeholder="Enter product name" value="${product.name }">
					</div>
					<div class="form-group">
						<label for="name">Product Description</label>
						<textarea class="form-control" id="name" id="description"
							name=description rows="5" placeholder="Enter product description">${product.description}</textarea>
					</div>
					<div class="form-group">
						<label for="name">Product Price</label> <input type="number"
							class="form-control" id="price" name="price"
							value="${product.price }" placeholder="Enter product price"
							required="required">
					</div>
					<div class="container text-center">
						<!-- in href we can use this also href="${pageContext.request.contextPath}/" -->
						<a href="http://localhost:8080/crudapp/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-outline-primary">Update</button>
						<h3 class="mt-3">${addmsg }</h3>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>