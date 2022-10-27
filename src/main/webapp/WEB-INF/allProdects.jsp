<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tawazun</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>

<style>

 body {
        font-size: 15px;
         font-family: 'Roboto', sans-serif;
    }
    
* {
    margin: 0;
    padding: 0;
} 


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
  padding: 16px 20px;
  text-decoration: none;
  
}

li a:hover {
  background-color: white;
}


.nav-image {
  background-image: url("/images/image-1.png");
  background-color: #cccccc;
  height: 300px;
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

.image-2{
 padding: 5px 10px;

} 

 
       
     button {
         background-color:#125C13;
         color: white;
        /*  padding: 5px 10px; */
         border: none;
         border-radius: 4px;
         cursor: pointer;
         
         
} 
  
 
       button:hover {
       background-color: white;
} 

.main{
/*  display: flex; */
 justify-content: center;
 padding: 20px;   
text-align: center;


}


.prodects{
/*  display: flex;  */
justify-content: center;  
text-align: center;
 
}

.img{
 border-radius: 200px;
    margin: 20px;
    height:200px ;
    width:150px ;
}

.imgDiv{
 display: flex; 
justify-content: center;
 align-items: center;
}


.footer{
justify-content: center;  
  background-color:#CFE8A9;

   left: 0;
   bottom: 0;
   width: 100%;
   color: black;
   text-align: center;
    height: 100px;

}


</style>

<body>
<div class="nav" >

<div class="nav-image">
<div class="nav-text">
<ul>
    <li><a href="#home">Products</a></li>
  <li><a href="cart">Cart</a></li>
      <li><a href="proflie">My Profile</a></li>
  <li> <img class="image-2"  alt="" src="/images/image-2.png"> </li>
  <li><button class="btn"> <a href="logout" >Logout</a></button></li>
  
</ul>
</div>
</div>
</div>
<div class="prodects" >
	<h1>Our Products </h1>
	        <c:forEach var="project" items="${projects}">
        <div class="imgDiv">
   <div>
    <a href="prodect/${project.id}"><img class="img" src="${project.img}"></a>
    <a href="prodect/1"><p>${project.name}</p></a>
   </div> 
      </div>
      </c:forEach>
  </div>



<br>

 <div class="footer"> 
      <p>Contact us</p>
      <p>info@Tawazun.com</p>
       <p>+9662134561</p>
    </div>


</body>
</html>