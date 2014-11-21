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
    Public Sub pruebita(ByVal unombre As SqlString, ByVal pass As SqlString)
        MsgBox(("Borre " + unombre))


    End Sub
    Public Sub nuevousuario(ByVal unombre As SqlString, ByVal pass As SqlString, ByVal rol As SqlString)

        Dim comandoIG As New SqlCommand("nuevousuario")
        Dim paramUser As New SqlParameter("@user", SqlDbType.NVarChar)
        Dim paramPass As New SqlParameter("@pass", SqlDbType.NVarChar)
        'Dim paramId As New SqlParameter("@id_usuario", SqlDbType.BigInt)
        'Dim paramNom As New SqlParameter("@nombre", SqlDbType.NVarChar, 50)
        Dim paramRol As New SqlParameter("@rol", SqlDbType.Int)
        Dim paramSal As New SqlParameter("@salida", SqlDbType.NVarChar, 50)
        paramUser.Value = unombre
        paramPass.Value = pass
        paramRol.Value = CInt(rol)


        comandoIG.CommandType = CommandType.StoredProcedure

        'comandoIG.CommandText = "exec login @user, @pass, @id_usuario, @nombre, @salida"
        'agrego parametros
        comandoIG.Parameters.Add(paramUser)
        comandoIG.Parameters.Add(paramPass)
        'comandoIG.Parameters.Add(paramId)
        'comandoIG.Parameters.Add(paramNom)
        comandoIG.Parameters.Add(paramRol)
        comandoIG.Parameters.Add(paramSal)
        'seteo parametors
        'comandoIG.Parameters("@Codigo").Value = unombre
        'comandoIG.Parameters("@pass").Value = pass
        'CONFIGURA parametros de lsalida

        'comandoIG.Parameters("@id_usuario").Direction = ParameterDirection.Output
        'comandoIG.Parameters("@nombre").Direction = ParameterDirection.Output
        'comandoIG.Parameters("@rol").Direction = ParameterDirection.Output
        comandoIG.Parameters("@salida").Direction = ParameterDirection.Output

        'comandoIG.Parameters.Add(paramId)
        'comandoIG.Parameters.Add(paramNom)
        'comandoIG.CommandText = "exec InsertarGrado @ID,@NOM"
        conectarce()
        comandoIG.Connection = cnn

        comandoIG.ExecuteScalar()

        If Not (comandoIG.Parameters("@salida").Value() = "malo") Then
            'Session.Add("idUsuario", comandoIG.Parameters("@id_usuario").Value())
            'System.Web.HttpContext.Current.Session.Add("usuario", comandoIG.Parameters("@nombre").Value())
            'System.Web.HttpContext.Current.Session.Add("rol", comandoIG.Parameters("@rol").Value())
            'System.Web.HttpContext.Current.Session("idUsuario") = comandoIG.Parameters("@id_usuario").Value()
            'System.Web.HttpContext.Current.Session("usuario") = comandoIG.Parameters("@nombre").Value()
            System.Web.HttpContext.Current.Session("mensaje") = comandoIG.Parameters("@salida").Value()
        Else
            System.Web.HttpContext.Current.Session("mensaje") = "malo"
        End If


        cnn.Close()


    End Sub
    Public Sub nuevodirneg(ByVal idusuario As SqlString, ByVal nit As SqlString, ByVal nombre As SqlString, ByVal direccion As SqlString)

        Dim comandoIG As New SqlCommand("nuevodirneg")
        Dim pidusuario As New SqlParameter("@idusuario", SqlDbType.BigInt)
        Dim pnit As New SqlParameter("@nit", SqlDbType.NVarChar, 50)
        'Dim paramId As New SqlParameter("@id_usuario", SqlDbType.BigInt)
        Dim pnombre As New SqlParameter("@nombre", SqlDbType.NVarChar, 50)
        Dim pdireccion As New SqlParameter("@direccion", SqlDbType.NVarChar, 50)
        Dim paramSal As New SqlParameter("@salida", SqlDbType.NVarChar, 50)
        pidusuario.Value = CInt(idusuario)
        pnit.Value = nit
        pnombre.Value = nombre
        pdireccion.Value = direccion


        comandoIG.CommandType = CommandType.StoredProcedure

        'comandoIG.CommandText = "exec login @user, @pass, @id_usuario, @nombre, @salida"
        'agrego parametros
        comandoIG.Parameters.Add(pidusuario)
        comandoIG.Parameters.Add(pnit)
        'comandoIG.Parameters.Add(paramId)
        comandoIG.Parameters.Add(pnombre)
        comandoIG.Parameters.Add(pdireccion)
        comandoIG.Parameters.Add(paramSal)
        'seteo parametors
        'comandoIG.Parameters("@Codigo").Value = unombre
        'comandoIG.Parameters("@pass").Value = pass
        'CONFIGURA parametros de lsalida

        'comandoIG.Parameters("@id_usuario").Direction = ParameterDirection.Output
        'comandoIG.Parameters("@nombre").Direction = ParameterDirection.Output
        'comandoIG.Parameters("@rol").Direction = ParameterDirection.Output
        comandoIG.Parameters("@salida").Direction = ParameterDirection.Output

        'comandoIG.Parameters.Add(paramId)
        'comandoIG.Parameters.Add(paramNom)
        'comandoIG.CommandText = "exec InsertarGrado @ID,@NOM"
        conectarce()
        comandoIG.Connection = cnn

        comandoIG.ExecuteScalar()

        If Not (comandoIG.Parameters("@salida").Value() = "malo") Then
            'Session.Add("idUsuario", comandoIG.Parameters("@id_usuario").Value())
            'System.Web.HttpContext.Current.Session.Add("usuario", comandoIG.Parameters("@nombre").Value())
            'System.Web.HttpContext.Current.Session.Add("rol", comandoIG.Parameters("@rol").Value())
            'System.Web.HttpContext.Current.Session("idUsuario") = comandoIG.Parameters("@id_usuario").Value()
            'System.Web.HttpContext.Current.Session("usuario") = comandoIG.Parameters("@nombre").Value()
            System.Web.HttpContext.Current.Session("mensaje") = comandoIG.Parameters("@salida").Value()
        Else
            System.Web.HttpContext.Current.Session("mensaje") = "malo"
        End If


        cnn.Close()


    End Sub
    Public Sub nuevodatref(ByVal idusuario As SqlString, ByVal dpi As SqlString, ByVal profecion As SqlString, ByVal domicilio As SqlString, _
                            ByVal telefono As SqlString, ByVal celular As SqlString, ByVal numerocontrato As SqlString, ByVal sueldo As SqlString)

        Dim comandoIG As New SqlCommand("nuevodatref")
        Dim pidusuario As New SqlParameter("@idusuario", SqlDbType.BigInt)
        Dim pdpi As New SqlParameter("@dpi", SqlDbType.NVarChar, 50)
        'Dim paramId As New SqlParameter("@id_usuario", SqlDbType.BigInt)
        Dim pprofecion As New SqlParameter("@profecion", SqlDbType.NVarChar, 50)
        Dim pdomicilio As New SqlParameter("@domicilio", SqlDbType.NVarChar, 50)
        Dim ptelefono As New SqlParameter("@telefono", SqlDbType.NVarChar, 50)
        Dim pcelular As New SqlParameter("@celular", SqlDbType.NVarChar, 50)
        Dim pnumerocontrato As New SqlParameter("@numerocontrato", SqlDbType.NVarChar, 50)
        Dim psueldo As New SqlParameter("@sueldo", SqlDbType.NVarChar, 50)



        Dim paramSal As New SqlParameter("@salida", SqlDbType.NVarChar, 50)
        pidusuario.Value = CInt(idusuario)
        pdpi.Value = dpi
        pprofecion.Value = profecion
        pdomicilio.Value = domicilio
        ptelefono.Value = telefono
        pcelular.Value = celular
        pnumerocontrato.Value = numerocontrato
        psueldo.Value = sueldo


        comandoIG.CommandType = CommandType.StoredProcedure

        'comandoIG.CommandText = "exec login @user, @pass, @id_usuario, @nombre, @salida"
        'agrego parametros
        comandoIG.Parameters.Add(pidusuario)
        comandoIG.Parameters.Add(pdpi)
        comandoIG.Parameters.Add(pprofecion)
        comandoIG.Parameters.Add(pdomicilio)
        comandoIG.Parameters.Add(ptelefono)
        comandoIG.Parameters.Add(ptelefono)
        comandoIG.Parameters.Add(pcelular)
        comandoIG.Parameters.Add(pnumerocontrato)
        comandoIG.Parameters.Add(psueldo)


        comandoIG.Parameters.Add(paramSal)
        'seteo parametors
        'comandoIG.Parameters("@Codigo").Value = unombre
        'comandoIG.Parameters("@pass").Value = pass
        'CONFIGURA parametros de lsalida

        'comandoIG.Parameters("@id_usuario").Direction = ParameterDirection.Output
        'comandoIG.Parameters("@nombre").Direction = ParameterDirection.Output
        'comandoIG.Parameters("@rol").Direction = ParameterDirection.Output
        comandoIG.Parameters("@salida").Direction = ParameterDirection.Output

        'comandoIG.Parameters.Add(paramId)
        'comandoIG.Parameters.Add(paramNom)
        'comandoIG.CommandText = "exec InsertarGrado @ID,@NOM"
        conectarce()
        comandoIG.Connection = cnn

        comandoIG.ExecuteScalar()

        If Not (comandoIG.Parameters("@salida").Value() = "malo") Then
            'Session.Add("idUsuario", comandoIG.Parameters("@id_usuario").Value())
            'System.Web.HttpContext.Current.Session.Add("usuario", comandoIG.Parameters("@nombre").Value())
            'System.Web.HttpContext.Current.Session.Add("rol", comandoIG.Parameters("@rol").Value())
            'System.Web.HttpContext.Current.Session("idUsuario") = comandoIG.Parameters("@id_usuario").Value()
            'System.Web.HttpContext.Current.Session("usuario") = comandoIG.Parameters("@nombre").Value()
            System.Web.HttpContext.Current.Session("mensaje") = comandoIG.Parameters("@salida").Value()
        Else
            System.Web.HttpContext.Current.Session("mensaje") = "malo"
        End If


        cnn.Close()


    End Sub


End Module
