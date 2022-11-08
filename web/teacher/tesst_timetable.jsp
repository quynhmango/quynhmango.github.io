<%-- 
    Document   : list-timetable
    Created on : Oct 29, 2022, 2:52:07 PM
    Author     : ASUS
bai nay dung roi dung dong vao please
--%>
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
        <title>List Timetable</title>
    </head>
    <body>
        <%
            List<Subject> list = new ArrayList<Subject>();
            if (request.getAttribute("list-timetable") != null) {
                list = (List<Subject>) request.getAttribute("list-timetable");
            }
        %>
        <form action="action" method="POST">
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

            <div class="container">                
                <div class="btn-group">
                    <label for="campus">Campus</label>
                    <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                        <option value="FU-HL">FU-HL</option>
                        <option selected="selected" value="FU-DN">FU-DN</option>
                    </select>
                </div>
                <div class="form-group">          
                    <div class="form-group col-md-2">
                        <label for="lecture"><span class="glyphicon glyphicon-user">Lecture</span></label>
                    </div> 
                    <div class="col-md-4">
                        <input type="text" class="form-control" id="lecture" placeholder="sonnt5">
                    </div>
                    <div class="col-md-2">
                        <button type="submit" class="btn btn-primary mb-2">View</button>
                    </div>  
                </div>
                <div class="form-group">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Year</th>
                                <th>MON</th>
                                <th>TUE</th>
                                <th>WED</th>
                                <th>THUR</th>
                                <th>FRI</th>
                                <th>SAT</th>
                                <th>SUN</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for (Subject subject : list) {
                            %>
                            <tr>
                                <td>Slot 1</td>
                                <td><%=subject.getName()%></td>
                                <td><%=subject.getName()%></td>
                                <td></td>
                                <td><%=subject.getName()%></td>
                                <td><%=subject.getName()%></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Slot 2</td>
                                <td><%=subject.getName()%></td>
                                <td><%=subject.getName()%></td>
                                <td><%=subject.getName()%></td>
                                <td><%=subject.getName()%></td>
                                <td><%=subject.getName()%></td>
                                <td></td>
                                <td></td>
                            </tr>

                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </form>
    </body>
</html>