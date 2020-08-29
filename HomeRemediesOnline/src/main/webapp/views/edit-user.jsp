
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import = "java.io.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Admin</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
                    <a class="nav-link active" href="add-fruit">Add Fruit</a>
                    <a class="nav-link" href="add-herb">Add Herb</a>
                    <a class="nav-link" href="add-remedy">Add Remedy</a>
                    <a class="nav-link" href="user-list">Users</a>
                </nav>
            </div>
            <div class="right-side-page col-md-10">
                <form:form class="editForm" id="editUserForm" modelAttribute="member" action="updateUser" method="post">
                    <div class="form-group row">
                        <div class="col-md-3 text-right">
                            <form:label path="userName">User Name: </form:label>
                        </div>
                        <div class="col-md-9">
                            <form:input path="userName" name="userName" id="userName" required="true"/>
                        </div>
                        <div class="col-md-3 text-right">
                            <form:label path="userEmail">User Email: </form:label>
                        </div>
                        <div class="col-md-9">
                            <form:input path="userEmail" name="userEmail" id="userEmail" required="true"/>
                        </div>
                            <form:input path="userId" name="userId" id="userId" required="true" hidden="true" />
                        </div>
                    <div class="button-container offset-md-3">
                        <form:button class="btn-outline-primary" id="Submit" name="Submit">Submit</form:button>
                    </div>
                    <c:if test = "${message != null}">
                        <div class="message offset-md-3 alert alert-success mt-3" role="alert">${message}</div>
                    </c:if>
                </form:form>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>
</body>
</html>
