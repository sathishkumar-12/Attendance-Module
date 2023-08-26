Imports System.Data.SqlClient
Imports System.Runtime.InteropServices

Public Class StudentAttendance
    Inherits System.Web.UI.Page
    Dim connstr As String = ConfigurationManager.ConnectionStrings("Schooldb").ConnectionString
    Dim classlist As New List(Of String)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        classlist.Add("None")
        classlist.Add("X-A")
        classlist.Add("X-B")


        If Not IsPostBack Then
            For Each cls In classlist
                ddlclass.Items.Add(cls)
            Next
        End If
    End Sub

    Protected Sub ddlclass_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlclass.SelectedIndexChanged
        Dim conn As New SqlConnection(connstr)
        Dim cmd As SqlCommand = New SqlCommand
        Dim classname As String = ddlclass.SelectedValue.ToString()
        If classname.Equals("X-A") Then
            cmd.CommandText = "select student_id, name,attendance from studentDetails where class_id=102"
            cmd.Connection = conn
        Else
            cmd.CommandText = "select student_id, name,attendance from studentDetails where class_id=103"
            cmd.Connection = conn
        End If
        Dim adapter As SqlDataAdapter = New SqlDataAdapter(cmd)
        Dim ds As New DataSet
        adapter.Fill(ds)
        studentrepeater.DataSource = ds
        studentrepeater.DataBind()
    End Sub

    Protected Sub btnselectall_Click(sender As Object, e As EventArgs) Handles btnselectall.Click
        For Each i In studentrepeater.Items
            Dim check As CheckBox = i.findcontrol("checkbox")
            check.Checked = True
        Next
    End Sub




    Protected Sub btnreset_Click(sender As Object, e As EventArgs) Handles btnreset.Click
        For Each i In studentrepeater.Items
            Dim check As CheckBox = i.findcontrol("checkbox")
            check.Checked = False
        Next
    End Sub

    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click
        Dim datestr As String() = DateTime.Now.ToString().Split(" ")
        Dim result As String
        Dim conn As New SqlConnection(connstr)
        Dim cmd As New SqlCommand("select * from studentAttendance", conn)
        Dim adapter As New SqlDataAdapter(cmd)
        Dim tempset As New DataSet()
        adapter.Fill(tempset)
        Dim commandbuilder As New SqlCommandBuilder(adapter)
        For Each item In studentrepeater.Items

            Dim lastrow As DataRow = tempset.Tables(0).NewRow
            Dim sid As Int64 = Convert.ToInt64(item.findcontrol("lblid").text)
            Dim cid As Int64
            If ddlclass.SelectedValue.ToString = "X-A" Then
                cid = 102
            Else
                cid = 103
            End If
            If item.findcontrol("checkbox").checked Then
                result = "P"
            Else
                result = "A"
            End If
            Dim attendanceDate = CDate(datestr(0))
            lastrow("student_id") = sid
            lastrow("class_id") = cid
            lastrow("attendance_date") = attendanceDate
            lastrow("attendance") = result

            tempset.Tables(0).Rows.Add(lastrow)
            adapter.Update(tempset)

        Next
        Response.Redirect("StaffLandingPage.aspx")
    End Sub
End Class