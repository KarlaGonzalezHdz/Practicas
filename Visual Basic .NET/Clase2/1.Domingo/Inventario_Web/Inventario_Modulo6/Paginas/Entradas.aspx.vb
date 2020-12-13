Public Class Entradas
    Inherits System.Web.UI.Page

    Dim Contador As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack Then
            Contador = Contador
        End If
    End Sub

    Protected Sub ButtonRegistrar_Click(sender As Object, e As EventArgs) Handles ButtonRegistrar.Click
        Dim NuevaEntrada As New Entrada
        NuevaEntrada.EntradaID = 0
        NuevaEntrada.ProductoID = SelectProducto.SelectedValue
        NuevaEntrada.Cantidad = InputCantidad.Text
        Dim BaseDatos As New ControlBaseDeDatos
        Dim Resultado = BaseDatos.ManipularEntrada(NuevaEntrada)
        LogEstado.Text = Resultado

        'Dim Producto = SelectProducto.SelectedValue
        'Dim Cantidad = InputCantidad.Text
    End Sub
End Class