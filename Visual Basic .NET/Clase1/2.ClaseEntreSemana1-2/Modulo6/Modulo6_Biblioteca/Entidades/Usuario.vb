Imports System.Security.Cryptography
Imports System.Text

Public Class Usuario
    'Propiedades o atributos , funciones

    'REGISTRO
    Public Nombre As String = String.Empty
    Public Paterno As String = String.Empty
    Public Materno As String = String.Empty
    Public Correo As String = String.Empty
    Public Contraseña As String = String.Empty
    Public Password As String = "Admin123"

    'LOGIN
    Public CorreoLogin As String = String.Empty
    Public ContraseñaLogin As String = String.Empty


    Public Function Encriptar(ByVal Password As String)
        Dim MD5 As New MD5CryptoServiceProvider
        Dim bytValue() As Byte
        Dim bytHash() As Byte
        Dim i As Integer
        Dim PasswordFinal As String = String.Empty



        bytValue = Encoding.UTF8.GetBytes("test")
        bytHash = MD5.ComputeHash(bytValue)

        For i = 0 To bytHash.Length - 1
            PasswordFinal &= bytHash(i).ToString("x").PadLeft(2, "0")

        Next


        Return PasswordFinal

    End Function

End Class


