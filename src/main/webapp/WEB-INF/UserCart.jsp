<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>checkout</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<style>
body {
	font-size: 16px;
	
}

* {
	margin: 0;
	padding: 0;
}
/******************************navbar***********************/
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

li {
	float: left;
}

li a {
	display: block;
	color: black;
	text-align: center;
	padding: 17px 21px;
	text-decoration: none;
}

li a:hover {
	background-color: #DADFDA;
}

.nav-image {
	background-image: url("/images/header1.png");
	background-color: #cccccc;
	height: 345px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

.nav-text {
	text-align: center;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	color: black;
}

/*************************button*******************/
button {
	background-color: #8E9E8E;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #DADFDA;
}

/************************main_last************************/
.img{
border-radius: 100%;
height: 460px;
width: 460px;
}
.last {
font-size: 30px;
margin-left: 490px;
font-family: Garamond, serif; 
padding-top: 50px;
padding-bottom: 90px;
}

.textcenter{
display:center;
margin-left:13%;
}

.textTotal{
display:center;
margin-left:13%;
}
/******************************input**************************/
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

/*********************footer************************/
.footer {
	background-image: url("/images/footer.png");
	background-size: contain;
	background-repeat: no-repeat;
	background-size: cover;
	height: 240px;
	width: 100%;
}
</style>
<body>
	<div class="nav">

		<div class="nav-image">
			<div class="nav-text">
				<ul>
					<li><a href="/home">Home</a></li>
					<li><a href="#">Products</a></li>
					<li><a href="/cart">Cart</a></li>
					<li><a href="/proflie">My Profile</a></li>
					<li><img class="image-2" alt="" src="/images/image-2.png">
					</li>

				</ul>
			</div>
		</div>
	</div>
	<br>
	<div class="last">
		<h1>Order Summery</h1>
		<div>
	
		<c:forEach var="project" items="${Prodects}">
				 <img class="img" alt="" src="${project.img}">
                 <br>
                  <div class="textcenter">
					<p>Name <c:out value="${project.name}" /></p>
					<p>Price <c:out value="${project.price}" /> SR</p>
					<p>Quantity <c:out value="${project.meny}" /></p>
					<p>Total Price <c:out value="${project.meny * project.price}" /> SR</p>
				</div>
				<br>
			</c:forEach>
		</div >
		
		<div class="textTotal" >
		<p>Total price is <c:out value="${total}" /> SR</p>
		
		<form action="done">
			<input type="submit" value="Buy" class="btn btn-primary" />
		</form>
		</div>
	</div>
	
	
	
	<div class="footer">
	</div>
</body>
</html>
