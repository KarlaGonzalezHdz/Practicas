<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout/Layout.Master" CodeBehind="Versiones.aspx.vb" Inherits="Rehabilitacion.Versiones" %>
   

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <link href="../css/style_nosotros.css" rel="stylesheet" />
    <script src="../js/MiLibreriaNosotros.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <main>
        <div class="container">
            <div class="informacion">
                <h1 class="text-center">VERSIONES</h1>
                <div  style="text-align: center;">
                    <img src="../images/about.jpg" class="img-fluid " style="text-align: center;" alt="Responsive image">
                </div>
                <p class="mt-5"><b>En esta sección verás un poco sobre las primeras versiones que nuestro sitio ha tenido para que conozcas todo el desarrollo y crecimiento que el sitio ha tenido. </b></p>
            </div>
            <div class="botones ml-5 mt-5" style="text-align: center;">
                <button type="button" Onclick="MostrarOcultar()" value="Ocultar" id="btn1"
                    class="btn btn-outline-primary btn-lg ml-5 ">VERSION 1 </button>
                <button type="button" Onclick="MostrarOcultar2()" value="Ocultar" id="btn2"
                    class="btn btn-outline-primary btn-lg ml-5 ">VERSION 2 </button>
                <button type="button" Onclick="MostrarOcultar3()" value="Ocultar" id="btn3"
                    class="btn btn-outline-primary btn-lg ml-5">VERSION 3</button> <br /><br />
               
            </div>
            <div class="lemas">
                <section id="Lema2" style="display: none;">
                    <div class="col mb-4 ">
                        <div class="card mt-5">
                            <img src="../images/Version2.JPG" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h1 class="card-title" style="text-align: center;">Version 2</h1> <hr>
                                <p class="card-text">Posteriormente en el módulo 4 se vio Javascript por lo cual, en lo personal , quise continuar con el proyecto de Rehabilitacion debido a que queria complementar un poco mas el sitio Rehabilitación, en esta version se realizaron modificaciones dejando solo 3 secciones principales: </p> 
                                <ul>
                                    <li>El Menú principal</li>
                                    <li>Cuerpo / Informacion</li> <br>
                                        <p>Se agregaron más paginas de informacion:</p>
                                        <ul>
                                            <li>Inicio</li>
                                            <li>Nosotros</li>
                                            <li>Programas y Talleres</li>
                                            <li>Galeria</li>
                                            <li>Tratamiento</li>
                                            <li>Historias</li>
                                            <li>Contacto</li>
                                        </ul> <br>
                                    <li>Footer</li>
                                </ul>
                                <p class="card-text">En la segunda version, se crearon más paginas, pero tambien se hizo el sitio más dinamico con ayuda de Javascript en donde se crearon eventos, se simulo el registro de datos, donde se podia confirmar, y simular que los datos se guardaban correctamente</p> 
                                <br>
                            </div>
                        </div>
                    </div>
                </section>
                <section id="Lema" style="display: none;">
                    <div class="col mb-4">
                        <div class="card  mt-5">
                            <img src="../images/Version1.JPG" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h1 class="card-title" style="text-align: center;">Version 1</h1> <hr>
                                <p class="card-text">La primera version del sitio Rehabilitación constaba de 4 secciones principales: </p> 
                                <ul>
                                    <li>El Menú principal</li>
                                    <li>Menu lateral</li>
                                    <li>Cuerpo / Informacion</li> <br>
                                        <p>En un principio habia 6 secciones las cuales son:</p>
                                        <ul>
                                            <li>Inicio</li>
                                            <li>Nosotros</li>
                                            <li>Programas y Talleres</li>
                                            <li>Galeria</li>
                                            <li>Contacto</li>
                                        </ul> <br>
                                    <li>Footer</li>
                                </ul>
                                <p class="card-text">Este sitio solo estaba hecho con las herramientas que se vieron en el Módulo 3, los cuales son <strong> HTML y CSS </strong> con un poco de ayuda de la libreria de  <strong>Bootstrap</strong><br> Cabe mencionar que en este modulo solo fue diseño, no tenia ninguna funcionalidad, solo se formo el esqueleto del sitio Rehabilitacion.</p> 
                                <br>
                        </div>
                    </div>
                </section>
                <section id="Lema3" style="display: none;">
                    <div class="col mb-4">
                        <div class="card  mt-5">
                            <img src="../images/Version2.JPG" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Version tres</h5>
                                <p class="card-text">Posteriormente en el módulo 5 se vio Base de datos (SQL) y Visual Basic por lo cual, en lo personal , quise continuar con el proyecto de Rehabilitacion debido a que queria complementar un poco mas el sitio Rehabilitación, en esta version se realizaron modificaciones dejando solo 3 secciones principales: </p> 
                                <ul>
                                    <li>El Menú principal</li>
                                    <li>Cuerpo / Informacion</li> <br>
                                        <p>Se agregaron más paginas de informacion:</p>
                                        <ul>
                                            <li>Inicio</li>
                                            <li>Nosotros</li>
                                            <li>Programas y Talleres</li>
                                            <li>Galeria</li>
                                            <li>Tratamiento</li>
                                            <li>Historias</li>
                                            <li>Contacto</li>
                                        </ul> <br>
                                    <li>Footer</li>
                                </ul>
                                <p class="card-text">En la actual version, se continuaron con las paginas, con el sitio más dinamico con ayuda de Javascript en donde se crearon eventos y lo nuevo es que los datos ingresado en los diferentes formularios se guardan en una base de datos de SQL y se muestran exitosamente en el sitio web.</p> 
                                <br>
                            </div>
                        </div>
                    </div>
                </section>
            
            </div>
        </div>
    </main>
</asp:Content>
