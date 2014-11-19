Public Class WebForm11
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Buttoncrearcompraventa.Click
        Response.Redirect("\vistas/compraventa/form2.aspx")
    End Sub
End Class