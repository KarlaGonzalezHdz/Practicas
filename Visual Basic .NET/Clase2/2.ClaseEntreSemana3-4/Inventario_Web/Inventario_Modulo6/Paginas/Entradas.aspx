<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout/Layout.Master" CodeBehind="Entradas.aspx.vb" Inherits="Inventario_Modulo6.Entradas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoDeLaPagina" runat="server">
    <h1>Entradas de Inventario</h1>
    <div class="row">
        <!--Primer Columna Registro de Entradas-->
        <div class="col-md-3 col-sm-12">
            <div class="card">
                <div class="card-body">
                    <form id="Entrada" runat="server">
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
                    </form>
                </div>
            </div>
        </div>
        <!--Listado de Entradas-->
        <div class="col">
            <div class="card">
                <table class="table table-hover table-sm">
                  <thead>
                    <tr>
                      <th scope="col">#</th>
                      <th scope="col">Codigo</th>
                      <th scope="col">Cantidad</th>
                      <th scope="col">Descripción</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">1</th>
                      <td>Mark</td>
                      <td>Otto</td>
                      <td>@mdo</td>
                    </tr>
                    <tr>
                      <th scope="row">2</th>
                      <td>Jacob</td>
                      <td>Thornton</td>
                      <td>@fat</td>
                    </tr>
                    <tr>
                      <th scope="row">3</th>
                      <td colspan="2">Larry the Bird</td>
                      <td>@twitter</td>
                    </tr>
                  </tbody>
                </table>
            </div>
        </div>
    </div>

</asp:Content>
