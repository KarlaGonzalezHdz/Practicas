<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout/Layout.Master" CodeBehind="Inventario.aspx.vb" Inherits="Inventario_Modulo6.Inventario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoDeLaPagina" runat="server">
    <h1>Los productos más recientes: </h1>
    <form id="Inventario" runat="server">
        <asp:GridView ID="TablaInventarios" runat="server" class="table table-hover table-sm">
            <HeaderStyle BackColor="#CC66FF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle HorizontalAlign="Center" />
        </asp:GridView>
    </form>
</asp:Content>
