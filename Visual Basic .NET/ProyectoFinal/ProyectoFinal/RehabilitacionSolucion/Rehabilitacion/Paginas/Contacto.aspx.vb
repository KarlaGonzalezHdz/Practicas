Public Class Contacto
    Inherits System.Web.UI.Page

    Dim BaseDatos As New ControlBaseDatos
    Dim DatosEntradas As New DataTable
    Dim DatosProductos As New DataTable
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack <> True Then


            FillEntradas()
        End If
    End Sub

    Sub FillEntradas()
        TablaVisitas.DataSource = New DataTable
        BaseDatos.ObtenerDatos("SELECT * FROM Visitas").Fill(DatosEntradas)
        TablaVisitas.DataSource = DatosEntradas
        TablaVisitas.DataBind()
    End Sub

    Protected Sub ButtonSend_Click(sender As Object, e As EventArgs) Handles ButtonSend.Click
        Dim VisitaNueva As New Visita
        VisitaNueva.VisitaID = SelectVisita.SelectedValue
        VisitaNueva.Nombre = InputNombre.Text
        VisitaNueva.Correo = InputCorreo.Text
        VisitaNueva.Telefono = InputTelefono.Text
        VisitaNueva.Direccion = InputDireccion.Text
        VisitaNueva.Asunto = InputAsunto.Text
        VisitaNueva.Mensaje = InputMensaje.Text
        Dim Resultado = BaseDatos.Visitas(VisitaNueva)
        LogEstado.Text = Resultado
        FillEntradas()

    End Sub
End Class