<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add a Dojo</title>
	<link href="webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
	<script src="webjars/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
	<script src="webjars/jquery/3.0.0/jquery.min.js" ></script>
</head>
<body>
	<div class="container 3">
		<h1>Add a Dojo</h1>
		<a href="/">Back</a> | <a href="/ninjas/new">Create Ninja</a>
		<form:form action="/dojos/new" method="post" modelAttribute="dojo">
			<form:label path="name">Name:
			<form:errors path="name"/>
			<form:input path="name"/></form:label>
			<input type="submit" value="Create Dojo">
		</form:form>
	</div>
</body>
</html>