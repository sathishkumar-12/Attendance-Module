Public Class newpage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim db As New ServiceReference1.Service1Client


        subjectshow.DataSource = db.getSubjects().subjecttable
        subjectshow.DataBind()

    End Sub

End Class