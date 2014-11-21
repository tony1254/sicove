Public Class crear2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Private Sub Buttonsiguiente_Click(sender As Object, e As EventArgs) Handles Buttonsiguiente.Click
        nuevodirneg(Session("mensaje").ToString, textnit.Value, textnombre.Value, textdir.Value)
        Response.Redirect("\vistas/users/crear3.aspx")
    End Sub
    Private Sub Buttonfinal_Click(sender As Object, e As EventArgs) Handles Buttonfinal.Click
        nuevodirneg(Session("mensaje").ToString, textnit.Value, textnombre.Value, textdir.Value)
        Response.Redirect("\vistas/users/show.aspx")
    End Sub
End Class