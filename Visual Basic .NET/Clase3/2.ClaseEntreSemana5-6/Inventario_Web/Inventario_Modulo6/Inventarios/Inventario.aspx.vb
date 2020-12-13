Public Class Inventario
    Inherits System.Web.UI.Page
    Dim BaseDatos As New ControlBaseDeDatos
    Dim DatosInventario As New DataTable
    Dim DatosInventarios As New DataTable
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DatosInventarios = New DataTable
        DatosInventarios = New DataTable
        BaseDatos.ObtenerDatos("SELECT * FROM V_Stock").Fill(DatosInventario)
        TablaInventarios.DataSource = New DataTable
        TablaInventarios.DataSource = DatosInventario
        TablaInventarios.DataBind()

    End Sub

End Class