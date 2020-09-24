<html>
<head>
<%@ include file="./links.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>


</head>
<body>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Spring MVC + Hibernate CRUD Application</h1>
				<table class="table mt-5">
					<thead class="thead-dark">
						<tr>
							<th scope="col">P.Id</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${products}" var="p">
							<tr>
								<th>PROD${p.id}</th>
								<td>${p.name}</td>
								<td>${p.description}</td>
								<td class="font-weight-bold">&#x20B9; ${p.price}</td>
								<td><a href="deleteproduct/${p.id }"><i
										class="far fa-trash-alt text-danger" style="font-size: 30px;"></i></a>
									&nbsp
									<a href="editproduct/${p.id }"><i
										class="far fa-edit text-primary" style="font-size: 30px;"></i></a>
								</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="container text-center">
					<a href="addproduct" class="btn btn-outline-success">Add
						Product</a>
						
						<h4>${addmsg }</h4>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
