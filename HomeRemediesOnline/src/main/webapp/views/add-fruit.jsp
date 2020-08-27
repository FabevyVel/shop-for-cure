
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import = "java.io.*,java.util.*" %>
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
            <a class="nav-link active" href="add-fruit">Add Fruit</a>
            <a class="nav-link" href="add-herb">Add Herb</a>
            <a class="nav-link" href="add-remedy">Add Remedy</a>
        </nav>
    </div>
    <div class="right-side-page col-md-10">
            <form:form id="addFruitForm" modelAttribute="fruit" action="addFruit" method="post">
                <div class="form-group row">
                    <div class="col-md-3 text-right">
                        <form:label path="fruitName">Fruit Name: </form:label>
                    </div>
                    <div class="col-md-9">
                        <form:input path="fruitName" name="fruitName" id="fruitName" />
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-md-3 text-right">
                        <form:label path="fruitDescription">Fruit Desc: </form:label>
                    </div>
                    <div class="col-md-9">
                        <form:input path="fruitDescription" name="fruitDescription" id="fruitDescription" />
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-md-3 text-right">
                        <form:label path="fruitQuantity">Fruit Quantity: </form:label>
                    </div>
                    <div class="col-md-9">
                        <form:input path="fruitQuantity" name="fruitQuantity" id="fruitQuantity" />
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-md-3 text-right">
                        <form:label path="fruitCost">Fruit Cost: </form:label>
                    </div>
                    <div class="col-md-9">
                        <form:input path="fruitCost" name="fruitCost" id="fruitCost" />
                    </div>
                </div>
                <div class="button-container offset-md-3">
                    <form:button class="btn-outline-primary" id="Submit" name="Submit">Submit</form:button>
                </div>
            </form:form>
    </div>
</div>
</body>
</html>
