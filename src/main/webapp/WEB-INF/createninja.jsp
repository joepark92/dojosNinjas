<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add a Ninja</title>
	<link href="webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
	<script src="webjars/bootstrap/4.0.0/js/bootstrap.min.js" ></script>
	<script src="webjars/jquery/3.0.0/jquery.min.js" ></script>
</head>
<body>
	<div class="container 4">
		<h1>Add a Ninja</h1>
		<a href="/">Back</a> | <a href="/dojos/new">Create Dojo</a>
		<div class="" style="flex-direction: column; padding: 10px;">
			<form:form action="/ninjas/new" method="post" modelAttribute="ninja"  class="d-flex border border-dark border-2" style="flex-direction: column; padding: 10px;">
				<form:label path="firstName">First Name:
				<form:errors path="firstName"/>
				<form:input path="firstName"/></form:label>
				<form:label path="lastName">Last Name:
				<form:errors path="lastName"/>
				<form:input path="lastName"/></form:label>
				<form:label path="age">Age:
				<form:errors path="age"/>
				<form:input path="age" type="number"/></form:label>
				<form:label path="dojo">Dojo:
				<form:select path="dojo">
					<c:forEach items="${dojos}" var="dojo">
	        				<form:option value="${dojo.id}"><c:out value="${dojo.name}"/></form:option>
	   				</c:forEach>
				</form:select></form:label>
				<input type="submit" value="Create Ninja">
			</form:form>
		</div>
	</div>
</body>
</html>