<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>${dojo.name} Dojo</title>
	<link href="webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
	<script src="webjars/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
	<script src="webjars/jquery/3.0.0/jquery.min.js" ></script>
</head>
<body>
	<div class="container 2">
		<h1><c:out value="${dojo.name}"/></h1>
		<a href="/">Home</a> | <a href="/ninjas/new">Create Ninja</a>
		<table class="table table-light table-striped table-bordered">
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Age</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${ninjas}" var="ninja">
				<tr>
					<td><c:out value="${ninja.firstName}"/></td>
					<td><c:out value="${ninja.lastName}"/></td>
					<td><c:out value="${ninja.age}"/></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>