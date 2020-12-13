Public Class Usuario

    Dim _usuarioID As Integer
    Dim _usuarioNombre As String
    Dim _usuarioPaterno As String
    Dim _usuarioMaterno As String
    Dim _usuarioCorreo As String
    Dim _usuarioDescripcion As String

    Public Property UsuarioID As Integer
        Get
            Return _usuarioID
        End Get
        Set(value As Integer)
            _usuarioID = value
        End Set
    End Property

    Public Property UsuarioNombre As String
        Get
            Return _usuarioNombre
        End Get
        Set(value As String)
            _usuarioNombre = value
        End Set
    End Property

    Public Property UsuarioPaterno As String
        Get
            Return _usuarioPaterno
        End Get
        Set(value As String)
            _usuarioPaterno = value
        End Set
    End Property

    Public Property UsuarioMaterno As String
        Get
            Return _usuarioMaterno
        End Get
        Set(value As String)
            _usuarioMaterno = value
        End Set
    End Property

    Public Property UsuarioCorreo As String
        Get
            Return _usuarioCorreo
        End Get
        Set(value As String)
            _usuarioCorreo = value
        End Set
    End Property

    Public Property UsuarioDescripcion As String
        Get
            Return _usuarioDescripcion
        End Get
        Set(value As String)
            _usuarioDescripcion = value
        End Set
    End Property
End Class
