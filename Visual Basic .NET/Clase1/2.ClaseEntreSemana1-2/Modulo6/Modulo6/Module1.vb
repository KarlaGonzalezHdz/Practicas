Imports Modulo6_Biblioteca

Module Module1

    Sub Main()
        'Dim Rutina = New Modulo6_Biblioteca.Herramientas
        'Rutina.MiRutina()
        'Console.Write(Rutina.NombreCompleto)
        'Console.ReadKey()


        Dim DatosUsuario = New Usuario
        Console.WriteLine("--------------------REGISTRO DE USUARIO.---------------------- ")
        'Nombre Usuario

        'Obtener datos por medio del teclado.
        Console.Write("Ingresa el nombre de usuario: ")
        DatosUsuario.Nombre = Console.ReadLine

        If DatosUsuario.Nombre.Length < 5 Then


            Console.Write("El nombre no puede tener menos de 5 caracteres")
            Console.Write("Ingresa el nombre de usuario: ")
            DatosUsuario.Nombre = Console.ReadLine

        Else

            'Apellido Paterno Usuario
            'Obtener datos por medio del teclado.
            Console.Write("Ingresa el apellido paterno de usuario: ")
            DatosUsuario.Paterno = Console.ReadLine

            If DatosUsuario.Paterno.Length < 5 Then
                Console.Write("El apellido paterno no puede tener menos de 5 caracteres")
                Console.Write("Ingresa el apellido paterno de usuario: ")
                DatosUsuario.Paterno = Console.ReadLine
            Else
                'Apellido Materno Usuario
                'Obtener datos por medio del teclado.
                Console.Write("Ingresa el apellido materno de usuario: ")
                DatosUsuario.Materno = Console.ReadLine

                If DatosUsuario.Materno.Length < 5 Then

                    Console.Write("El apellido materno no puede tener menos de 5 caracteres")
                    Console.Write("Ingresa el apellido materno de usuario: ")
                    DatosUsuario.Materno = Console.ReadLine

                Else
                    'Correo Usuario
                    Console.Write("Ingresa el correo de usuario: ")
                    DatosUsuario.Correo = Console.ReadLine

                    If DatosUsuario.Correo.Length < 10 Then
                        Console.Write("El correo no puede tener menos de 10 caracteres")
                        Console.Write("Ingresa el correo de usuario: ")
                        DatosUsuario.Correo = Console.ReadLine
                    Else
                        Console.Write("Ingresa la contraseña: ")
                        DatosUsuario.Contraseña = Console.ReadLine
                        If DatosUsuario.Contraseña.Length < 8 Then
                            Console.WriteLine("La contraseña no puede tener menos de 8 caracteres")
                            Console.Write("Ingresa la contraseña: ")
                            DatosUsuario.Contraseña = Console.ReadLine
                            If DatosUsuario.Contraseña.Length < 8 Then
                                Console.WriteLine("REGISTRO NO VALIDO.")
                            Else
                                Console.WriteLine("REGISTRO EXITOSO.")
                            End If
                        Else
                            Console.WriteLine("REGISTRO EXITOSO.")
                        End If

                    End If


                End If

            End If

        End If


        Console.WriteLine("-------------------- LOGIN ---------------------- ")

        'CORREO USUARIO
        Console.Write("Ingresa tu correo: ")
        DatosUsuario.CorreoLogin = Console.ReadLine

        'CONTRASEÑA USUARIO
        Console.Write("Ingresa tu contraseña: ")
        DatosUsuario.ContraseñaLogin = Console.ReadLine

        If DatosUsuario.CorreoLogin = DatosUsuario.Correo And DatosUsuario.ContraseñaLogin = DatosUsuario.Contraseña Then
            Console.WriteLine("BIENVENIDO " & DatosUsuario.Nombre & " " & DatosUsuario.Paterno & " " & DatosUsuario.Materno)
        Else
            Console.WriteLine("Error, Ingresaste tus credenciales incorrectamente.")
        End If

        Console.ReadKey()



    End Sub

End Module
