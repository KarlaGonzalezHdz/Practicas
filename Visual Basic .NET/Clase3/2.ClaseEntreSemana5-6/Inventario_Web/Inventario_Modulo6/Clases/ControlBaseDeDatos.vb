Imports System.Data.SqlClient

Public Class ControlBaseDeDatos
    'Definicion Global (Por modo de acceso)
    Dim ConexionSQL = New SqlConnection(My.Settings.ConexionDB)

    Private Function ConexionTest()
        Dim Resultado = ""
        'ConexionSQL = New SqlConnection("Data Source=DESKTOP-CL29IR8\SQLEXPRESS;Initial Catalog=InventarioModulo6;Integrated Security=True")
        'ConexionSQL = New SqlConnection(My.Settings.ConexionDB)
        ConexionSQL.Open()
        Resultado = "Conexion exitosa"
        ConexionSQL.Close()
        Return Resultado
    End Function

    Private Function Conectar() As Boolean
        Dim Estado As Boolean
        Try
            'Acciones que se esperan que pudieran generar un error
            ConexionSQL.Open()
            Estado = True
        Catch ex As Exception
            Estado = False
        End Try

        Return Estado
    End Function

    Private Function Desconectar() As Boolean
        Dim Estado As Boolean
        Try
            ConexionSQL.Close()
            Estado = True
        Catch ex As Exception
            Estado = False
        End Try

        Return Estado
    End Function

    Private Function EjecutarSQL(ByVal Query As String) As Boolean
        Dim Resultado As Boolean
        If Conectar() Then
            'Ejecuta una instruccion SQL
            Try
                'SQLCOMMAND (INSTRUCCION A EJECUTAR , CONEXION DE LA BD)
                Dim Comando = New SqlCommand(Query, ConexionSQL)
                Dim CantidadAfectada = Comando.ExecuteNonQuery()
                If CantidadAfectada > 0 Then
                    Resultado = True
                Else
                    Resultado = False
                End If
            Catch ex As Exception
                Resultado = False
            End Try
            Desconectar()
        Else
            Resultado = False
            'Devuelve un mensaje de error
        End If
        Return Resultado
    End Function

    Public Function ObtenerDatos(ByVal Query As String) As SqlDataAdapter
        If Conectar() Then
            Try
                Dim Adaptador As New SqlDataAdapter(Query, My.Settings.ConexionDB)
                Desconectar()
                Return Adaptador
            Catch ex As Exception
                Dim AdaptadorNull As New SqlDataAdapter()
            End Try
        Else
        End If
    End Function

    Public Function ManipularEntrada(ByVal EntradaRecibida As Entrada)
        Dim Query As New StringBuilder("")
        Dim Valores As New StringBuilder("")
        Dim Update As New StringBuilder("")
        Dim Estado = ""
        If EntradaRecibida.EntradaID = 0 Then
            'Generando QUERY
            Query.Append("INSERT INTO @TABLA VALUES (@VALORES)")
            Query.Replace("@TABLA", "TEntradas")
            Valores.Append(EntradaRecibida.ProductoID & ",")
            Valores.Append(EntradaRecibida.Cantidad)
            Query.Replace("@VALORES", Valores.ToString())
            'Estado = Query.ToString()
            'Insertar valor en la base de datos
        Else
            'Generando QUERY
            Query.Append("UPDATE @TABLA SET @VALORES WHERE @CLAVE")
            Query.Replace("@TABLA", "TEntradas")
            Update.Append("ProductoID = " & EntradaRecibida.ProductoID & ", ")
            Update.Append("Cantidad = " & EntradaRecibida.Cantidad)
            Query.Replace("@VALORES", Update.ToString())
            Query.Replace("@CLAVE", "EntradaID = " & EntradaRecibida.EntradaID)
            'Estado = Query.ToString()
            'Actualizar el datos en la base de datos
        End If



        If EjecutarSQL(Query.ToString()) Then
            Estado = "Base de datos afectada con exito!"
        Else
            Estado = "No se pudo afectar la base de datos"
        End If

        Return Estado
    End Function


    Public Function ManipularSalida(ByVal SalidaRecibida As Salida)
        Dim Query As New StringBuilder("")
        Dim Valores As New StringBuilder("")
        Dim Update As New StringBuilder("")
        Dim Estado = ""
        If SalidaRecibida.SalidaID = 0 Then
            'Generando QUERY
            Query.Append("INSERT INTO @TABLA VALUES (@VALORES)")
            Query.Replace("@TABLA", "TSalidas")
            Valores.Append(SalidaRecibida.ProductoID & ",")
            Valores.Append(SalidaRecibida.Cantidad)
            Query.Replace("@VALORES", Valores.ToString())
            'Estado = Query.ToString()
            'Insertar valor en la base de datos
        Else
            'Generando QUERY
            Query.Append("UPDATE @TABLA SET @VALORES WHERE @CLAVE")
            Query.Replace("@TABLA", "TSalidas")
            Update.Append("ProductoID = " & SalidaRecibida.ProductoID & ", ")
            Update.Append("Cantidad = " & SalidaRecibida.Cantidad)
            Query.Replace("@VALORES", Update.ToString())
            Query.Replace("@CLAVE", "SalidaID = " & SalidaRecibida.SalidaID)
            'Estado = Query.ToString()
            'Actualizar el datos en la base de datos
        End If

        If EjecutarSQL(Query.ToString()) Then
            Estado = "Base de datos afectada con exito!"
        Else
            Estado = "No se pudo afectar la base de datos"
        End If

        Return Estado
    End Function

End Class
