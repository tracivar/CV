<%@ Page Title="" Language="C#" MasterPageFile="~/Design.Master" AutoEventWireup="true" CodeBehind="Portofolio.aspx.cs" Inherits="WebDesignNew.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Contact Us Page</title>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="headline">
        <h1>Portofolio</h1>
    </div>
    
    <div class="main-content">
        <div style="font-family: 'Antic Slab', serif; font-size:15pt;">
            Select a country: 
            <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="205px" DataSourceID="SqlDataSourceCountry" DataTextField="country" DataValueField="country">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceCountry" runat="server" ConnectionString="<%$ ConnectionStrings:BloggersDBConnectionString2 %>" SelectCommand="SELECT [country] FROM [bloggers] ORDER BY [country]"></asp:SqlDataSource>
            <asp:Label ID="lblOutput" runat="server" Text="Label"></asp:Label>
            <br />
        </div>
    </div>
</asp:Content>