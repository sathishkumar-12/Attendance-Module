Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_Click(sender As Object, e As EventArgs) Handles btn.Click
        Response.Redirect("MarkEntryPortal.aspx")
    End Sub
End Class