Public Class Entradas
    Inherits System.Web.UI.Page


    Dim Contador As Integer
    Dim BaseDatos As New ControlBaseDeDatos
    Dim DatosProductos As New DataTable
    Dim DatosEntradas As New DataTable
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DatosEntradas = New DataTable
        BaseDatos.ObtenerDatos("SELECT * FROM TProductos").Fill(DatosProductos)
        SelectProducto.DataSource = DatosProductos
        SelectProducto.DataValueField = "ProductoID"
        SelectProducto.DataTextField = "Nombre"
        SelectProducto.DataBind()
        If IsPostBack <> True Then
            BaseDatos.ObtenerDatos("SELECT * FROM TEntradas").Fill(DatosEntradas)
            SelectEntrada.DataSource = DatosEntradas
            SelectEntrada.DataValueField = "EntradaID"
            SelectEntrada.DataTextField = "EntradaID"
            SelectEntrada.DataBind()

            SelectEntrada.Items.Add(New ListItem("Nuevo", "0"))

            FillEntradas()
        End If
    End Sub
    Sub FillEntradas()
        TablaEntradas.DataSource = New DataTable
        BaseDatos.ObtenerDatos("SELECT * FROM TEntradas").Fill(DatosEntradas)
        TablaEntradas.DataSource = DatosEntradas
        TablaEntradas.DataBind()
    End Sub

    Protected Sub ButtonRegistrar_Click(sender As Object, e As EventArgs) Handles ButtonRegistrar.Click
        Dim NuevaEntrada As New Entrada
        NuevaEntrada.EntradaID = SelectEntrada.SelectedValue
        NuevaEntrada.ProductoID = SelectProducto.SelectedValue
        NuevaEntrada.Cantidad = InputCantidad.Text
        Dim BaseDatos As New ControlBaseDeDatos
        Dim Resultado = BaseDatos.ManipularEntrada(NuevaEntrada)
        LogEstado.Text = Resultado
        FillEntradas()
        'Dim Producto = SelectProducto.SelectedValue
        'Dim Cantidad = InputCantidad.Text
    End Sub
End Class