Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlTypes

Module Module1
    Public cnn As New SqlConnection("Server=TONY-PC;Database=sicove;User Id=sa; Password=1234;")
    Dim myB As String = "saved value"





    Public Sub conectarce()
        Try
            If cnn.State = 1 Then
                cnn.Close()
            End If

            cnn.Open()
            'MsgBox("entro")
        Catch ex As Exception
            If InStr(ex.ToString, "0x80131904") Then
                MsgBox("ERROR:no se pudo conectar al servidor", MsgBoxStyle.Critical, "ERROR 1")
            Else
                MsgBox("ERROR:no se pudo conectar al servidor por otra razon ", MsgBoxStyle.Critical, "ERROR 2")
            End If


        End Try
    End Sub
    Public Sub insertgrado(ByVal Id As SqlString, ByVal Nom As SqlString)

        Dim comandoIG As New SqlCommand()
        Dim paramId As New SqlParameter("@ID", SqlDbType.Int)
        Dim paramNom As New SqlParameter("@NOM", SqlDbType.NVarChar)
        paramId.Value = CInt(Id)
        paramNom.Value = Nom
        comandoIG.Parameters.Add(paramId)
        comandoIG.Parameters.Add(paramNom)
        comandoIG.CommandText = "exec InsertarGrado @ID,@NOM"
        conectarce()
        comandoIG.Connection = cnn
        comandoIG.ExecuteNonQuery()
    End Sub
    Public Sub insertAlumno(ByVal Id As SqlString, ByVal Nom As SqlString)

        Dim comando As New SqlCommand()
        Dim paramId As New SqlParameter("@ID", SqlDbType.Int)
        Dim paramNom As New SqlParameter("@NOM", SqlDbType.NVarChar)
        paramId.Value = CInt(Id)
        paramNom.Value = Nom
        comando.Parameters.Add(paramId)
        comando.Parameters.Add(paramNom)
        comando.CommandText = "exec InsertarGrado @ID,@NOM"
        conectarce()
        comando.Connection = cnn
        comando.ExecuteNonQuery()
    End Sub
    Public Sub InsertCurrency(
        ByVal currencyCode As SqlString, ByVal name As SqlString)

        Using conn As New SqlConnection("context connection=true")

            Dim InsertCurrencyCommand As New SqlCommand()
            Dim currencyCodeParam As New SqlParameter("@CurrencyCode", SqlDbType.NVarChar)
            Dim nameParam As New SqlParameter("@Name", SqlDbType.NVarChar)

            currencyCodeParam.Value = currencyCode
            nameParam.Value = name


            InsertCurrencyCommand.Parameters.Add(currencyCodeParam)
            InsertCurrencyCommand.Parameters.Add(nameParam)

            InsertCurrencyCommand.CommandText =
                "INSERT Sales.Currency (CurrencyCode, Name, ModifiedDate)" &
                " VALUES(@CurrencyCode, @Name, GetDate())"

            InsertCurrencyCommand.Connection = conn

            conn.Open()
            InsertCurrencyCommand.ExecuteNonQuery()
            conn.Close()
        End Using
    End Sub

End Module
