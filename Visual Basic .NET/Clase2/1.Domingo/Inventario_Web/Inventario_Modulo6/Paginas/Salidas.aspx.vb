Public Class Salidas
    Inherits System.Web.UI.Page

    Dim Contador As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack Then
            Contador = Contador
        End If
    End Sub

    Protected Sub ButtonRegistrarSalida_Click(sender As Object, e As EventArgs) Handles ButtonRegistrarSalida.Click
        Dim NuevaSalida As New Salida
        NuevaSalida.SalidaID = 0
        NuevaSalida.ProductoID = SelectProducto.SelectedValue
        NuevaSalida.Cantidad = InputCantidad.Text
        Dim BaseDatos As New ControlBaseDeDatos
        Dim Resultado = BaseDatos.ManipularSalida(NuevaSalida)
        LogEstado.Text = Resultado
    End Sub
End Class