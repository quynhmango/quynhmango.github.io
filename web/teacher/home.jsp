<%-- 
    Document   : home
    Created on : Oct 13, 2022, 11:37:23 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style><%@include file="../css/login.css"%></style>
        <title>Home</title>
    </head>
    <body>
        <div class="header">
            <div class="header-left">
                <a href="test_polls.jsp" class="logo">Show-activity</a>
                <a href="vote.jsp">View-attendance</a>
                <!--<a href="teacher/create.jsp">Student-Department</a>-->
                <a href="list-timetable">Schedule</a>
                <a href="list-department.jsp">List Teacher</a>
            </div>
            <div class="header-right">
                <a id="myBtn">Login</a>
            </div>
        </div>
        <div class="container">

            <div class="modal fade" id="myModal" role="dialog">

                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header" style="padding:35px 50px;">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
                        </div>
                    </div>
                </div>

            </div>
            <div class="modal-body" style="padding:40px 50px;">
                <form  action="polls.jsp" >
                    <div class="form-group">
                        <label for="usrname"><span class="glyphicon glyphicon-user"></span> Alias:</label>
                        <input type="text" class="form-control" name="username" id="username" placeholder="Enter email or name account">
                    </div>
                    <div class="form-group">
                        <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password:</label>
                        <input type="text" class="form-control" id="password" placeholder="Enter password">
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox" value="" checked>Remember me</label>
                    </div>
                    <input type="submit" onclick="validate()" style="width: 2.5cm"  id="submit" value="Sign in" class="btn btn-success btn-block"/>
                </form>
            </div>


        </div>
        <script src="../js/login.js"></script>
    </body>
</html>
