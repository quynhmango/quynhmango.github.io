<%-- 
    Document   : timetable
    Created on : Oct 15, 2022, 9:30:31 AM
    Author     : Ngo Tung Son
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
        <title>ScheduleOfWeek</title>
    </head>
    <body>
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
                <div class="form-group col-md-4">
                    Lecturer: <input type="text" readonly="readonly" value="${requestScope.lecturer.name}"/>              
                </div>
                <div class="col-md-8">
                    <form action="list-timetable" method="GET">
                        <input type="hidden" name="lid" value="${param.lid}"/>
                        From: <input type="date" name="from" value="${requestScope.from}"/>
                        To: <input type="date" name="to" value="${requestScope.to}"/>
                        <input type="submit"  value="View"/> 
                    </form>
                </div>                
            </div>
            <div class="form-group">
                <table class="table table-bordered" border="2px">
                    <tr>
                        <td> </td>
                        <c:forEach items="${requestScope.dates}" var="d">
                            <td>${d}<br/>${helper.getDayNameofWeek(d)}</td>
                            </c:forEach>
                    </tr>
                    <c:forEach items="${requestScope.slots}" var="slot">
                        <tr>
                            <td>${slot.description}</td>
                            <c:forEach items="${requestScope.dates}" var="d">
                                <td>
                                    <c:forEach items="${requestScope.sessions}" var="ses">
                                        <c:if test="${helper.compare(ses.date,d) eq 0 and (ses.timeslot.id eq slot.id)}">
                                            <a href="take-attendance?sid=${ses.id}">${ses.group.name}-${ses.group.subject.name}</a>
                                            <br/>
                                            ${ses.room.name}
                                            <c:if test="${ses.attandated}">
                                                <img src="../img/male-icon.png" alt=""/>
                                            </c:if>
                                            <c:if test="${!ses.attandated}">
                                                <img src="../img/female-icon.png" alt=""/>
                                            </c:if>
                                        </c:if>

                                    </c:forEach>
                                </td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </body>
</html>
