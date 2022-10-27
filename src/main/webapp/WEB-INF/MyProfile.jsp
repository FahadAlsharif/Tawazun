<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	background-image: url("/images/profile_background.png"); 
	background-size: cover;
	
	
	
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
/* 	background-image: url("/images/profile_header.png"); */
/* 	background-color: #cccccc; */
	height: 100px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
    padding-bottom: 60px;  
}

.nav-text {
	text-align: center;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	color: black;
}

/************************main************************/
.main1 {
	display: flex; 
	justify-content: center;
 	padding: 150px; 
	
  
}

.main2 {



}

.main3 {
font-size: 28px;
padding: 25px; 

}
.img-1{
border-radius: 100%;
height: 260px;
width: 260px;
}


</style>
<body>
<div class="nav" >

<div class="nav-image">
<div class="nav-text">
<ul>
  <li><a href="/home">Home</a></li>
    <li><a href="#">Products</a></li>
  <li><a href="/cart">Cart</a></li>
  <li> <img class="image-2"  alt="" src="/images/image-2.png"> </li>
  
</ul>
</div>
</div>
</div>

             
             <div class="main1" >
             <div class="main2">
             <img class="img-1" alt="" src="/images/user-profile.jpeg">
             </div> 
             <div class="main3">
			<p>Name: <c:out value = "${user.userName}"></c:out></p>
			<p>Email:<c:out value = "${user.email}"></c:out></p>
			<p>Phone : <c:out value = "${user.phone}"></c:out></p>
			<p>When you join us : <c:out value = "${user.createdAt}"></c:out></p>
			<p>Company name : <c:out value = "${user.companyName}"></c:out></p>
			</div>
             
            
             </div>
</body>
</html>