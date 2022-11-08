<%-- 
    Document   : login
    Created on : Nov 5, 2022, 2:45:14 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="helper" class="util.DateTimeHelper"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Subject"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style><%@include file="../css/list.css"%></style>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>Home</title>
    </head>
    <body>
        <%

            String mess = "";
            if (request.getAttribute("mess") != null) {
                //object --> String
                mess = request.getAttribute("mess").toString();
            }

        %>
        <div class="header">
            <div class="header-left">
                <a href="take-attendance" class="logo">Take Attendance</a>
                <a href="vote.jsp">View-attendance</a>
                <a href="list-timetable">Schedule</a>
                <a href="list-department.jsp">List Teacher</a>
            </div>
            <div class="header-right">
                <a href="login">Logout</a>
            </div>
        </div>
        <div class="container">
            <div class="form-group">
                <div class="modal-body" style="padding:40px 50px;">
                    <form  action="login" method="GET"  >
                        <div class="form-group">
                            <label for="username"><span class="glyphicon glyphicon-user"></span> Alias:</label>
                            <input type="text" class="form-control" name="username" id="username" placeholder="Enter email or name account">
                        </div>
                        <div class="form-group">
                            <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password:</label>
                            <input type="text" class="form-control" name="password" id="password" placeholder="Enter password">
                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox" value="" checked>Remember me</label>
                        </div>
                        <input type="submit" onclick="validate()" id="submit" value="Log in" class="btn btn-success btn-block"/>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
