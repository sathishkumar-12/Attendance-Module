<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="StaffLogin.aspx.vb" Inherits="Attendance_Module.StaffLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
      .bg-image{
         
          height: 100vh;
          position:absolute;
          filter:blur(3px);
          background-image:url("https://www.oceanenglishacademy.com/wp-content/uploads/2020/04/online-xx-1170x659.jpg");
      }
  
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
       <form id="form1" runat="server">
       <div class="bg-image" style="width:100%;">
       </div>
        <div class="container border shadow rounded p-4 position-relative bg-light"  style="width:380px; height:450px; top:190px;">
            <div class="d-flex justify-content-between p-2 mb-2">
                <div style="width:70px; height:70px;"><img src="https://i.pinimg.com/originals/fd/c7/28/fdc7284512d7417ef605aab2afd16ceb.png" class="w-100"/></div>
                <div><h3 class="mt-4  text-center h5" style="color:#CF0921">Sk International School</h3></div>
            </div>
            <h4 class="text-primary text-center mb-4">Staff Login</h4>
            <div class="form-outline mb-2 ">
                <label class="form-label">Staff ID</label>
                <input type="text" name="staffid" placeholder="Enter Staff ID" class="form-control"/>
            </div>
              <div class="form-outline mb-2">
                <label class="form-label">Password</label>
                <input type="password" name="staffpassword" placeholder="Enter Password" class="form-control"/>
            </div>
            <a href="#" class="text-decoration-none float-end">Forgot Password ?</a>

         <asp:Button  runat="server" id="btn" Text="Log In" CssClass="btn btn-primary rounded border mt-5"/>
        </div>
    </form>
</body>
</html>
