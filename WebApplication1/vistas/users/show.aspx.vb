Public Class show
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub ButtonNuevos_Click(sender As Object, e As EventArgs) Handles ButtonNuevos.Click
        Response.Redirect("\vistas/users/crear1.aspx")
    End Sub
End Class