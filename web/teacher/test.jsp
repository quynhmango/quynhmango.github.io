
<%-- 
    Document   : list-timetable
    Created on : Oct 29, 2022, 2:52:07 PM
    Author     : ASUS
--%>

<%@page import="java.util.List"%>
<%@page import="model.Subject"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style><%@include file="../css/list.css"%></style>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <title>List</title>
    </head>
    <body>

        <%
            List<Subject> list = new ArrayList<Subject>();
            if (request.getAttribute("list-timetable") != null) {
                list = (List<Subject>) request.getAttribute("list-timetable");
            }


        %>
        ${requestScope.ses.id}, class: ${requestScope.ses.group.name} 
        <br/>
        Subject: ${requestScope.ses.group.subject.name}
        Room: ${requestScope.ses.room.name}, Time: ${requestScope.ses.date} ${requestScope.ses.slot.description}
        <br/>
        Attended: ${requestScope.ses.attanded?"Yes":"No"}

        <form action="takeatt" method="POST">
            <div class="header">
                <div class="header-left">
                    <a href="polls.jsp" class="logo">Show-activity</a>
                    <a href="vote.jsp">View-attendance</a>
                    <a href="list-timetable">Schedule</a>
                    <a href="list-department.jsp">List Teacher</a>
                </div>
                <div class="header-right">
                    <a href="home.jsp">Logout</a>
                </div>
            </div>
            <div class="body">
                <div class="btn-group">
                    <label for="cars">Campus</label>
                    <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                        <option value="FU-HL">FU-HL</option>
                        <option selected="selected" value="FU-DN">FU-DN</option>
                    </select>
                    <br>           
                </div>
                <div class="form-group">
                    <label for="lecture"><span class="glyphicon glyphicon-user"></span> Lecture:</label>
                    <input type="text" class="form-control" name="lecture" id="lecture" placeholder="sonnt5">
                    <button type="button" class="btn btn-primary"
                            style="color: white; background-color: rgb(15, 114, 196);">View</button>    
                </div>
                WEEK_____<t><label for="cars">  FROM: </label>
                    <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                        <option selected="selected" value="41">10/10</option>
                        <option value="42">17/10</option>
                        <option value="43">24/10</option>
                        <option value="44">31/10</option>
                    </select>
                    <label for="cars">TO </label>
                    <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                        <option selected="selected" value="41">10/10</option>
                        <option value="42">23/10</option>
                        <option value="43">30/10</option>
                        <option value="44">06/11</option>
                    </select>
                    
                    <input type="submit" value="SEARCH" name="SEARCH" />



                    <table class="table" style="margin-top: 5%;">
                        <tr>
                            <th>
                                <label for="cars">YEAR</label>
                                <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                                    <option value="2021">2021</option>
                                    <option selected="selected" value="2022">2022</option>
                                </select>
                                <br>

                            </th>
                            <th>MON</th>
                            <th>TUE</th>
                            <th>WED</th>
                            <th>THUR</th>
                            <th>FRI</th>
                            <th>SAT</th>
                            <th>SUN</th>
                        </tr>
                        <input type="hidden" name="sesid" value="${param.id}"/>
                        <table border="1px">
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
                                </tr>  
                            </c:forEach>
                        </table>
                        <input type="submit" value="Save"/>

                    </table>
            </div>
            <script src="../js/list.js"></script>
        </form>
    </body>
</html>
