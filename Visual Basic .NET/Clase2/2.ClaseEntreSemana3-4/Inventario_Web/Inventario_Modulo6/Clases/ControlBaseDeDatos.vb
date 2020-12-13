Imports System.Data.SqlClient

Public Class ControlBaseDeDatos
    'Definicion Global (Modo de Acceso)
    Dim ConexionSQL = New SqlConnection(My.Settings.ConexionDB)

    Private Function ConexionTest()
        Dim Resultado = ""
        'Dim ConexionSQL = New SqlConnection("Data Source=LENOVOM83\SQLEXPRESS01;Initial Catalog=InventarioModulo6;Integrated Security=True")
        'ConexionSQL = New SqlConnection(My.Settings.ConexionDB)
        ConexionSQL.Open()
        Resultado = "Conexion exitosa"
        ConexionSQL.Close()
        Return Resultado
    End Function

    Private Function Conectar() As Boolean
        Dim Estado As Boolean = False
        Try
            ' Acciones que se esperan que pudieran generar un error.
            Estado = ConexionSQL.Open()

        Catch ex As Exception
            'Primer accion
            Estado = False
        End Try

        Return Estado
    End Function


    Private Function Desconectar() As Boolean
        Dim Estado As Boolean = False
        Try
            ' Acciones que se esperan que pudieran generar un error.
            Estado = ConexionSQL.Close()

        Catch ex As Exception
            'Primer accion
            Estado = False
        End Try

        Return Estado
    End Function

    Private Function EjecutarSQL(ByVal Query As String) As Boolean
        Dim Resultado As Boolean = False

        If Conectar() Then
            'Ejecuta una instrucción SQL. 
            Try
                'SQL COMMAND (INTRUCCION A EJECUTAR , CONEXION DE LA BD)
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

        Else
            'Devuelve un mensaje de error.
            Resultado = False
        End If

        Return Resultado
    End Function



    Public Function ManipularEntrada(ByVal EntradaRecibida As Entrada)
        Dim Query As New StringBuilder()
        Dim Estado = ""
        If EntradaRecibida.EntradaID = 0 Then
            Estado = ConexionTest()
        Else
            'Actualizar el datos en la base de datos
        End If
        Return Estado
    End Function

    Public Function ManipularSalida(ByVal SalidaRecibida As Salida)
        'Completar Logica
        Dim Estado = ""
        If SalidaRecibida.SalidaID = 0 Then
            Estado = ConexionTest()
        Else
            'Actualizar el datos en la base de datos
        End If
        Return Estado

    End Function
End Class
