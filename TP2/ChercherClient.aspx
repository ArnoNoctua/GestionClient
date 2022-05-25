<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChercherClient.aspx.cs" Inherits="ApplicationWeb2.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="form-row">
        <div class="form-group col-md-12">
            <h3>Entrer le nom du client à chercher</h3>
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
            <asp:Button  ID="Button1" runat="server" Text="Chercher" class="btn btn-primary" OnClick="Button1_Click" />
        </div>
    </div>
     <div class="form-row">
        <div class="form-group col-md-12">
                <asp:Label ID="Label1" runat="server" Text="Aucun Résultat Trouvé" ForeColor="Red" Visible="False"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Voici les Résultats de Votre Recherche" ForeColor="#33CC33" Visible="False"></asp:Label>

        </div>
    </div>
    
    <div class="form-row">
        <div class="form-group col-md-12">
        </div>
    </div>

    <asp:GridView class="col-md-8 col-md-offset-2" Style="margin: auto;" ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" DataKeyNames="Id">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
            <asp:BoundField DataField="Prenom" HeaderText="Prenom" SortExpression="Prenom" />
            <asp:BoundField DataField="Addresse" HeaderText="Addresse" SortExpression="Addresse" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Clients] WHERE ([Nom] LIKE '%' + @Nom + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Nom" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>



    </asp:Content>
