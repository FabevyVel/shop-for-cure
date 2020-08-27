
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import = "java.io.*,java.util.*" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Admin</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <style>
        <%@include file="css/main.css" %>
    </style>
</head>
<body>
    <div class="row">
        <div class="col-md-2 admin-nav">
            <nav class="nav flex-column">
                <a class="nav-link" href="add-disease">Add Disease</a>
                <a class="nav-link" href="add-fruit">Add Fruit</a>
                <a class="nav-link active" href="add-herb">Add Herb</a>
                <a class="nav-link" href="add-remedy">Add Remedy</a>
                <a href="logOut">LogOut</a>
            </nav>
        </div>
        <div class="right-side-page col-md-10">
                <form:form id="addHerbForm" modelAttribute="herb" action="addHerb" method="post">
                    <div class="form-group row">
                        <div class="col-md-3 text-right">
                            <form:label path="herbName">Herb Name: </form:label>
                        </div>
                        <div class="col-md-9">
                            <form:input path="herbName" name="herbName" id="herbName" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-3 text-right">
                            <form:label path="herbDescription">Herb Description: </form:label>
                        </div>
                        <div class="col-md-9">
                            <form:input path="herbDescription" name="herbDescription" id="herbDescription" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-3 text-right">
                            <form:label path="herbQuantity">Herb Quantity: </form:label>
                        </div>
                        <div class="col-md-9">
                            <form:input path="herbQuantity" name="herbQuantity" id="herbQuantity" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-md-3 text-right">
                            <form:label path="herbCost">Herb Cost: </form:label>
                        </div>
                        <div class="col-md-9">
                            <form:input path="herbCost" name="herbCost" id="herbCost" />
                        </div>
                    </div>
                    <div class="button-container offset-md-3">
                        <form:button class="btn-outline-primary" id="submit" name="submit">Add Herb</form:button>
                    </div>
                    <c:if test = "${message != null}">
                        <div class="alert alert-danger" role="alert">${message}</div>
                    </c:if>
                </form:form>
            </div>
        </div>
    </div>
</body>
</html>
