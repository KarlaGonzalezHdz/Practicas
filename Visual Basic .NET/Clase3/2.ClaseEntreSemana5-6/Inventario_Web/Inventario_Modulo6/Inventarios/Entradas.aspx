<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout/Layout.Master" CodeBehind="Entradas.aspx.vb" Inherits="Inventario_Modulo6.Entradas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoDeLaPagina" runat="server">
    <h1>Entradas de Inventario</h1>
    <form id="Entrada" runat="server">
    <div class="row">
        <!--Primer Columna Registro de Entradas-->
        <div class="col-md-3 col-sm-12">
            <div class="card">
                <div class="card-body">
                        <label for="SelectEntrada">Folio Entrada</label>
                        <asp:DropDownList ID="SelectEntrada" runat="server" CssClass="form-control form-control-sm">
                            <asp:ListItem Value="0">Entrada Nueva</asp:ListItem>
                            <asp:ListItem Value="1">Valor Test</asp:ListItem>
                        </asp:DropDownList>
                        <label for="SelectProducto">Codigo de Producto</label>
                        <asp:DropDownList ID="SelectProducto" runat="server" CssClass="form-control form-control-sm">
                            <asp:ListItem Value="1">Valor 1</asp:ListItem>
                            <asp:ListItem Value="2">Valor 2</asp:ListItem>
                        </asp:DropDownList>
                        <label for="InputCantidad">Cantidad de entrada</label>
                        <asp:TextBox id="InputCantidad" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                        <asp:Button ID="ButtonRegistrar" runat="server" Text="Registrar" CssClass="btn btn-outline-primary btn-sm mt-3 btn-block"/>
                        <hr />
                    <asp:Label ID="LogEstado" runat="server" Text="Listo..."></asp:Label>
                </div>
            </div>
        </div>
       

        <!--Listado de Entradas-->
        <div class="col">
        <div class="card">
        <asp:GridView ID="TablaEntradas" runat="server" class="table table-hover table-sm">
            <AlternatingRowStyle BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="0px" />

            <EditRowStyle HorizontalAlign="Center" />
            <EmptyDataRowStyle HorizontalAlign="Center" />
            <HeaderStyle BackColor="#9966FF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle HorizontalAlign="Center" />

        </asp:GridView>
        </div>
         </div> 
    </div>   
     <script>
            $(document).ready(function () {
                $("#ButtonRegistrar").click(function () {
                    $("#MensajeEstado").show("slow");
                });
            });
     </script>
    <div class="row">
            <div class ="col">
                <div id="MensajeEstado"class="alert alert-success" role="alert">
                    Base de datos afectada con exito!
                </div>
            </div>
        </div> 

    </form>         
</asp:Content>
