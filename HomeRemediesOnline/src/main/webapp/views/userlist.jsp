<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Admin</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        <%@include file="css/common.css" %>
        <%@include file="css/main.css" %>
    </style>
</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-light navbar-fixed-top">
    <a class="navbar-brand" href="search">Shop For Cure</a>
    <div class="nav navbar-nav navbar-right">
        <a class="username">Hi ${sessionScope.username}</a>
        <a class="" href="logOut">LogOut</a>
        <a class="go-to-user-btn" href="search">Go to User Flow</a>
    </div>
</nav>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2 admin-nav">
            <nav class="nav flex-column">
                <a class="nav-link active" href="add-disease">Add Disease</a>
                <a class="nav-link" href="add-fruit">Add Fruit</a>
                <a class="nav-link" href="add-herb">Add Herb</a>
                <a class="nav-link" href="add-remedy">Add Remedy</a>
                <a class="nav-link" href="user-list">Users</a>
            </nav>
        </div>
        <div class="col-md-10 right-side-page">
            <div class="container">
                <h3>User Details</h3>
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Edit</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${memberList}" var="member">
                        <tr>
                            <td>${member.userName}</td>
                            <td>${member.userEmail}</td>
                            <td><a href="edit-user?id=${member.userId}">Edit</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
