Public Class CrearPDF
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim Documento As New ControlDocument()
        Documento.CrearPDF(TextBox1.Text)


    End Sub
End Class