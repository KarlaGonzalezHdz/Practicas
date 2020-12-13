Imports iTextSharp.text.pdf
Imports iTextSharp.tool.xml
Imports System.IO
Imports System.Data.SqlClient


Public Class ControlDocument
    Public Function CrearPDF(ByVal UsuarioID As Integer)
        Dim DB As New ControlDB
        Dim User = DB.ObtenerDatos("SELECT * FROM TUsuario WHERE UsuarioID =  " & UsuarioID)

        Dim Estilo = "<style>p{color: red;font-family: Arial, Helvetica, sans-serif;}h1.ejemplo{text-align: center;}</style>"
        Dim PathFolder = "C:\Docs\"
        Dim FileName = "Doc"
        Dim Plantilla As String = "@Estilo<p>Datos de usuario</p><table><tr><th>ID</th><th>Nombre</th><th>Paterno</th><th>Materno</th><th>Correo</th><th>Descripcion</th></tr><tr><td>@ID</td><td>@Nombre</td><td>@Paterno</td><td>@Materno</td><td>@Correo</td><td>@Descripcion</td></tr></table>"
        Dim Body As New StringBuilder
        Body.Append(Plantilla)
        Body.Replace("@Estilo", Estilo)
        Body.Replace("@ID", User.UsuarioID)
        Body.Replace("@Nombre", User.UsuarioNombre)
        Body.Replace("@Paterno", User.UsuarioPaterno)
        Body.Replace("@Materno", User.UsuarioMaterno)
        Body.Replace("@Correo", User.UsuarioCorreo)
        Body.Replace("@Descripcion", User.UsuarioDescripcion)

        Dim PathTemp = PathFolder & FileName & UsuarioID & ".pdf"
        Dim SR As New StringReader(Body.ToString)

        Dim DocumentPDF As New iTextSharp.text.Document(iTextSharp.text.PageSize.A4, 10.0F, 10.0F, 10.0F, 10.0F)
        Dim Writer As PdfWriter = PdfWriter.GetInstance(DocumentPDF, New FileStream(PathTemp, FileMode.Create))
        DocumentPDF.Open()
        XMLWorkerHelper.GetInstance.ParseXHtml(Writer, DocumentPDF, SR)
        DocumentPDF.Close()

    End Function
End Class
