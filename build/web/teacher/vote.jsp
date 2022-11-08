<%-- 
    Document   : vote
    Created on : Oct 13, 2022, 10:18:53 PM
    Author     : ASUS
--%>

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
        <div class="header">
            <div class="header-left">
                <a href="test_polls.jsp" class="logo">Show-activity</a>
                <a href="vote.jsp">View-attendance</a>
                <!--<a href="teacher/create.jsp">Student-Department</a>-->
                <a href="list.jsp">Schedule</a>
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
                <h1>View attendance for Nguyễn AAA TTT (TANHE140098)</h1>

                <h5>Campus</h5>
                <select name="Campus">
                    <option>FU-HL</option>
                    <option>FU-DN</option>
                    <option>FU-CT</option>
                </select>
                <h5>Term</h5>
                <select name="Term">
                    <option>SP22</option>
                    <option>Su22</option>
                    <option>FA22</option>
                </select>
               <h5>Course</h5>
                <select name="Course">
                    <option>DBS</option>
                    <option>DBI</option>
                    <option>Java Application</option>
                </select>
               <input type="submit" value="SEARCH" name="SEARCH" />
            </div>
            <table class="table" style="margin-top: 5%;">
                <tr>

                    <th>NO</th>
                    <th>DATE</th>
                    <th>SLOT</th>
                    <th>ROOM</th>
                    <th>LECTURE</th>
                    <th>GROUP NAME</th>
                    <th>ATTENDANCE<br> STATUS</th>
                    <th>LECTURES'S<br> COMMENT</th>
                </tr>
                <tr>
                    
                    <td>1</td>
                    <td>Monday 05/09/2022</td>
                    <td>6_(16:10-17:40)</td>
                    <td>AL-L502</td>
                    <td>AnhHT68</td>
                    <td>IA1406</td>
                    <td>Present</td>
                    <td>...</td>
                </tr>
                <tr>
                    
                    <td>1</td>
                    <td>Monday 05/09/2022</td>
                    <td>6_(16:10-17:40)</td>
                    <td>AL-L502</td>
                    <td>AnhHT68</td>
                    <td>IA1406</td>
                    <td>Present</td>
                    <td>...</td>
                </tr>
                <tr>
                    
                    <td>1</td>
                    <td>Monday 05/09/2022</td>
                    <td>6_(16:10-17:40)</td>
                    <td>AL-L502</td>
                    <td>AnhHT68</td>
                    <td>IA1406</td>
                    <td>Present</td>
                    <td>...</td>
                </tr>

            </table>
            <a>ABSENT: 3% ABSENT SO FAR (1 ABSENT ON 30 TOTAL).</a>
        </div>
        <script src="../js/list.js"></script>

    </body>
</html>
