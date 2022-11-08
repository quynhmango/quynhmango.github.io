<%-- 
    Document   : ActivityDetail
    Created on : Nov 5, 2022, 4:51:20 PM
    Author     : ASUS
--%>

<%@page import="model.Lecturer"%>
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
        <title>Activity Detail</title>
    </head>
    <body>
        <%
    List<Subject> list = new ArrayList<Subject>();
    if (request.getAttribute("list") != null) {
        list = (List<Subject>) request.getAttribute("list");
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
                <h1>Activity detail</h1>
                <div class="form-group" name ="view Activity detail">
                    <div class="form-group col-md-6">
                        <table class="table table-bordered" border="2px">
                            <tr>
                                <td>Date</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Slot</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Student group</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Instructor</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Course</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Course session number:</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Campus/Programme:</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Attendance:</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Recoder </td>
                                <c:forEach items="${requestScope.dates}" var="d">
                                    <td>${d}<br/>${helper.getDayNameofWeek(d)}</td>
                                <fmt:formatDate type="both" value="${d}" />  
                            </c:forEach>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
