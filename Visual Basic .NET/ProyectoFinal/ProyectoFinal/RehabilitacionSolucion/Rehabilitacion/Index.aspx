<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Index.aspx.vb" Inherits="Rehabilitacion.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Rehabilitación</title>
    <link rel="icon" href="images/favicon.png" type="image/png" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/MiLibreriaIndex.js"></script>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
            <a class="navbar-brand " href="index.aspx">
                <img src="images/favicon.png" alt="logo de la aplicacion" width="40" height="40" />
                Rehabilitación
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto mx-auto mt-3 ">
                    <li class="nav-item">
                        <p><a class="nav-link  " href="index.aspx">Inicio </a></p>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="Paginas/nosotros.aspx">Nosotros</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="Paginas/Programas.aspx">Programas y talleres</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="Paginas/Galeria.aspx">Galeria</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Paginas/Tratamiento.aspx">Tratamiento</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Paginas/Historias.aspx">Historias</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Paginas/Contacto.aspx">Contacto</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"/>
                    <button class="btn btn-info my-2 my-sm-0 " type="submit">Buscar</button>
                </form>
            </div>
        </nav>
    </header>

    <main>
        <div>
            <!-- INFORMACIÓN-->
            <div class="text-center mt-3">
                <h1 class="LE">
                    <b>¡EL CAMINO HACIA UNA NUEVA VIDA, COMIENZA HOY MISMO!</b>
                </h1>
            </div>
            <!-- Carrousel-->
            <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/img0.jpg" class="d-block w-100" alt="..." />
                    </div>
                    <div class="carousel-item">
                        <img src="images/img1.jpg" class="d-block w-100" alt="..." />
                    </div>
                    <div class="carousel-item">
                        <img src="images/img2.jpg" class="d-block w-100" alt="..." />
                    </div>
                    <div class="carousel-item">
                        <img src="images/img3.jpg" class="d-block w-100" alt="..." />
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <!-- TARJETAS-->
            <div class="container">
                <form id="Entrada" runat="server">
                    <div id="tarjetas" class="">
                    </div>
                    <div class="mt-5 ">
                        <p class="mx-auto">
                            <b>¡Puedes ser gran parte de diferentes eventos y actividades, ingresa tus datos
                            y se parte de
                            Rehabilitacion! </b>
                        </p>
                        </div>
                        <div class="text-center mt-5">
                            <button type="button" data-toggle="modal" data-target="#exampleModal"
                                class="btn btn-primary btn-lg btn-block">
                                ¡UNETE COMO ORGANIZADOR!
                            </button>

                            <div>
                                <br />
                                <h1>Conoce a todos los organizadores de este mes:</h1>
                                <br />
                                <asp:GridView ID="TablaOrganizadores" runat="server" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="0px" CssClass="table table-hover table-sm" HorizontalAlign="Center">
                                    <HeaderStyle BackColor="#0033CC" ForeColor="White" HorizontalAlign="Center" />
                                </asp:GridView>
                            </div>

                        </div>

                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
                            aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">¡ÚNETE COMO VOLUNTARIO
                                        FESTEJANDO A LOS CUMPLEAÑEROS DEL MES!
                                        </h5>
                                        <button type="button" class="close" data-dismiss="modal"
                                            aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>

                                    <div class="modal-body">
                                        <div class="form-group">
                                            <p>
                                                Al integrarte al grupo de organización y logística del
                                                evento, una de tus tareas sería el gestionar recursos tanto
                                                para la fiesta como para que cada festejado tenga un
                                                regalito.
                                                <br />

                                                Forma parte de los momentos más memorables en la vida de
                                                nuestros alumnos, pasa un buen rato y acércate con tu
                                                familia y amigos a la causa.
                                                <br />

                                                **Si te interesa ser parte de la organización de estas
                                                fiestas para nuestros alumnos llena la siguiente forma:
                                                <br>
                                            </p>
                                            <label for="SelectOrganizador">Nuevo Organizador</label>
                                            <asp:DropDownList ID="SelectOrganizador" runat="server" CssClass="form-control form-control-sm">
                                                <asp:ListItem Value="0">Organizador</asp:ListItem>
                                            </asp:DropDownList>
                                            <label for="InputNombre" class="col-form-label">Nombre:</label>
                                            <asp:TextBox ID="InputNombre" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                                            <label for="Input" class="col-form-label">Correo:</label>
                                            <asp:TextBox ID="InputCorreo" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                                            <label for="InputTelefono" class="col-form-label">Telefono:</label>
                                            <asp:TextBox ID="InputTelefono" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="InputMensaje" class="col-form-label">Mensaje:</label>
                                            <asp:TextBox ID="InputMensaje" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="modal-footer">
                                        <input type="reset" class="btn btn-secondary" value="Borrar" />
                                        <asp:Button type="button" ID="ButtonSend" runat="server" Text="Enviar" CssClass="btn btn-info"></asp:Button>
                                        <hr />
                                        <div>
                                            <asp:Label ID="LogEstado" runat="server" Text="Listo..."></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </form>
            </div>
        </div>


    </main>


    <footer class="navbar-light" style="background-color: #e3f2fd;">
        <div class="row">
            <div class="col-lg-3  text-center ">
            </div>
            <div class="col-lg-3">
                <div class="text-center mt-5">
                    <a class="btn-footer" href="index.aspx">Inicio</a><br>
                    <br />
                    <a class="btn-footer" href="Paginas/nosotros.aspx">Nosotros</a><br>
                    <br />
                    <a class="btn-footer" href="Paginas/Contacto.aspx">Involucrate</a><br>
                    <br />
                    <a class="btn-footer" href="Paginas/Programas.aspx">programas</a><br>
                    <br />
                    <a class="btn-footer" href="Paginas/Galeria.aspx">Galeria</a><br>
                    <br />
                </div>

            </div>
            <div class="col-lg-3 ">
                <div class="text-center mt-5">
                    <a class="btn-footer" href="Paginas/Contacto.aspx">Contacto</a><br/>
                    <br/>
                    <a class="btn-footer" href="Paginas/Tratamiento.aspx">Tratamiento</a><br/>
                    <br/>
                    <a class="btn-footer" href="Paginas/Historias.aspx">Historias</a><br/>
                    <br/>
                    <a class="btn-footer" href="Paginas/Versiones.aspx">Versiones</a><br/> <br/>
                </div>

            </div>
            <div class="col-lg-3">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3594.378189770176!2d-100.31560468500084!3d25.725004116396907!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x86629452551ea79f%3A0x66e03550ec5730cb!2sFacultad%20de%20Ingenier%C3%ADa%20Mec%C3%A1nica%20y%20El%C3%A9ctrica!5e0!3m2!1ses!2smx!4v1593386642063!5m2!1ses!2smx"
                    class="text-center" width="90%" height="100%" frameborder="0" style="border: 0;" allowfullscreen=""
                    aria-hidden="false" tabindex="0"></iframe>
            </div>
        </div>
        <div class="footer-copyright text-center py-3">
            © 2020 Copyright:
            <a href="index.html">Karla Josefina Gonzalez Hernandez | Modulo 7  | Visual Basic | 8076168 | Educación
                Continua</a>
        </div>
    </footer>
</body>
</html>
