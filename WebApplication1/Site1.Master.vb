Public Class Site1
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Private Sub Button2_ServerClick(sender As Object, e As EventArgs) Handles Button2.ServerClick
        If Not (Session("usuario") Is Nothing) Then

            If Not (Session("usuario") = "") Then
                Label3.Text = "Iniciar Secion"

                'Session.Contents.RemoveAll()
                Session("usuario") = ""
                Response.Redirect("\vistas/users/login.aspx")
            Else
                Label3.Text = "Cerrar Secion"
                Response.Redirect("\vistas/users/login.aspx")

            End If
        Else
            Label3.Text = "Cerrar Secion"
            Response.Redirect("\vistas/users/login.aspx")
        End If

    End Sub
End Class