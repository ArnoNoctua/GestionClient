<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AjouterClient.aspx.cs" Inherits="ApplicationWeb2.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="Textbox1">Nom</label>
            <asp:TextBox class="form-control" ID="TextBox1" runat="server" ></asp:TextBox>
        </div>
        <div class="form-group col-md-6">
            <label for="TextBox2">Prénom</label>
            <asp:TextBox class="form-control" ID="TextBox2" runat="server" ></asp:TextBox>
        </div>
    </div>
    <div class="form-group col-md-12">
        <label for="TextBox3">Addresse</label>
            <asp:TextBox class="form-control" ID="TextBox3" runat="server" ></asp:TextBox>
    </div>
    <div class="form-group col-md-12">
        <label for="TextBox4">Addresse 2</label>
            <asp:TextBox class="form-control" ID="TextBox4" runat="server" ></asp:TextBox>
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label for="TextBox5">Ville</label>
            <asp:TextBox class="form-control" ID="TextBox5" runat="server" ></asp:TextBox>
        </div>
        <div class="form-group col-md-4">
            <label for="DropDownList1">Province</label>
            <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                <asp:ListItem>Quebec</asp:ListItem>
                <asp:ListItem>Ontario</asp:ListItem>
                <asp:ListItem>Nouveau Brunswick</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-group col-md-2">
            <label for="TextBox6">Code Postal</label>
            <asp:TextBox class="form-control" ID="TextBox6" runat="server" ></asp:TextBox>
        </div>
    </div>
   <div style="padding-left:15px;">
       <asp:Button ID="Button1" runat="server" Text="Sauvgarder" class="btn btn-primary" OnClick="Button1_Click"/>

   </div>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Client Sauvgarder Avec Succès" Visible="False" ForeColor="#33CC33"></asp:Label>
    









</asp:Content>
