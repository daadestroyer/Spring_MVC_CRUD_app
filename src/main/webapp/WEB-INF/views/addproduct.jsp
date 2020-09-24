<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./links.jsp"%>
</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3" style="color:white;">Add Product</h1>
				<form action="handleaddproduct" method="post">
					<div class="form-group">
						<label for="name" style="color:white;">Product Name</label> <input type="text"
							class="form-control" id="name" name="name"
							placeholder="Enter product name"  >
					</div>
					<div class="form-group">
						<label for="name" style="color:white;">Product Description</label>
						<textarea class="form-control" id="name" id="description"
							name=description rows="5" placeholder="Enter product description"    ></textarea>
					</div>
					<div class="form-group">
						<label for="name" style="color:white;">Product Price</label> <input type="number"
							class="form-control" id="price" name="price"
							placeholder="Enter product price" required="required">
					</div>
					<div class="container text-center">
						<!-- in href we can use this also href="${pageContext.request.contextPath}/" -->
						<a href="http://localhost:8080/crudapp/" class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-outline-primary">Add</button>
						<h4>${addmsg }</h4>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>