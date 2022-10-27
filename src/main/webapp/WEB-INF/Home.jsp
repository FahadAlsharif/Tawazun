<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tawazun</title>
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

/************************main************************/
.main {
	/*  display: flex; */
	justify-content: center;
	padding: 20px;
	text-align: center;
}

.img-1 {
	height: 470px;
	width: 1000px;
}

.prodects {
	/*  display: flex;  */
	justify-content: center;
	text-align: center;
}

.imgDiv {
    padding-top: 50px;
    padding-bottom: 50px; 
	display: flex;
	justify-content: center;
	align-items: center;
}

.img_Bag {
	background-image: url("/images/show_Bag.png");
	background-size: contain;
	background-repeat: no-repeat;
	height: 550px;
	width: 450px;
}

.Bag_text {
	text-align: center;
	position: absolute;
	left: 19%;
	transform: translate(-100%, 2600%);
	color: black;
}

.img_Cub {
	background-image: url("/images/show_Cub.png");
	background-size: contain;
	background-repeat: no-repeat;
	height: 550px;
	width: 450px
}

.Cub_text {
	text-align: center;
	position: absolute;
	left: 49%;
	transform: translate(-100%, 2600%);
	color: black;
}


.img_Straw {
	background-image: url("/images/show_Straw1.png");
	background-size: contain;
	background-repeat: no-repeat;
	height: 550px;
	width: 450px
}

.Straw_text {
	text-align: center;
	position: absolute;
	left: 79%; 
	transform: translate(-100%, 2600%);
	
}


.div_objectives{

  padding-top: 40px; 
  padding-right: 30px;
  padding-bottom: 40px; 
  padding-left: 200px;
}

.image-2 {

	margin: 20px; 
	height: 250px;
	width: 81%;
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
					<li><a href="home">Home</a></li>
					<li><a href="#">Products</a></li>
					<li><a href="cart">Cart</a></li>
					<li><a href="proflie">My Profile</a></li>
					<li><button class="btn">
							<a href="logout">Logout</a>
						</button></li>

				</ul>
			</div>
		</div>
	</div>

	<div class="main">

		<div>
			<img class="img-1" alt="" src="/images/about.png">
		</div>

		<br>

		<div>
			<img class="img-1" alt="" src="/images/mission.png">
		</div>

		<br>

		<div>
			<img class="img-1" alt="" src="/images/our_vision.png">
		</div>

	</div>

	<br>

	<div class="prodects">
		<h1>Our Products</h1>

		<div class="imgDiv">

			<div class="img_Bag">

				<div class="Bag_text">
					<a href="prodect/1">See More</a>
				</div>

			</div>

			<div>

				<div class="img_Cub">

					<div class="Cub_text">
						<a href="prodect/2">See More</a>
					</div>
				</div>
			</div>

			<div class="img_Straw " >
			<div class=" Straw_text"  >
				<a href="prodect/3">See More</a>
			</div>
			</div>


		</div>
	</div>
	

	<div class="div_objectives" >
		<img class="image-2" alt="" src="/images/objectives.png">
	</div>



	<br>

	<div class="footer">
	</div>


</body>
</html>