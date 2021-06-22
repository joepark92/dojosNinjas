<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Dojos and Ninjas</title>
	<link href="webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
	<script src="webjars/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
	<script src="webjars/jquery/3.0.0/jquery.min.js" ></script>
</head>
<body>
	<div class="container">
		<h1>Dojos and Ninjas</h1>
		<table class="table table-dark table-striped table-bordered">
			<thead>
				<tr>
					<th>Dojo Name</th>
					<th>Ninja Count</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${dojos}" var="dojo">
				<tr>
					<td><a href="/dojos/${dojo.id}"><c:out value="${dojo.name}"/></a></td>
					<td><c:out value="${dojo.getNinjas().size()}"/> ninjas</td>
					<td><a href="/dojos/delete/${dojo.id}">Delete</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<a href="/dojos/new">Create Dojo</a> | <a href="/ninjas/new">Create Ninja</a>
	</div>
</body>
</html>