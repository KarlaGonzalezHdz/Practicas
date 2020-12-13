<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master/Layout.Master" CodeBehind="CrearPDF.aspx.vb" Inherits="ProjectDocument.CrearPDF" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="Form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</asp:Content>
