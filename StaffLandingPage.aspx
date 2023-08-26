﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="StaffLandingPage.aspx.vb" Inherits="Attendance_Module.StaffLandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff Portal</title>
     <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <style>
         body{
             background-color: #F5F5F5;     
        }
        .option-card{
            width:310px;
            height:200px;
            border-radius: 10px;
            color: black;
        }
        
        .option-card:hover{
            width: 303px;
            height: 192px;
        }
        .option-div{
            display:flex;
            justify-content: space-around;
            flex-wrap: wrap;
            grid-row-gap: 50px;
        }
 
    </style>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
  <script>
      $(document).ready(function () {
          $("#profilebutton .btn").click(function () {
              $(".dropdown-options").slideToggle();
          });
      });
  </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid" style="background-color: #003366; display: flex; justify-content: space-between; align-items: center;">
        <div class="school-name">
            <h3 class="text-light">Sk International School</h3>
        </div>
    
        <div class="profile-div d-inline-block" style="  position: relative" id="profilebutton">
            <div class="btn btn-danger d-flex justify-content-center align-items-center">
                <div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill m-1" viewBox="0 0 16 16">
  <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/>
</svg></div>
                <div><asp:Label runat="server" ID="lblstaffname"></asp:Label></div>
            </div>
            <div class="dropdown-options border p-2" style="display: none; right: 0; min-width: 140px; position: absolute; background-color:white">
                <a href="#" class="d-block text-decoration-none text-dark">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-lines-fill m-1" viewBox="0 0 16 16">
  <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z"/>
</svg>
                    
                    View Profile</a>
                <a href="#" class="d-block text-decoration-none text-dark">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear m-1" viewBox="0 0 16 16">
  <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
  <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
</svg>
                    Setting</a>
                <a href="stafflogin.aspx" class="d-block text-decoration-none text-dark">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-left m-1" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0v2z"/>
  <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z"/>
</svg>
                    Log Out</a>
            </div>
        
        </div>

    </div>

        <div class="alert alert-success h6 float-center" role="alert" style="width:400px; height:50px;">
        welcome,<asp:Label runat="server" ID="lblstaffname1"></asp:Label>
</div>
    <div class="container" style="padding:60px;">
        <div  class="option-div">
         <div class="option-card  d-flex align-items-end p-2 border shadow hover-zoom"  onclick="window.location.href='StudentAttendance.aspx'">
                <h2 class=" text-wrap" >Student Attendance</h2> </div> 
            <div class="option-card  d-flex align-items-end p-2 border shadow" onclick="window.location.href='MarkEntryPortal.aspx'">
                <h2 class=" text-wrap" >Mark Entry Portal</h2> </div>    
            <div class="option-card  d-flex align-items-end p-2 border shadow " onclick="window.location.href='ClassDetails.aspx'"> 
                <h2 class=" text-wrap" >Class Details</h2> </div> 
            <div class="option-card  d-flex align-items-end p-2 border shadow"> 
                 <h2 class=" text-wrap" >Staff Performance</h2> </div> 
            <div class="option-card  d-flex align-items-end p-2 border shadow">
                <h2 class=" text-wrap" >Personal Details</h2> </div> 
    </div>
    </div>
    </form>
</body>
</html>
