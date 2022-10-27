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
<title>Login</title>
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
	color: white;
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
	background-color:  #DADFDA;
}

.container {
	display: flex;
	justify-content: center;
	padding: 20px;
	justify-content: space-around;
}

.login {
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

		<div class="login">
			<br>
			<br>
			<h1>Welcome back! Glad to see you, Again!</h1>

			<form:form action="login" method="post" modelAttribute="newLogin">
				<div class="form-group">
					<label>Email:</label> <br>
					<form:input path="email" class="form-control" />
					<form:errors path="email" class="text-danger" />
				</div>
				<div class="form-group">
					<label>Password:</label> <br>
					<form:password path="password" class="form-control" />
					<form:errors path="password" class="text-danger" />
				</div>
				<br>
				<input type="submit" value="Login" class="btn btn-success" />
			</form:form>
			<br>
			<form action="register">
				<button>Sign up</button>
			</form>
		</div>
	</div>
</body>
</html>