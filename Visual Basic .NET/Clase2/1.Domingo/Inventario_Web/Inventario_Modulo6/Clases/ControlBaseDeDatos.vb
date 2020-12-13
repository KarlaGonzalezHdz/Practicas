Imports System.Data.SqlClient

Public Class ControlBaseDeDatos

    Private Function Conexion()
        Dim Resultado = ""
        Dim ConexionSQL = New SqlConnection("Data Source=LENOVOM83\SQLEXPRESS01;Initial Catalog=InventarioModulo6;Integrated Security=True")
        ConexionSQL.Open()
        Resultado = "Conexion exitosa"
        ConexionSQL.Close()
        Return Resultado
    End Function

    Public Function ManipularEntrada(ByVal EntradaRecibida As Entrada)
        Dim Query As New StringBuilder()
        Dim Estado = ""
        If EntradaRecibida.EntradaID = 0 Then
            Estado = Conexion()
        Else
            'Actualizar el datos en la base de datos
        End If
        Return Estado
    End Function

    Public Function ManipularSalida(ByVal SalidaRecibida As Salida)
        'Completar Logica
        Dim Estado = ""
        If SalidaRecibida.SalidaID = 0 Then
            Estado = Conexion()
        Else
            'Actualizar el datos en la base de datos
        End If
        Return Estado

    End Function
End Class
