<%-- 
    Document   : list-department
    Created on : Oct 15, 2022, 11:04:04 AM
    Author     : ASUS
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head><meta http-equiv="X-UA-Compatible" content="IE=Edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" /><title>
            FPT University Academic Portal
        </title>
        <link rel="Stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css" type="text/css" />
        <link rel="Stylesheet" href="../Content/bootstrap.css" type="text/css" />
        <link rel="Stylesheet" href="../Content/bootstrap.min.css" type="text/css" />
        <link rel="Stylesheet" href="../Content/bootstrap-theme.min.css" type="text/css" />
        

        <style type="text/css">
            .style1 {
                font-weight: bold;
            }
        </style>

    </head>

    <body>
        <div class="container">

            <div class="row">

                <div class="col-md-8">

                    <h1><span>FPT University Academic Portal</span>
                    </h1>

                </div>
                <div class="col-md-4">
                    <table>
                        <tr>
                            <td colspan="2" class="auto-style1"><strong>FAP mobile app (myFAP) is ready at</strong></td>

                        </tr>
                        <tr>
                            <td><a href="https://apps.apple.com/app/id1527723314">
                                    <img src="https://fap.fpt.edu.vn/images/app-store.svg" style="width: 120px; height: 40px" alt="apple store" /></a></td>
                            <td><a href="https://play.google.com/store/apps/details?id=com.fuct">
                                    <img src="https://fap.fpt.edu.vn/images/play-store.svg" style="width: 120px; height: 40px" alt="google store" /></a></td>

                        </tr>
                    </table>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <form name="aspnetForm" method="post" action="./ActivityDetail.aspx?id=1009919" id="aspnetForm">
                        <div id="ctl00_divUser" style="float: right; margin-right: 16px;">
                            <a href="?view=user">
                                <span id="ctl00_lblLogIn" class="label label-success">quynhnnhe140094</span></a> | <a href="?logout=true" class="label label-success">logout</a> |
                            <span id="ctl00_lblCampusName" class="label label-success"> CAMPUS: FPTU-Hòa L?c</span>
                        </div>
                        <ol class="breadcrumb">
                            <li>
                                <span id="ctl00_lblNavigation"><a href='list.jsp'>Home</a>&nbsp;|&nbsp;<b>View</b></span></li>
                        </ol>
                        <table>
                            <tr style="border-bottom: 0 none">
                                <td>
                                    <div>

                                        <h2>
                                            Activity detail</h2>
                                        <center>
                                            <div id="ctl00_mainContent_divTitle"><br/></div>
                                            <div id="ctl00_mainContent_divContent">
                                                <table>
                                                    <tbody>
                                                        <tr align="left">
                                                            <td>Date:</td>
                                                            <td>Monday 10/10/2022</td>
                                                        </tr>
                                                        <tr align="left">
                                                            <td>Slot:</td>
                                                            <td>1</td>
                                                        </tr>
                                                        <tr align="left">
                                                            <td>Student group</td>
                                                            <td><a href='../Course/Groups.aspx?group=26885'>IS1431</a></td>
                                                        </tr>
                                                        <tr align="left">
                                                            <td>Instructor:</td>
                                                            <td>
                                                                <a href='../User/UserDetail.aspx?login=Namkv'>Namkv</a>- 
                                                            </td>
                                                        </tr>
                                                        <tr align="left">
                                                            <td>Course:</td>
                                                            <td>Principles of Marxism - Leninism(MLN101)</td>
                                                        </tr>
                                                        <tr align="left">
                                                            <td>Course session number:</td>
                                                            <td>16</td>
                                                        </tr>
                                                        <tr align="left">
                                                            <td>Course session type:</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr align="left">
                                                            <td>Course session description:</td>
                                                            <td></td>
                                                        </tr>
                                                        <tr align="left">
                                                            <td>Campus/Programme:</td>
                                                            <td>FU-HL</td>
                                                        </tr><tr align='left'>
                                                            <td>Attendance:</td>
                                                            <td>Attended</td>
                                                        </tr><tr>
                                                            <td></td>
                                                        </tr>)
                                                        <tr align="left">
                                                            <td>Record time:</td>
                                                            <td>8/9/2022 11:55:00 AM</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </center>
                                        <input type="hidden" name="ctl00$mainContent$lblErrorMess" id="ctl00_mainContent_lblErrorMess" />


                                    </div>
                                </td>
                            </tr>

                        </table>

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
