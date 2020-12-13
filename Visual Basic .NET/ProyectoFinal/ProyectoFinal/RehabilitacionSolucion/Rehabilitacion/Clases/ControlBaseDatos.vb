Imports System.Data.SqlClient



Public Class ControlBaseDatos
    'Definicion Global (Por modo de acceso)
    Dim ConexionSQL = New SqlConnection(My.Settings.ConexionDB)


    Private Function Conectar() As Boolean
        Dim Estado As Boolean
        Try
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
        Dim Resultado As Boolean = False
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

    Public Function Organizadores(ByVal EntradaRecibida As Organizador)
        Dim Query As New StringBuilder("")
        Dim Valores As New StringBuilder("")
        Dim Update As New StringBuilder("")
        Dim Estado = ""
        If EntradaRecibida.OrganizadorID = 0 Then
            Query.Append("INSERT INTO @TABLA VALUES (@VALORES)")
            Query.Replace("@TABLA", "Organizadores")
            Valores.Append("'" & EntradaRecibida.Nombre & " ' " & ",")
            Valores.Append("'" & EntradaRecibida.Correo & " ' " & ",")
            Valores.Append(" ' " & EntradaRecibida.Telefono & " ' " & ",")
            Valores.Append("'" & EntradaRecibida.Mensaje & " ' ")
            Query.Replace("@VALORES", Valores.ToString())
        Else

        End If


        If EjecutarSQL(Query.ToString()) Then
            Estado = "Agregado correctamente!"
        Else
            Estado = "No se logro el proceso, intente más tarde"
        End If

        Return Estado
    End Function

    Public Function Visitas(ByVal EntradaRecibida As Visita)
        Dim Query As New StringBuilder("")
        Dim Valores As New StringBuilder("")
        Dim Update As New StringBuilder("")
        Dim Estado = ""
        If EntradaRecibida.VisitaID = 0 Then
            Query.Append("INSERT INTO @TABLA VALUES (@VALORES)")
            Query.Replace("@TABLA", "Visitas")
            Valores.Append("'" & EntradaRecibida.Nombre & " ' " & ",")
            Valores.Append("'" & EntradaRecibida.Correo & " ' " & ",")
            Valores.Append(" ' " & EntradaRecibida.Telefono & " ' " & ",")
            Valores.Append(" ' " & EntradaRecibida.Direccion & " ' " & ",")
            Valores.Append(" ' " & EntradaRecibida.Asunto & " ' " & ",")
            Valores.Append("'" & EntradaRecibida.Mensaje & " ' ")
            Query.Replace("@VALORES", Valores.ToString())
        Else

        End If


        If EjecutarSQL(Query.ToString()) Then
            Estado = "Base de datos afectada con exito!"
        Else
            Estado = "No se pudo afectar la base de datos"
        End If

        Return Estado
    End Function


End Class
