Imports System.Data.SqlClient

Public Class StaffLandingPage
    Inherits System.Web.UI.Page

    Dim connstr As String = ConfigurationManager.ConnectionStrings("Schooldb").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim conn As SqlConnection = New SqlConnection(connstr)
        Dim cmd As New SqlCommand()
        cmd.Connection = conn
        cmd.CommandText = "staffname"
        cmd.CommandType = CommandType.StoredProcedure

        cmd.Parameters.Add("@id", sqlDbType:=SqlDbType.Int).Value = CInt(Session("staffid"))
        Dim adapter As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        adapter.Fill(ds)



        lblstaffname.Text = ds.Tables(0).Rows(0)(0)

        lblstaffname1.Text = ds.Tables(0).Rows(0)(0)

    End Sub

End Class