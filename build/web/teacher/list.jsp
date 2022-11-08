<%-- 
    Document   : list
    Created on : Oct 13, 2022, 11:30:45 AM
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
                <tr>
                    <th>Slot 1</th>
                    <td><a href="polls.jsp">PRJ301</a> <br> at BE-301<br>(Attend)</td>                    
                    <td><a href="https://xuanthulab.net">PRJ301</a> <br> at BE-301<br>(Attend)</td> 
                    <td><a href="https://xuanthulab.net">PRJ301</a> <br> at BE-301<br>(Attend)</td>                    
                    <td><a href="https://xuanthulab.net">PRJ301</a> <br> at BE-301<br>(Attend)</td> 
                    <td><a href="https://xuanthulab.net">PRJ301</a> <br> at BE-301<br>(Attend)</td>                    
                    <td><a href="https://xuanthulab.net">PRJ301</a> <br> at BE-301<br>(Attend)</td> 

                    <!--                    <td>
                                            <button style="border-radius: 5px;">View results</button>
                                            <button style="border-radius: 5px;">Close poll</button>
                                            <input type="button" onclick="deleteConfirm()" style="border-radius: 5px;" value="Delete"/>
                                        </td>-->
                </tr>
                <tr>
                    <th>Slot 2</th>
                    <td><a href="list-department.jsp">PRJ301</a> <br> at BE-301<br>(Attend)</td>  
                    <td>...</td>
                    <td><a href="polls.jsp">PRJ301</a> <br> at BE-301<br>(Attend)</td> 
                    <td>...</td>
                    <td><a href="polls.jsp">PRJ301</a> <br> at BE-301<br>(Attend)</td> 
                    <td>..</td>
                    <td>...</td>
                </tr>
                <tr>
                    <th>Slot 3</th>
                    <td><a href="polls.jsp">PRJ301</a> <br> at BE-301<br>(Attend)</td>  
                    <td>...</td>
                    <td><a href="polls.jsp">PRJ301</a> <br> at BE-301<br>(Attend)</td> 
                    <td>...</td>
                    <td><a href="polls.jsp">PRJ301</a> <br> at BE-301<br>(Attend)</td> 
                    <td>..</td>
                    <td>...</td>
                </tr>
                                <tr>
                    <th>Slot 4</th>
                    <td><a href="polls.jsp">PRJ301</a> <br> at BE-301<br>(Attend)</td>  
                    <td>...</td>
                    <td><a href="polls.jsp">PRJ301</a> <br> at BE-301<br>(Attend)</td> 
                    <td>...</td>
                    <td><a href="polls.jsp">PRJ301</a> <br> at BE-301<br>(Attend)</td> 
                    <td>..</td>
                    <td>...</td>
                </tr>
                                <tr>
                    <th>Slot 5</th>
                    <td><a href="polls.jsp">PRJ301</a> <br> at BE-301<br>(Attend)</td>  
                    <td>...</td>
                    <td><a href="polls.jsp">PRJ301</a> <br> at BE-301<br>(Attend)</td> 
                    <td>...</td>
                    <td><a href="polls.jsp">PRJ301</a> <br> at BE-301<br>(Attend)</td> 
                    <td>..</td>
                    <td>...</td>
                </tr>
                                <tr>
                    <th>Slot 6</th>
                    <td><a href="polls.jsp">PRJ301</a> <br> at BE-301<br>(Attend)</td>  
                    <td>...</td>
                    <td><a href="polls.jsp">PRJ301</a> <br> at BE-301<br>(Attend)</td> 
                    <td>...</td>
                    <td><a href="polls.jsp">PRJ301</a> <br> at BE-301<br>(Attend)</td> 
                    <td>..</td>
                    <td>...</td>
                </tr>
                                <tr>
                    <th>Slot 7</th>
                    <td>...</td>
                    <td>...</td>
                    <td>...</td>
                    <td>...</td>
                    <td>...</td>
                    <td>...</td>
                    <td>..</td>       
                </tr>
                                                <tr>
                    <th>Slot 8</th>
                    <td>...</td>
                    <td>...</td>
                    <td>...</td>
                    <td>...</td>
                    <td>...</td>
                    <td>...</td>
                    <td><a href="polls.jsp">PRJ301</a> <br> at BE-301<br>(Attend)</td>        
                </tr>
            </table>
        </div>
        <script src="../js/list.js"></script>

    </body>
</html>
