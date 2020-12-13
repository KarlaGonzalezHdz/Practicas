<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout/Layout.Master" CodeBehind="Contacto.aspx.vb" Inherits="Rehabilitacion.Contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/style_programas.css" rel="stylesheet" />

    <script src="../js/MiLibreriaContacto.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <div class="container">

            <h1 class="text-center mt-5">VISITANOS</h1>
            <p>
                Si necesitas acudir a nuestras instalaciones te recomendamos registrar a las personas que van a
                acudir al instituto para registrar las entradas , salidas y necesidades que se tienen en el
                instituto.
            </p>
            <div id="formula">
                <label for="SelectVisita">Visita</label>
                <asp:DropDownList ID="SelectVisita" runat="server" CssClass="form-control form-control-sm">
                    <asp:ListItem Value="0">Nueva Visita</asp:ListItem>
                </asp:DropDownList>
                <label for="InputNombre" class="col-form-label">Nombre del visitante:</label>
                <asp:TextBox ID="InputNombre" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                <label for="InputCorreo" class="col-form-label">Correo del visitante:</label>
                <asp:TextBox ID="InputCorreo" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                <label for="InputTelefono" class="col-form-label">Telefono del visitante:</label>
                <asp:TextBox ID="InputTelefono" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                <label for="InputDireccion" class="col-form-label">Direccion del visitante:</label>
                <asp:TextBox ID="InputDireccion" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                <label for="InputAsunto" class="col-form-label">Asunto  del visitante:</label>
                <asp:TextBox ID="InputAsunto" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                <label for="InputMensaje" class="col-form-label">Mensaje  del visitante:</label>
                <asp:TextBox ID="InputMensaje" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                <br />

                <div class="text-center">
                    <asp:Button runat="server" type="reset" Text="Borrar" Cssclass="btn   btn-secondary mr-5"></asp:Button>
                    <asp:Button ID="ButtonSend" runat="server"   Text="Enviar" CssClass="btn btn-info mr-5"></asp:Button>
                    <button type="button" onclick="Validar()" class="btn btn-info mr-5">Confirmar Visita</button>
                </div>
                <div>
                    <asp:Label ID="LogEstado" runat="server" Text="Listo..."></asp:Label>
                </div>
            </div>

            <div id="Result" hidden>
                <h4>Lista de Registros de proximas visitas a las instalaciones</h4>

                <div class="text-center">
                    <asp:GridView ID="TablaVisitas" runat="server" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="0px" CssClass="table table-hover table-sm" HorizontalAlign="Center">
                        <HeaderStyle BackColor="#0033CC" ForeColor="White" HorizontalAlign="Center" />
                    </asp:GridView>
                </div>
            </div>

        </div>
    </main>
    <br>
</asp:Content>
