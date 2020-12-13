Public Class Index
    Inherits System.Web.UI.Page


    Dim BaseDatos As New ControlBaseDatos
    Dim DatosEntradas As New DataTable
    Dim DatosProductos As New DataTable

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If IsPostBack <> True Then


            FillEntradas()
        End If
    End Sub

    Sub FillEntradas()
        TablaOrganizadores.DataSource = New DataTable
        BaseDatos.ObtenerDatos("SELECT Nombre,  Correo, Telefono , Mensaje FROM Organizadores").Fill(DatosEntradas)
        TablaOrganizadores.DataSource = DatosEntradas
        TablaOrganizadores.DataBind()
    End Sub

    Protected Sub ButtonSend_Click(sender As Object, e As EventArgs) Handles ButtonSend.Click
        Dim OrganizadorNuevo As New Organizador
        OrganizadorNuevo.OrganizadorID = SelectOrganizador.SelectedValue
        OrganizadorNuevo.Nombre = InputNombre.Text
        OrganizadorNuevo.Correo = InputCorreo.Text
        OrganizadorNuevo.Telefono = InputTelefono.Text
        OrganizadorNuevo.Mensaje = InputMensaje.Text
        Dim Resultado = BaseDatos.Organizadores(OrganizadorNuevo)
        LogEstado.Text = Resultado
        FillEntradas()

    End Sub


End Class