Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports System.Web
Imports System.IO

Public Module controlesusuario

    Public ds As DataSet


    Public Sub login(ByVal unombre As SqlString, ByVal pass As SqlString)

        Dim comandoIG As New SqlCommand("login")
        Dim paramUser As New SqlParameter("@user", SqlDbType.NVarChar)
        Dim paramPass As New SqlParameter("@pass", SqlDbType.NVarChar)
        Dim paramId As New SqlParameter("@id_usuario", SqlDbType.BigInt)
        Dim paramNom As New SqlParameter("@nombre", SqlDbType.NVarChar, 50)
        Dim paramRol As New SqlParameter("@rol", SqlDbType.NVarChar, 50)
        Dim paramSal As New SqlParameter("@salida", SqlDbType.NVarChar, 50)
        paramUser.Value = unombre
        paramPass.Value = pass


        comandoIG.CommandType = CommandType.StoredProcedure

        'comandoIG.CommandText = "exec login @user, @pass, @id_usuario, @nombre, @salida"
        'agrego parametros
        comandoIG.Parameters.Add(paramUser)
        comandoIG.Parameters.Add(paramPass)
        comandoIG.Parameters.Add(paramId)
        comandoIG.Parameters.Add(paramNom)
        comandoIG.Parameters.Add(paramRol)
        comandoIG.Parameters.Add(paramSal)
        'seteo parametors
        'comandoIG.Parameters("@Codigo").Value = unombre
        'comandoIG.Parameters("@pass").Value = pass
        'CONFIGURA parametros de lsalida

        comandoIG.Parameters("@id_usuario").Direction = ParameterDirection.Output
        comandoIG.Parameters("@nombre").Direction = ParameterDirection.Output
        comandoIG.Parameters("@rol").Direction = ParameterDirection.Output
        comandoIG.Parameters("@salida").Direction = ParameterDirection.Output

        'comandoIG.Parameters.Add(paramId)
        'comandoIG.Parameters.Add(paramNom)
        'comandoIG.CommandText = "exec InsertarGrado @ID,@NOM"
        conectarce()
        comandoIG.Connection = cnn

        comandoIG.ExecuteScalar()

        If comandoIG.Parameters("@salida").Value() = "ok" Then
            'Session.Add("idUsuario", comandoIG.Parameters("@id_usuario").Value())
            System.Web.HttpContext.Current.Session.Add("usuario", comandoIG.Parameters("@nombre").Value())
            System.Web.HttpContext.Current.Session.Add("rol", comandoIG.Parameters("@rol").Value())
            System.Web.HttpContext.Current.Session("idUsuario") = comandoIG.Parameters("@id_usuario").Value()
            'System.Web.HttpContext.Current.Session("usuario") = comandoIG.Parameters("@nombre").Value()
            System.Web.HttpContext.Current.Session("mensaje") = comandoIG.Parameters("@salida").Value()
        Else
            System.Web.HttpContext.Current.Session("mensaje") = "malo"
        End If


        cnn.Close()


    End Sub
    Public Sub mostarusuario(ByVal unombre As SqlString, ByVal pass As SqlString)


        Dim da As SqlDataAdapter
        Dim dss As DataSet
        Dim dt As DataTable
        'Dim comandoIG As New SqlCommand("mostarusuario")
        'Dim paramUser As New SqlParameter("@user", SqlDbType.NVarChar)
        'Dim paramSal As New SqlParameter("@salida", SqlDbType.NVarChar, 50)
        'paramUser.Value = unombre
        'comandoIG.CommandType = CommandType.StoredProcedure
        'comandoIG.Parameters.Add(paramUser)
        'comandoIG.Parameters.Add(paramSal)

        'comandoIG.Parameters("@salida").Direction = ParameterDirection.Output
        ''comandoIG.Parameters.Add(paramSal)
        'comandoIG.Parameters("@salida").Direction = ParameterDirection.Output
        'conectarce()
        'comandoIG.Connection = cnn
        'comandoIG.ExecuteScalar()


        Dim comandoIG As New SqlCommand("mostarusuario")
        Dim paramUser As New SqlParameter("@user", SqlDbType.NVarChar, 50)
        Dim paramPass As New SqlParameter("@pass", SqlDbType.NVarChar)
        Dim paramId As New SqlParameter("@id_usuario", SqlDbType.BigInt)
        Dim paramNom As New SqlParameter("@nombre", SqlDbType.NVarChar, 50)
        Dim paramSal As New SqlParameter("@salida", SqlDbType.NVarChar, 50)
        paramUser.Value = unombre
        paramPass.Value = pass


        comandoIG.CommandType = CommandType.StoredProcedure

        'comandoIG.CommandText = "exec login @user, @pass, @id_usuario, @nombre, @salida"
        'agrego parametros
        comandoIG.Parameters.Add(paramUser)
        'comandoIG.Parameters.Add(paramPass)
        'comandoIG.Parameters.Add(paramId)
        'comandoIG.Parameters.Add(paramNom)
        comandoIG.Parameters.Add("@salida", SqlDbType.NVarChar, 50)
        'seteo parametors
        'comandoIG.Parameters("@Codigo").Value = unombre
        'comandoIG.Parameters("@pass").Value = pass
        'CONFIGURA parametros de lsalida

        'comandoIG.Parameters("@id_usuario").Direction = ParameterDirection.Output
        'comandoIG.Parameters("@nombre").Direction = ParameterDirection.Output
        comandoIG.Parameters("@salida").Direction = ParameterDirection.Output

        'comandoIG.Parameters.Add(paramId)
        'comandoIG.Parameters.Add(paramNom)
        'comandoIG.CommandText = "exec InsertarGrado @ID,@NOM"
        conectarce()
        comandoIG.Connection = cnn

        comandoIG.ExecuteScalar()
        If comandoIG.Parameters("@salida").Value() Is Nothing Then
            If comandoIG.Parameters("@salida").Value() = "ok" Then
                'Session.Add("idUsuario", comandoIG.Parameters("@id_usuario").Value())

                System.Web.HttpContext.Current.Session("idUsuario") = comandoIG.Parameters("@id_usuario").Value()
                System.Web.HttpContext.Current.Session("usuario") = comandoIG.Parameters("@nombre").Value()
                System.Web.HttpContext.Current.Session("mensaje") = comandoIG.Parameters("@salida").Value()
            Else
                System.Web.HttpContext.Current.Session("mensaje") = "malo"
            End If

        End If
        da = New SqlDataAdapter(comandoIG)
        ds = New DataSet()
        da.Fill(ds)
        'dt = New DataTable(ds.Tables(0).DefaultView)

        'For Each drow As DataRow In ds.Tables(0).Rows
        'Next

        cnn.Close()
    End Sub
End Module
