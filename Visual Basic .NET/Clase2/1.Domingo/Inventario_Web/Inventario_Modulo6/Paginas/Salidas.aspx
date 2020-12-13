﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout/Layout.Master" CodeBehind="Salidas.aspx.vb" Inherits="Inventario_Modulo6.Salidas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoDeLaPagina" runat="server">
    <h1>Salidas de Inventarios</h1>
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
                        <label for="InputCantidad">Cantidad de salida</label>
                        <asp:TextBox id="InputCantidad" runat="server" CssClass="form-control form-control-sm"></asp:TextBox>
                        <asp:Button ID="ButtonRegistrarSalida" runat="server" Text="Registrar" CssClass="btn btn-outline-primary btn-sm mt-3 btn-block"/>
                        <hr />
                        <asp:Label ID="LogEstado" runat="server" Text="Listo..."></asp:Label>
                    </form>
                </div>
            </div>
        </div>
        
    </div>
</asp:Content>
