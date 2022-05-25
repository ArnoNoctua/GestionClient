<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SupprimerClient.aspx.cs" Inherits="ApplicationWeb2.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-row">
        <div class="form-group col-md-12">
            <h3>Entrer le nom du client à Supprimer</h3>
        </div>
    </div>

    <div class="form-row">
        <div class="form-group col-md-2">
            <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Nom"></asp:TextBox>
        </div>
    </div>


    <div class="form-row">
        <div class="form-group col-md-12">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-2">
            <asp:Button ID="Button1" runat="server" Text="Supprimer" class="btn btn-primary" OnClick="Button1_Click" />
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-12">
            <asp:Label ID="Label1" runat="server" Text="Client Supprimé avec succès" ForeColor="#33CC33" Visible="False"></asp:Label>

        </div>
    </div>


</asp:Content>
