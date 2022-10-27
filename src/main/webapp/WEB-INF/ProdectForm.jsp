<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <form:form action="newprodect" method="post" modelAttribute="newPro">
        <div class="form-group">
            <label>Name:</label>
            <br>
            <form:input path="name" class="form-control" />
            <form:errors path="name" class="text-danger" />
        </div>
        <br>
        <div class="form-group">
            <label>Type:</label>
            <br>
            <form:input path="type" class="form-control" />
            <form:errors path="type" class="text-danger" />
        </div>
        <br>
        <div class="form-group">
            <label>Price:</label>
            <br>
            <form:input path="price" class="form-control" />
            <form:errors path="price" class="text-danger" />
        </div>
        <br>
        <div class="form-group">
            <label>Description:</label>
            <br>
            <form:input path="description" class="form-control" />
            <form:errors path="description" class="text-danger" />
        </div>
                <div class="form-group">
            <label>img:</label>
            <br>
            <form:input path="img" class="form-control" />
            <form:errors path="img" class="text-danger" />
        </div>
        <input type="submit" value="create" class="btn btn-success" />
    </form:form>
</body>
</html>