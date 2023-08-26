Imports System.Data.Common
Imports System.Data.SqlClient
Imports System.Web.Services.Discovery

Public Class MarkEntryPortal
    Inherits System.Web.UI.Page
    Dim connstr As String = ConfigurationManager.ConnectionStrings("Schooldb").ConnectionString
    Dim classlist As List(Of String) = New List(Of String)


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim conn As SqlConnection = New SqlConnection(connstr)
        Dim cmd As New SqlCommand()
        cmd.Connection = conn
        Dim QueryStr As String = "select class_name from classstaff where teacher_id="
        QueryStr += Session("staffid").ToString()
        cmd.CommandText = QueryStr
        Dim adapter As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        adapter.Fill(ds)
        For Each i In ds.Tables(0).Rows
            For Each item In i.itemarray
                classlist.Add(item)
            Next
        Next

        If Not IsPostBack Then
            ddlclassname.Items.Add("None")
            For Each s In classlist
                ddlclassname.Items.Add(s)
            Next

            ddlexamtype.Items.Add("None")
            ddlexamtype.Items.Add("Cyclic Test 1")
            ddlexamtype.Items.Add("Quarterly")
            ddlexamtype.Items.Add("Cyclic Test 2")
            ddlexamtype.Items.Add("Half-yearly")
            ddlexamtype.Items.Add("Cyclic Test 3")
        End If



    End Sub

    Protected Sub ddlexamtype_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlexamtype.SelectedIndexChanged

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnaddmark.Click
        For Each i In markrepeater.Items
            Dim mark As Int16 = Convert.ToInt16(txtmark.Text)
            Dim id = Convert.ToInt64(txtid.Text)
            If id = Convert.ToInt64(i.findcontrol("lblid").text) Then
                i.findcontrol("txtmarkgiven").text = mark

            End If
        Next
        txtid.Text = String.Empty
        txtmark.Text = String.Empty
    End Sub

    Protected Sub btnsubmit_Click(sender As Object, e As EventArgs) Handles btnsubmit.Click


        Dim conn As New SqlConnection(connstr)
        Dim cmd As New SqlCommand()
        cmd.Connection = conn
        cmd.CommandText = "select * from studentMarks where class_id=(select class_id from class where class_name=" + "'" + ddlclassname.SelectedValue.ToString() + "')"

        Dim testtype As String
        If ddlexamtype.SelectedValue.ToString = "Cyclic Test 1" Then
            testtype = "c1"
        ElseIf ddlexamtype.SelectedValue.ToString = "Cyclic Test 2" Then
            testtype = "c2"
        ElseIf ddlexamtype.SelectedValue.ToString = "Cyclic Test 3" Then
            testtype = "c3"
        ElseIf ddlexamtype.SelectedValue.ToString = "Quarterly" Then
            testtype = "q"
        ElseIf ddlexamtype.SelectedValue.ToString = "half-yearly" Then
            testtype = "h"
        Else

        End If
        Dim adapter As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        adapter.Fill(ds)
        Dim commandbuilder As New SqlCommandBuilder(adapter)
        Dim marklocation = testtype + findsubject(Session("staffid").ToString())

        For Each item In markrepeater.Items
            Dim studentid = Convert.ToInt64(item.findcontrol("lblid").text)
            For Each row In ds.Tables(0).Rows
                If row("student_id") = studentid Then
                    If IsNumeric(item.findcontrol("txtmarkgiven").text) Then
                        row(marklocation) = Convert.ToInt32(item.findcontrol("txtmarkgiven").text)
                    Else
                        row(marklocation) = 0
                    End If

                End If
            Next
        Next
        adapter.Update(ds)
        Response.Redirect("MarkEntryPortal.aspx")
    End Sub

    Protected Sub ddlclassname_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlclassname.SelectedIndexChanged
        Dim conn As New SqlConnection(connstr)
        Dim cmd As New SqlCommand()
        cmd.Connection = conn
        Dim selectstr As String = "Select student_id,name from studentDetails where class_id=(Select class_id from Class where class_name="
        selectstr += "'"
        selectstr += ddlclassname.SelectedValue.ToString()
        selectstr += "')"
        cmd.CommandText = selectstr
        Dim adapter As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        adapter.Fill(ds)
        markrepeater.DataSource = ds
        markrepeater.DataBind()
    End Sub

    Function findsubject(teacher_id As String)
        Dim conn As SqlConnection = New SqlConnection(connstr)
        Dim cmd As New SqlCommand()
        cmd.Connection = conn
        Dim QueryStr As String = "select subject_name from subjectdetails where teacher_id=" + teacher_id
        cmd.CommandText = QueryStr
        Dim adapter As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        adapter.Fill(ds)
        Return ds.Tables(0).Rows(0)(0)
    End Function
End Class