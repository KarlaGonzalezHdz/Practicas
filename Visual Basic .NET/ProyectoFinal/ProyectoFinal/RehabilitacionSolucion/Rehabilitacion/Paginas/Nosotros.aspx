<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout/Layout.Master" CodeBehind="Nosotros.aspx.vb" Inherits="Rehabilitacion.Nosotros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/style_nosotros.css" rel="stylesheet" />
    <script src="../js/MiLibreriaNosotros.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <div class="container">
            <div class="informacion">
                <h1 class="text-center">NOSOTROS</h1>
                <div>
                    <img src="../images/img38.jpg" class="img-fluid" alt="Responsive image">
                </div>
                <p class="mt-5"><b>Rehabilitación es una Asociación de Beneficencia Privada (A.B.P.) con el objetivo de brindar
                        servicios médicos, educación especial y desarrollo humano a niños y jóvenes con parálisis
                        cerebral.</b></p>
            </div>
            <div class="botones ml-5 mt-5">
                <button type="button" Onclick="MostrarOcultar()" value="Ocultar" id="btn1"
                    class="btn btn-outline-primary btn-lg ml-5 ">VISION</button>
                <button type="button" Onclick="MostrarOcultar2()" value="Ocultar" id="btn2"
                    class="btn btn-outline-primary btn-lg ml-5 ">MISION</button>
                <button type="button" Onclick="MostrarOcultar3()" value="Ocultar" id="btn3"
                    class="btn btn-outline-primary btn-lg ml-5">NUESTRA FILOSOFIA</button>
                <button type="button" Onclick="MostrarOcultar4()" value="Ocultar" id="btn4"
                    class="btn btn-outline-primary btn-lg ml-5 ">POLITICA DE CALIDAD</button>
            </div>
            <div class="lemas">
                <section id="Lema2" style="display: none;">
                    <div class="col mb-4 ">
                        <div class="card mt-5">
                            <img src="../images/img16.JPG" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">MISIÓN</h5>
                                <p class="card-text">Nos dedicamos a mejorar la calidad de vida de niños y jóvenes
                                    con parálisis cerebral hasta su edad adulta, incluyendo a sus familias; a través
                                    de un modelo de atención integral que impulsa su máximo nivel de autonomía y la
                                    inclusión a su entorno</p> <br>
                            </div>
                        </div>
                    </div>
                </section>
                <section id="Lema" style="display: none;">
                    <div class="col mb-4">
                        <div class="card  mt-5">
                            <img src="../images/img18.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">VISIÓN</h5>
                                <p class="card-text">Ser un referente en México por la forma de atender y percibir a
                                    los niños, jóvenes y adultos con parálisis cerebral y por la prevención,
                                    innovación y generación de conocimiento para lograr una sociedad más justa e
                                    incluyente.</p> <br>
                            </div>
                        </div>
                    </div>
                </section>
                <section id="Lema3" style="display: none;">
                    <div class="col mb-4">
                        <div class="card  mt-5">
                            <img src="../images/img17.JPG" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">NUESTRA FILOSOFÍA</h5>
                                <p class="card-text">Brindar un servicio de alta calidad con empleados que se
                                    distingan por su actitud de servicio a los demás, por trasmitir calidez a través
                                    de sus acciones y por tener una cultura de mejora continua y austeridad; donde
                                    cada uno de ellos fomente en todos los que integran la familia del Nuevo
                                    Amanecer el interés y compromiso hacia las personas con discapacidad.</p>
                            </div>
                        </div>
                    </div>
                </section>
                <section id="Lema4" style="display: none;">
                    <div class="col mb-4">
                        <div class="card  mt-5">
                            <img src="../images/img19.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">POLÍTICA DE CALIDAD</h5>
                                <p class="card-text">Proporcionar a los niños, jóvenes y adultos, incluyendo a sus
                                    familias, una atención integral, promoviendo en la institución una cultura de
                                    servicio profesional y humano, con la filosofía de mejora continua, a través de
                                    programas especializados, el trabajo en equipo del personal, el apoyo de los
                                    benefactores y la comunidad en general.</p>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </main>
    <br>
</asp:Content>
