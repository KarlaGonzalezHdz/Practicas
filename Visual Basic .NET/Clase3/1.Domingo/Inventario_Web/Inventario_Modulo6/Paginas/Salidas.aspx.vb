Public Class Salidas
    Inherits System.Web.UI.Page

    Dim Contador As Integer
    Dim BaseDatos As New ControlBaseDeDatos
    Dim DatosProductos As New DataTable
    Dim DatosSalidas As New DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DatosSalidas = New DataTable
        BaseDatos.ObtenerDatos("SELECT * FROM TProductos").Fill(DatosProductos)
        SelectProducto.DataSource = DatosProductos
        SelectProducto.DataValueField = "ProductoID"
        SelectProducto.DataTextField = "Nombre"
        SelectProducto.DataBind()
        If IsPostBack <> True Then
            BaseDatos.ObtenerDatos("SELECT * FROM TSalidas").Fill(DatosSalidas)
            SelectSalida.DataSource = DatosSalidas
            SelectSalida.DataValueField = "SalidaID"
            SelectSalida.DataTextField = "SalidaID"
            SelectSalida.DataBind()
            SelectSalida.Items.Add(New ListItem("Nuevo", "0"))
            FillSalidas()
        End If
    End Sub

    Sub FillSalidas()
        TablaSalidas.DataSource = New DataTable
        BaseDatos.ObtenerDatos("SELECT * FROM TSalidas").Fill(DatosSalidas)
        TablaSalidas.DataSource = DatosSalidas
        TablaSalidas.DataBind()
    End Sub

    Protected Sub ButtonRegistrarSalida_Click(sender As Object, e As EventArgs) Handles ButtonRegistrarSalida.Click
        Dim NuevaSalida As New Salida
        NuevaSalida.SalidaID = SelectSalida.SelectedValue
        NuevaSalida.ProductoID = SelectProducto.SelectedValue
        NuevaSalida.Cantidad = InputCantidad.Text
        Dim BaseDatos As New ControlBaseDeDatos
        Dim Resultado = BaseDatos.ManipularSalida(NuevaSalida)
        LogEstado.Text = Resultado
    End Sub
End Class