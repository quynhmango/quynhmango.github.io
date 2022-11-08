<%-- 
    Document   : attend
    Created on : Oct 13, 2022, 8:31:12 PM
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
                <h1>Single activity Attendance</h1>
                <h5>Attendance to PRF192 with lecture SonNT5 ar slot 1 on Wednesday 19/01/2022 Spring2022 in room BE-301 at FU-HL</h5>
            </div>
            <table class="table" style="margin-top: 5%;">
                <tr>
                    <th>NO </th>
                    <th>GROUP</th>
                    <th>CODE</th>
                    <th>NAME</th>
                    <th>IMAGE</th>
                    <th>STATUS</th>
                    <th>COMMENT</th>
                    <th>TAKER</th>
                    <th>RECORD TIME</th>
                    <th>Thống kê</th>
                </tr>
                <tr>
                    <th>1</th>
                    <td>IOT1702</td> 
                    <td>HE140094</td>
                    <td>Nguyen AAA BBB</td>
                    <td>..</td>
                    <td>
                    Absent<input type="radio" name="attend" value="absent" checked="checked" />
                    Attend<input type="radio" name="attend" value="attend" />
                    </td>
                    <td>...</td>
                    <td>sonnt5</td>
                    <td>1/19/2022 8:54:00 AM</td>
                    <th>0%</th>
                </tr>
                <tr>
                    <th>1</th>
                    <td>IOT1702</td> 
                    <td>HE140099</td>
                    <td>Nguyen AAA DDD</td>
                    <td>..</td>
                    <td>
                    Absent<input type="radio" name="attend1" value="absent" checked="checked" />
                    Attend<input type="radio" name="attend1" value="attend" />
                    </td>
                    <td>...</td>
                    <td>sonnt5</td>
                    <td>1/19/2022 8:54:00 AM</td>
                    <th>10%</th>
                </tr>
                <tr>
                    <th>1</th>
                    <td>IOT1702</td> 
                    <td>HE140098</td>
                    <td>Nguyen AAA CCC</td>
                    <td>..</td>
                    <td>
                    Absent<input type="radio" name="attend2" value="absent" checked="checked" />
                    Attend<input type="radio" name="attend2" value="attend" />
                    </td>
                    <td>...</td>
                    <td>sonnt5</td>
                    <td>1/19/2022 8:54:00 AM</td>
                    <th>20%</th>
                </tr>

            </table>
            <td>
                <button style="border-radius: 5px;">View results</button>
                <button style="border-radius: 5px;">Save</button>
                <input type="button" onclick="deleteConfirm()" style="border-radius: 5px;" value="Cancel"/>
            </td>
        </div>
        <script src="../js/list.js"></script>

    </body>
</html>
