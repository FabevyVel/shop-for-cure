<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page session = "true" %>
<%@ page import = "java.io.*,java.util.*" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

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
  <nav class="navbar navbar-light static-top">
      <a class="navbar-brand" href="search">Shop For Cure</a>
      <div class="nav navbar-nav navbar-right">
          <a class="username">Hi ${sessionScope.username}</a>
          <a class="" href="logOut">LogOut</a>
      </div>
  </nav>
  <header class="masthead text-white text-center">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-xl-12 mx-auto">
          <h1 class="mb-9">Let Fruits &amp; Herbs be the CURE for any Disease.</h1>
        </div>
        <div class="col-md-10 col-lg-12 col-xl-12 mx-auto">
          <form:form id="searchForm" modelAttribute="searchContent" action="searchInfo" method="post">
            <div class="form-row">
                <div class="col-12 col-md-7 mb-2 mb-md-0">
                  <form:input path="searchTerm" type="text" class="form-control form-control-lg" placeholder="What are you looking for?"/>
                </div><div class="col-12 col-md-3 mb-2 mb-md-0">
                  <form:select path="category" name="category" id="" class="form-control form-control-lg">
                      <form:option value="Disease">Disease</form:option>
                      <form:option value="Fruit">Fruit</form:option>
                      <form:option value="Herb">Herb</form:option>
                  </form:select>
                </div>
                
              <div class="col-12 col-md-2">
                <button type="submit" class="btn-block btn-lg btn btn-primary btn-outline-primary">Search</button>
              </div>
            </div>

              <c:if test = "${searchResult != null}">
                  <div class="alert alert-danger" role="alert">${searchResult}</div>
              </c:if>
          </form:form>
        </div>
      </div>
    </div>
  </header>
<script>
</script>
</body>
</html>
