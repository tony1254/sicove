Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim var As String = CType(Session.Item("var"), String)
        Label1.Text = var
    End Sub

    Private Sub Button2_ServerClick(sender As Object, e As EventArgs) Handles Button2.ServerClick
        Response.Redirect("WebForm3.aspx")
    End Sub
End Class