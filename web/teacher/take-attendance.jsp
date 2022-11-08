<%-- 
    Document   : attend
    Created on : Oct 13, 2022, 8:31:12 PM
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
        <title>Take Attendance</title>
    </head>
    <body>
        <div class="header">
            <div class="header-left">
                <a href="take-attendance" class="logo">Take Attendance</a>
                <a href="vote.jsp">View-attendance</a>
                <a href="ScheduleOfWeek">Schedule</a>
                <a href="list-department.jsp">List Teacher</a>
            </div>
            <div class="header-right">
                <a href="home.jsp">Logout</a>
            </div>
        </div>
        <div class="container">
            <div class="form-group">
                <%--
        ${requestScope.ses.id}, class: ${requestScope.ses.group.name} 
        <br/>
        Subject: ${requestScope.ses.group.subject.name}
        Room: ${requestScope.ses.room.name}, Time: ${requestScope.ses.date} ${requestScope.ses.slot.description}
        <br/>
        Attended: ${requestScope.ses.attanded?"Yes":"No"}
                --%>
                <form action="takeatt" method="POST">
                    <input type="hidden" name="sesid" value="${param.id}"/>
                    <table table class="table table-bordered" border="2px">
                        <tr>
                            <td>Student Id</td>
                            <td>Student Name</td>
                            <td>Present</td>
                            <td>Absent</td>
                            <td>Description</td>
                        </tr>
                        <c:forEach items="${requestScope.atts}" var="a">
                            <tr>
                                <td>${a.student.id}
                                    <input type="hidden" value="${a.student.id}" name="stdid"/>
                                </td>
                                <td>${a.student.name}</td>
                                <%--
                                <td><input type="radio" 
                                           <c:if test="${a.present}">
                                           checked="checked" 
                                           </c:if>
                                           name="present${a.student.id}" value="present" /></td>
                                <td><input type="radio"
                                           <c:if test="${!a.present}">
                                           checked="checked" 
                                           </c:if>
                                           name="present${a.student.id}" value="absent" /></td>
                                <td><input type="" value="${a.description}" name="description${a.student.id}"></td>
                                --%>
                            </tr>  
                        </c:forEach>
                    </table>
                    <input type="submit" value="Save"/>
                </form>            
            </div>            
        </div>       
    </body>
</html>
