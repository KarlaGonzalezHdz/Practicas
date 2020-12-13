Imports System.Data.SqlClient
Imports ProjectDocument.My



Public Class ControlDB
    Private MiConexion = New SqlConnection(Settings.MiConexion)

    Private Function Conectar() As Boolean
        Dim Conectado As Boolean
        Try
            MiConexion.Open()
            Conectado = True
        Catch ex As Exception
            Conectado = False
        End Try
        Return Conectado
    End Function

    Private Function Desconectar() As Boolean
        Dim Conectado As Boolean
        Try
            MiConexion.Close()
            Conectado = True
        Catch ex As Exception
            Conectado = False
        End Try
        Return Conectado
    End Function

    Public Function ObtenerDatos(ByVal Query) As Usuario
        Dim User As New Usuario
        Dim Data As SqlDataReader
        Dim MiComando As New SqlCommand(Query, MiConexion)
        If Conectar() Then
            Data = MiComando.ExecuteReader()
            If Data.Read() = True Then
                User.UsuarioID = Data("UsuarioID")
                User.UsuarioNombre = Data("UsuarioNombre")
                User.UsuarioPaterno = Data("UsuarioPaterno")
                User.UsuarioMaterno = Data("UsuarioMaterno")
                User.UsuarioCorreo = Data("UsuarioCorreo")
                User.UsuarioDescripcion = Data("UsuarioDescripcion")
            End If

        End If
        Return User
    End Function

End Class
