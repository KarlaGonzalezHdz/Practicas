Imports Modulo6_Biblioteca

Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        MsgBox("Hola Mundo")
        'MsgBox("Hola Mundo", "Titutlo de ventana")
        'MsgBox("Hola Mundo", "Titutlo de ventana", MessageBoxIcon.Information)
        'Mensaje, Estilo , titulo , Ayuda , Contexto
        'MessageBoOptions.RightAlign
        MessageBox.Show(
            "Esto es una frase que informe el estado ",
            "Titulo de ventana",
            MessageBoxButtons.OKCancel,
            MessageBoxIcon.Warning,
            MessageBoxDefaultButton.Button1)


        Dim DatosUsuario As New Usuario

        MessageBox.Show(DatosUsuario.Encriptar(TextBox3.Text))

        Dim Contraseña = DatosUsuario.Encriptar(TextBox3.Text)

        MessageBox.Show(Contraseña)


    End Sub


End Class
