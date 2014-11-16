Public Class WebForm6
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button11_Click(sender As Object, e As EventArgs) Handles Button11.Click
       
        'If Session("usuario") Is Nothing Or Session("usuario") = "" Then
        '    Session("usuario") = "tony"
        'Else
        '    Session.Contents.RemoveAll()
        'End If
        login(text1.Value, text2.Value)

    End Sub


  
End Class