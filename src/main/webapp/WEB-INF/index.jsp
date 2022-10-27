<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/css/style.css">

</head>
<style>
* {
	box-sizing: border-box;
}

body {
	font-size: 16px;
	background-image: url("/images/background.png");
	background-size: cover;
}

button {
	background-color: #8E9E8E;
	color: black;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #DADFDA;
}

input[type=text], textarea {
	width: 50%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
}

label {
	padding: 12px 12px 12px 0;
	display: inline-block;
}

input[type=submit] {
	background-color: #8E9E8E;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	align-items: center;
}

input[type=submit]:hover {
	background-color: #DADFDA;
}

.container {
	display: flex;
	justify-content: center;
	padding: 20px;
	justify-content: space-around;
}

.register {
	border-color: #748DA6;
	width: 400px;
	height: fit-content;
	padding: 10px;
}
</style>

<body>




	<div class="container">

		<div>
			<img alt="" src="/images/logo.jpg">
		</div>
		<div class="register">
			<h1>Hello! Register to get started</h1>

			<div>
				<form:form action="register" method="post" modelAttribute="newUser">
					<form:errors path="userName" class="text-danger" />
					<form:errors path="email" class="text-danger" />
					<form:errors path="phone" class="text-danger" />
					<form:errors path="password" class="text-danger" />
					<form:errors path="confirm" class="text-danger" />
					<div class="form-group">
						<label>Name:</label> <br>
						<form:input path="userName" class="form-control" />
					</div>
					<div class="form-group">
						<label>Email:</label> <br>
						<form:input path="email" class="form-control" />
					</div>
					<div class="form-group">
						<label>Company Name:</label> <br>
						<form:input path="CompanyName" class="form-control" />
					</div>
					<div class="form-group">
						<label>Phone Number:</label> <br>
						<form:input path="phone" class="form-control" />
					</div>
					<div class="form-group">
						<label>Password:</label> <br>
						<form:password path="password" class="form-control" />
					</div>
					<div class="form-group">
						<label>Confirm Password:</label> <br>
						<form:password path="confirm" class="form-control" />
					</div>
					<br>
					<input type="submit" value="Register" class="btn btn-primary" />
				</form:form>
			</div>
		</div>

	</div>
</body>
</html>