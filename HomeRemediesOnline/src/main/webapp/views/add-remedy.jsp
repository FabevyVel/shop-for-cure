<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Admin</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css">
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
                <a class="nav-link" href="add-disease">Add Disease</a>
                <a class="nav-link" href="add-fruit">Add Fruit</a>
                <a class="nav-link" href="add-herb">Add Herb</a>
                <a class="nav-link active" href="add-remedy">Add Remedy</a>
                <a class="nav-link" href="user-list">Users</a>
            </nav>
        </div>
        <div class="right-side-page col-md-10">
            <div class="addForm">
                <form:form id="addRemedyForm" modelAttribute="dataList" action="addRemedy" method="post">
                    <div class="form-group row">
                        <div class="col-md-3 text-right">
                            <label>Select Disease:</label>
                        </div>

                        <div class="col-md-9">
                            <form action="addRemedy" method="POST">
                                <select onchange="this.form.submit()" path="diseaseList" name="selectedDiseases"
                                        id="multiple-diseases" required="true">
                                    <c:forEach items="${dataList.diseaseList}" var="disease">
                                        <option value="${disease.diseaseId}">
                                                ${disease.diseaseName}
                                        </option>
                                    </c:forEach>
                                </select>
                            </form>
                        </div>
                    </div>
                    <form action="addRemedy" method="POST">
                        <div class="form-group row">
                            <div class="col-md-3 text-right">
                                <label>Select Fruits:</label>
                            </div>
                            <div class="col-md-9">
                                <select path="fruitList" name="selectedFruits" id="multiple-fruits" multiple="multiple">
                                    <c:forEach items="${dataList.fruitList}" var="fruit">
                                        <option value="${fruit.fruitId}">
                                                ${fruit.fruitName}
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-3 text-right">
                                <label>Select Herbs:</label>
                            </div>
                            <div class="col-md-9">
                                <select path="herbList" name="selectedHerbs" id="multiple-herbs" multiple="multiple">
                                    <c:forEach items="${dataList.herbList}" var="herb">
                                        <option value="${herb.herbId}">
                                                ${herb.herbName}
                                        </option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="button-container offset-md-3">
                            <form:button class="btn-outline-primary" id="submit" name="submit">Add Remedy</form:button>
                        </div>
                        <c:if test="${message != null}">
                            <div class="message offset-md-3 alert alert-success mt-3" role="alert">${message}</div>
                        </c:if>
                    </form>

                </form:form>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
<script>
    <%@include file="js/main.js" %>
</script>
</body>
</html>
