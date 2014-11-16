
Public Class WebForm1

    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '   conectarce()
        'llenargrid()


    End Sub
    Private Sub llenargrid()
        Dim ds As New DataSet
        Dim dt As New DataTable
        Dim query As String = "tony2"

        Dim comando As New SqlClient.SqlCommand()
        comando.CommandText = query
        conectarce()
        comando.Connection = cnn
        comando.CommandType = CommandType.StoredProcedure
        comando.Parameters.Add("@salida", SqlDbType.Int)
        comando.Parameters("@salida").Direction = ParameterDirection.Output
        Try
            comando.ExecuteScalar()
        Catch ex As Exception
            
            MsgBox(ex.ToString)

        End Try
        Session("var") = comando.Parameters("@salida").Value









        'Dim adp As New SqlClient.SqlDataAdapter(query, cnn)
        'ds.Tables.Add("tabla")
        'adp.Fill(ds.Tables("tabla"))
        'GridView2.DataSource = ds.Tables("tabla")
    End Sub




    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim var As String = CType(Session.Item("var"), String)
        Label1.Text = var
        Response.Redirect("WebForm2.aspx")

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        llenargrid()
        Dim var As String = CType(Session.Item("var"), String)
        Label1.Text = var

    End Sub

    
End Class