<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page session = "false" %>
<%@ page import = "java.io.*,java.util.*" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
            <style>
                <%@include file="css/style.css" %>
            </style>
            <title>Login</title>
        </head>
        <body>
            <form:form id="loginForm" modelAttribute="member" action="loginProcess" method="post">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-8 offset-lg-3 offset-md-2 login-box">
                        <div class="col-lg-12 login-key">
                            <i class="fa fa-key" aria-hidden="true"></i>
                        </div>
                        <div class="col-lg-12 login-title">
                            User Login
                        </div>

                        <c:if test = "${message != null}">
                            <div class="alert alert-danger" role="alert">${message}</div>
                        </c:if>
                        <div class="col-lg-12 login-form">
                            <div class="col-lg-12 login-form">
                                <div class="form-group">

                                    <form:label path="userName"  cssClass="form-control-label">Username: </form:label>
                                    <form:input path="userName" name="username" id="username"  cssClass="form-control" />

                                </div>
                                <div class="form-group">

                                    <form:label path="password" cssClass="form-control-label">Password:</form:label>
                                    <form:password path="password" name="password" id="password"  cssClass="form-control" />
                                </div>

                                <div class="col-lg-12 loginbttm">
                                    <div class="login-btm login-button text-center">
                                        <form:button id="login" name="login" class="btn btn-outline-primary">Login</form:button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </form:form>

            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        </body>
    </html>
