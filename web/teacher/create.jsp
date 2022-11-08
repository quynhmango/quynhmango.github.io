<%-- 
    Document   : create
    Created on : Oct 13, 2022, 10:06:00 PM
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
                <h1>Single activity Attendance</h1>
                <h5>Attendance to PRF192 with lecture SonNT5 ar slot 1 on Wednesday 19/01/2022 Spring2022 in room BE-301 at FU-HL</h5>
            </div>
            <table class="table" style="margin-top: 5%;">
                <tr>
                    <th>CAMPUS</th>
                    <th>TERM</th>
                    <th>DEPARTMENT</th>
                    <th>COURSE</th>
                    <th>GROUP</th>
                </tr>
                <tr>
                    <th>FU-HL</th>
                    <td>Spring2022</td> 
                    <td>Computer Fundamental</td>
                    <td>Data Structures and Algorithms(CSD201)</td>
                    <td>AI1604  AI1605</td>
                </tr>
                <tr>
                    <td>..</td> 
                    <td>..</td> 
                    <td>..</td>
                    <td>Web Application</td>
                    <td>AI1604  AI1605</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td> 
                    <td></td>
                    <td>Introduction to Database</td>
                    <td>AI1604  AI1605</td>
                </tr>

            </table>
            <h5>... then see student list(Export data)</h5>
            <table>
                <table class="table" style="margin-top: 5%;">
                    <tr>
                        <th>INDEX</th>
                        <th>IMAGE</th>
                        <th>MEMBER</th>
                        <th>CODE</th>
                        <th>SURNAME</th>
                        <th>MIDDLENAME</th>
                        <th>GIVENNAME</th>
                    </tr>
                    <tr>                   
                        <td>1</td> 
                        <td>...</td>
                        <td>MaiHA1700397<br/>View grade</td>
                        <td>HE140094</td>
                        <td>Nguyen</td> 
                        <td>Nhu</td>
                        <td>Mai</td>
                    </tr>
                    <tr>                   
                        <td>1</td> 
                        <td>...</td>
                        <td>HoaNNHE140098<br/>View grade</td>
                        <td>HE140098</td>
                        <td>Nguyen</td> 
                        <td>Nhu</td>
                        <td>Hoa</td>
                    </tr>
                    <tr>                   
                        <td>1</td> 
                        <td>...</td>
                        <td>HuyenNNHE140099<br/>View grade</td>
                        <td>HE140099</td>
                        <td>Nguyen</td> 
                        <td>Nhu</td>
                        <td>Huyen</td>
                    </tr>
                </table>
        </div>
        <script src="../js/list.js"></script>

    </body>
</html>
