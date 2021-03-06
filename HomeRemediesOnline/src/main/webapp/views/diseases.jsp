<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page session = "false" %>
<%@ page import = "java.io.*,java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
    <style>
        <%@include file="css/common.css" %>
        <%@include file="css/style.css" %>
    </style>
</head>
<body>

<!-- Navigation -->
<nav class="navbar navbar-light navbar-fixed-top">
    <a class="navbar-brand" href="search">Shop For Cure</a>
    <div class="nav navbar-nav navbar-right">
        <a class="username">Hi ${sessionScope.username}</a>
        <a class="" href="logOut">LogOut</a>
    </div>
</nav>

<!-- Page Content -->
<div class="container">

    <!-- Page Heading -->
    <form:form modelAttribute="searchContent">
        <h2 class="mb-0 mt-5"><small>Search results for diseases: </small><strong>${searchContent.searchTerm}</strong></h2>
        <br>
    </form:form>
    <form:form method="post" action="" modelAttribute="diseaseList">
        <div class="row">
            <c:forEach items="${diseaseList}" var="diseaseItem" varStatus="status">
                <div class="col-lg-4 col-sm-6 mb-4">
                    <form:form method="get" action="get-info" modelAttribute="searchContent">
                        <div class="card h-100">
                            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="#">${diseaseItem.diseaseName}</a>
                                </h4>
                                <p class="card-text">${diseaseItem.diseaseDescription}</p>
                            </div>
                            <div class="card-footer">
                                <a href="get-info?searchTerm=${diseaseItem.diseaseName}&category=${searchContent.category}">
                                    Search for remedies</a>
<%--                                <input type="submit" class="btn btn-primary" value="Search for remedies"/>--%>
                            </div>
                        </div>
                    </form:form>
                </div>
            </c:forEach>
        </div>
    </form:form>
</div>
</body>
</html>
