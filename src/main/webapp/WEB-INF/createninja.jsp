<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Add a Ninja</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
</head>
<body>
	<div class="container 4">
		<h1>Add a Ninja</h1>
		<a href="/">Back</a> | <a href="/dojos/new">Create Dojo</a>
		<div class="" style="flex-direction: column; padding: 10px;">
			<form:form action="/ninjas/new" method="post" modelAttribute="ninja"  class="d-flex border border-dark border-2" style="flex-direction: column; padding: 10px;">
				<form:label path="firstName">First Name:
				<form:input path="firstName"/></form:label>
				<form:label path="lastName">Last Name:
				<form:input path="lastName"/></form:label>
				<form:label path="age">Age:
				<form:input path="age" type="number"/></form:label>
				<form:label path="dojo">Dojo:
				<form:select path="dojo">
					<c:forEach items="${dojos}" var="dojo">
	        				<form:option value="${dojo.id}"><c:out value="${dojo.name}"/></form:option>
	   				</c:forEach>
				</form:select></form:label>
				<input type="submit" value="Create Ninja" style="width: 175px;">
				<c:forEach items="${errors}" var="error">
					<p><c:out value="${error.getDefaultMessage()}"/></p>
				</c:forEach>	
			</form:form>
		</div>
	</div>
</body>
</html>