<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="StudentAttendance.aspx.vb" Inherits="Attendance_Module.StudentAttendance" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Attendance Portal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
        body{
            width:100%;
        }
        th,td{
            width:200px;
        }
    </style>
     <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
    
   
<body>
    <form id="form1" runat="server">
          <div class="container-0 bg-dark" style="height:38px";width:100%;>
        <div class="text-light text-center mt-1">
            <h3>Attendance Portal</h3>
        </div>
    </div>
        <script type ="text/javascript">
            $(document).ready(function () {
           
               
            });
        </script>
        <div class=" float-end p-3 mb-4" style="width:400px;height:40px;">
             <h4 class="text-secondary d-inline-block">Select Class:</h4>
   
        <asp:DropDownList ID="ddlclass" runat="server" AutoPostBack="True" CssClass=" btn border text-center rounded " >
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
            </div>
        <div class="container-2">
        <di class="float-start m-3"><asp:Button runat="server" id="btnselectall" CssClass="btn btn-sm btn-secondary" Text="Select All"/> </di>
            <div>
            <asp:Repeater ID="studentrepeater" runat="server">
                <HeaderTemplate>
                    <table class="table table-hover">
                        <thead class="thead-dark">
                        <tr>
                            <th class="text-center">Student Id</th>
                            <th  class="text-center">Name</th>
                            <th  class="text-center">Attendance</th>
                        </tr>
                       </thead>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class= "table  table-hover">
                        <tbody>
                        <tr>
                            <td class="text-center">
                                <asp:Label ID="lblid" runat="server" Text='<%# Eval("student_id") %>'></asp:Label>
                            </td>
                             <td class="text-center">
                                <asp:Label ID="lblname" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                            </td>
                             <td class="text-center">
                               <asp:CheckBox ID="checkbox" runat="server" />
                            </td>
                        </tr>
                      </tbody>
                    </table>
                </ItemTemplate>
               
            </asp:Repeater>
            <div class="container-fluid float-end" style="width:300px;height:50px;">
                <asp:Button  runat="server" ID="btnreset" CssClass="btn btn-sm btn-danger m-2" Text="Reset"/>
                <asp:Button runat="server" ID="btnsubmit"  CssClass="btn btn-sm btn-primary m-2" Text="Submit"/>
            </div>
        </div>
            </div>

      
    
    
     
    </form>
 

</body>
</html>
