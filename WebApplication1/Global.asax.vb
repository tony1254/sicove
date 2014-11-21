Imports System.Web.SessionState
Imports System.Web.Routing

Public Class Global_asax
    Inherits System.Web.HttpApplication

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        RegisterRoutes(RouteTable.Routes)
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Se desencadena al iniciar la sesión
    End Sub

    Sub Application_BeginRequest(ByVal sender As Object, ByVal e As EventArgs)
        ' Se desencadena al comienzo de cada solicitud
    End Sub

    Sub Application_AuthenticateRequest(ByVal sender As Object, ByVal e As EventArgs)
        ' Se desencadena al intentar autenticar el uso
    End Sub

    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        MsgBox(Server.GetLastError.ToString)
        'If (404 = Server.GetLastError.ToString) Then
        '    Server.ClearError()
        '    Server.Transfer("/Errors/404.aspx")
        'End If

        ' Se desencadena cuando se produce un error
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Se desencadena cuando finaliza la sesión
    End Sub
    Sub RegisterRoutes(ByVal routes As RouteCollection)


        ' routes.MapPageRoute("404", "{*url}", "~/404.aspx")
        routes.MapPageRoute("ver", "vistas/ver/{id}", "~/vistas/users/mostrar.aspx")
        routes.MapPageRoute("editar", "vistas/editar/{id}", "~/vistas/users/show.aspx")
        routes.MapPageRoute("borrar", "vistas/borrar/{id}", "~/vistas/users/borrar.aspx")
        routes.MapPageRoute("index", "vistas/users/{id}", "~/vistas/users/show.aspx")
        routes.MapPageRoute("elimino", "vistas/elimino/{eliminado}", "~/vistas/users/show.aspx")
        routes.MapPageRoute("repetido", "vistas/users/repetido/{repetido}", "~/vistas/users/show.aspx")
    End Sub

    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Se desencadena cuando finaliza la aplicación
    End Sub

End Class