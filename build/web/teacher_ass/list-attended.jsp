<%-- 
    Document   : list
    Created on : Nov 8, 2022, 11:31:26 PM
    Author     : ASUS
--%>

<%@page import="model.User"%>
<%@page import="model.Student"%>
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
        <title>List Student Attended</title>
    </head>
    <body>
        <%--
        <div>
            <c:if test="${sessionScope.user != null}">
                ${sessionScope.user.username}
                <img src="image/male.png" alt="" width="50px" height="50px" />
            </c:if>
            <c:if test="${sessionScope.user == null}">
                <a>Login</a>
                <a>Register</a>
            </c:if>   
        </div>
        --%>
        <%
            List<Student> list = new ArrayList<Student>();
            if (request.getAttribute("list") != null) {
                list = (List<Student>) request.getAttribute("list");
            }
            User user = new User();
            if (request.getSession().getAttribute("user") != null) {
                user = (User) request.getSession().getAttribute("user");
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
                <table class="table table-bordered" border="2px">
                    <tr>
                        <td>Id</td>
                        <td>Student Name</td>
                        <td>Attend</td>
                    </tr>
                    <%                        
                        for (Student stu : list) {
                    %>
                    <tr>
                        <td><%=stu.getId()%></td>
                        <td><%=stu.getName()%></td>
                        <td></td>
                    </tr>

                    <%
                        }
                    %>
                </table>
            </div>
        </div>       
    </body>
</html>
