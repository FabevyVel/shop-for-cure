<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css">
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
            <a class="nav-link" href="add-herb">Add Herb</a>
            <a class="nav-link active" href="add-remedy">Add Remedy</a>
        </nav>
    </div>
    <div class="right-side-page col-md-10">
        <form:form id="addRemedyForm" modelAttribute="dataList" action="addRemedy" method="post">
            <div class="form-group">
                <label>Select Disease:</label>
                <select path="diseaseList" name="selectedDiseases" id="multiple-diseases" >
                    <c:forEach items="${dataList.diseaseList}" var="disease">
                        <option value="${disease.diseaseId}">
                                ${disease.diseaseName}
                        </option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label>Select Fruits:</label>
                <select path="fruitList" name="selectedFruits" id="multiple-fruits" multiple="multiple">
                    <c:forEach items="${dataList.fruitList}" var="fruit">
                        <option value="${fruit.fruitId}">
                                ${fruit.fruitName}
                        </option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label>Select Herbs:</label>
                <select path="herbList" name="selectedHerbs" id="multiple-herbs" multiple="multiple">
                    <c:forEach items="${dataList.herbList}" var="herb">
                        <option value="${herb.herbId}">
                                ${herb.herbName}
                        </option>
                    </c:forEach>
                </select>
            </div>
            <div class="col-lg-12 button-container">
                <div class="login-btm login-button text-center">
                    <form:button id="submit" name="submit" class="btn btn-outline-primary">Add Remedies</form:button>
                </div>
            </div>
        </form:form>
    </div>
    </div>
</div>
<script>
    <%@include file="js/main.js" %>
</script>
</body>
</html>
