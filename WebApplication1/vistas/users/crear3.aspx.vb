Public Class crear3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Private Sub Buttonsiguiente_Click(sender As Object, e As EventArgs) Handles Buttonsiguiente.Click
        Response.Redirect("\vistas/users/show.aspx")
    End Sub
    Private Sub Buttonfinal_Click(sender As Object, e As EventArgs) Handles Buttonfinal.Click
        Response.Redirect("\vistas/users/show.aspx")
    End Sub
End Class