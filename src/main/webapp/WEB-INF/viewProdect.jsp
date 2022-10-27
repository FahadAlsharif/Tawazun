<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${pro.name}</title>
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
	background-color: #8E9E8E;;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #DADFDA;
}

/************************main************************/


.main1 {
	display: flex; 
	justify-content: center;
 	padding: 150px; 
	
  
}

.main2 {
font-size: 25px;
padding-top: 250px; 

}

.main3 {


}
.img{
border-radius: 100%;
height: 460px;
width: 460px;
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

	<div class="main3">
	
	</div>

	<div class="main1">
		<div class="main2">
			<p>
				Name:
				<c:out value="${pro.name}"></c:out>
			</p>
			<p>
				Description: 
				<c:out value="${pro.description}"></c:out>
			</p>
			<p>
				Price :
				<c:out value="${pro.price}"></c:out>
				SR
			</p>
			<form action="/add/user/${pro.id}">
				<select name="num">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>		
				</select>
				<button>Add to cart</button>
			</form>
		</div>
		<div class="main3">
			<img class="img" src="${pro.img}">
		</div>




	</div>

	<div class="footer"></div>
</body>
</html>