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
    <h2 class="mb-0 mt-5"><small>Remedial fruits for Disease ${searchContent.searchTerm}</small></h2>
    <br>
    <form:form method="post" action="addTocart" modelAttribute="remedy">
    <div class="row">
      <c:forEach items="${remedy.fruitList}" var="fruit" varStatus="status">
        <div class="col-lg-4 col-sm-6 mb-4">
          <h3 class="mt-0 mb-2">${fruit.fruitName}</h3>
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">${fruit.fruitName}</a>
              </h4>
              <p class="card-text">${fruit.fruitDescription}</p>
              <p class="card-text">Price/Kg : ${fruit.fruitCost}</p>
            </div>
            <div class="card-footer">
              <label for="">Qty in kg</label>
              <input type="text" name="" id="" />
              <input type="button" class="btn btn-primary" value="Add to cart">
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
    </form:form>

    <h2 class="mb-0 mt-5"><small>Remdial herbs for Disease ${searchContent.searchTerm}</small></h2>
    <br>
    <form:form method="post" action="addTocart" modelAttribute="remedy">
    <div class="row">
      <c:forEach items="${remedy.herbList}" var="herb" varStatus="status">
        <div class="col-lg-4 col-sm-6 mb-4">
          <h3 class="mt-0 mb-2">${herb.herbName}</h3>
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
            <div class="card-body">
              <h4 class="card-title">
                <a href="#">${herb.herbName}</a>
              </h4>
              <p class="card-text">${herb.herbDescription}</p>
            </div>
            <div class="card-footer">
              <label for="">Qty in Kg</label>
              <input type="text" name="" id="t" />
              <input type="button" class="btn btn-primary" value="Add to cart">
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
    </form:form>
<%--      <div class="col-lg-4 col-sm-6 mb-4">--%>
<%--        <div class="card h-100">--%>
<%--          <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>--%>
<%--          <div class="card-body">--%>
<%--            <h4 class="card-title">--%>
<%--              <a href="#">Result Two</a>--%>
<%--            </h4>--%>
<%--            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>--%>
<%--          </div>--%>
<%--          <div class="card-footer">--%>
<%--            <label for="">Qty in Kg</label>--%>
<%--            <input type="text" name="" id="" />--%>
<%--            <input type="button" class="btn btn-primary" value="Add to cart">--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--      <div class="col-lg-4 col-sm-6 mb-4">--%>
<%--        <div class="card h-100">--%>
<%--          <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>--%>
<%--          <div class="card-body">--%>
<%--            <h4 class="card-title">--%>
<%--              <a href="#">Result Three</a>--%>
<%--            </h4>--%>
<%--            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos quisquam, error quod sed cumque, odio distinctio velit nostrum temporibus necessitatibus et facere atque iure perspiciatis mollitia recusandae vero vel quam!</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--      <div class="col-lg-4 col-sm-6 mb-4">--%>
<%--        <div class="card h-100">--%>
<%--          <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>--%>
<%--          <div class="card-body">--%>
<%--            <h4 class="card-title">--%>
<%--              <a href="#">Result Four</a>--%>
<%--            </h4>--%>
<%--            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--      <div class="col-lg-4 col-sm-6 mb-4">--%>
<%--        <div class="card h-100">--%>
<%--          <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>--%>
<%--          <div class="card-body">--%>
<%--            <h4 class="card-title">--%>
<%--              <a href="#">Result Five</a>--%>
<%--            </h4>--%>
<%--            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--      <div class="col-lg-4 col-sm-6 mb-4">--%>
<%--        <div class="card h-100">--%>
<%--          <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>--%>
<%--          <div class="card-body">--%>
<%--            <h4 class="card-title">--%>
<%--              <a href="#">Result Six</a>--%>
<%--            </h4>--%>
<%--            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque earum nostrum suscipit ducimus nihil provident, perferendis rem illo, voluptate atque, sit eius in voluptates, nemo repellat fugiat excepturi! Nemo, esse.</p>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
    <!-- /.row -->
  
  </div>
  <!-- /.container -->

</body>
</html>
