<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MarkEntryPortal.aspx.vb" Inherits="Attendance_Module.MarkEntryPortal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mark Entry Portal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
        body{
            width:100%;
        }
        th,td{
            width:200px;
        }
        #btnaddmark{
          margin-top:32px;
        }
        @media only screen and (max-width:600px ) {
   
           #tbox{
               display:none;
   

           }


            #tbox input{
              
               width:100px;
           }

            #ddlclassname,#ddlexamtype{
                width:130px;
            }
            #optionbox{
                flex-direction:column;
                align-items:center;
                padding:5px;
               height:130px;
            }

        }
    </style>
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid bg-dark" style="height:38px;">
            <h4 class="text-center text-light">Mark Entry Portal</h4>
        </div>

        <div class="continer-fluid m-3" id="optionbox" style="max-height:150px;display:flex; justify-content:space-around; ">
            <div>
                <h4 class="text-secondary d-inline-block">Select Class:</h4>
                 <asp:DropDownList ID="ddlclassname" runat="server" AutoPostBack="true" CssClass="btn  border rounder"></asp:DropDownList>
            </div>
            <div>
                <h4 class="text-secondary d-inline-block">Exam Type&nbsp;&nbsp;:</h4>
                <asp:DropDownList ID="ddlexamtype" runat="server" AutoPostBack="true" CssClass="btn  border rounder"></asp:DropDownList>
            </div>
        </div>


        <asp:label runat="server" ID="lblid"></asp:label>



         <div class="container bg-light p-3"  id="tbox" style="height:140px; min-width:300px; display:flex; justify-content:space-evenly;">
         
              <div class=" form-outline" id="idbox">
                  <label class="form-label">Student Id</label>
                  <asp:TextBox runat="server" CssClass="form-control" ID="txtid"></asp:TextBox>
                 <%--<input  class="form-control" type="text"/>--%>
              </div>
              <div class="form-outline" id="markbox">
                  <label class="form-label">Mark</label>
                   <asp:TextBox runat="server" CssClass="form-control" ID="txtmark"></asp:TextBox>
                 <%--<input  class="form-control" type="text"/>--%>
              </div>
    
              <div class="" id="addbox">
                  <asp:button Text="Add Mark" CssClass="btn btn-success rounded border " runat="server" ID="btnaddmark"  />
              </div>
     
          </div>




        <div class="container">
            <asp:Repeater runat="server" ID="markrepeater">
                <HeaderTemplate>
                    <table class="table table-hover ">
                        <thead class="thead-dark">
                        <tr>
                            <th class="text-center">Student Id</th>
                            <th class="text-center">Name</th>
                            <th class="text-center">Mark</th>
                        </tr>
                            </thead>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <table class="table table-hover">
                        <tr>
                            <td class="text-center">
                                <asp:Label runat="server" ID="lblid" Text='<%# Eval("student_id") %>'>

                                </asp:Label>
                            </td>
                               <td class="text-center">
                                <asp:Label runat="server" ID="lblname" Text='<%# Eval("name") %>'>

                                </asp:Label>
                            </td>
                            <td class="text-center">
                                <asp:TextBox  runat="server" TextMode="Number" ID="txtmarkgiven" ></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:Repeater>

        </div>
         <div class="container-fluid float-end" style="width:300px;height:50px;">
                <asp:Button  runat="server" ID="btnreset" CssClass="btn btn-danger m-2" Text="Reset"/>
                <asp:Button runat="server" ID="btnsubmit"  CssClass="btn  btn-primary m-2" Text="Submit"/>
            </div>







  

    </form>

</body>
</html>




