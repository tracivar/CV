<%@ Page Title="" Language="C#" MasterPageFile="~/Design.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebDesignNew.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Register Page</title>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="main-content">
        <h1 style="font-family: 'Antic Slab', serif;">Register for an Account</h1>
        <p style="font-family: 'Antic Slab', serif;">Please fill in the form below</p>
        <div class="infoSection">
            <h2>Personal Details</h2>
            <table>
                <tbody>
                    <tr>
                        <td class="prefRow">First Name</td>
                        <td>
                            <asp:TextBox ID="fName" runat="server" ClientIDMode="Static"></asp:TextBox>
                        &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="*" ControlToValidate="fName" Font-Size="15pt"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="prefRow">Last Name</td>
                        <td>
                            <asp:TextBox ID="lName" runat="server" ClientIDMode="Static"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="*" ControlToValidate="lName" Font-Size="15pt"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="infoSection">
             <h2>Contact Information</h2>
            <table>
                <tbody>
                    <tr>
                        <td class="prefRow">Email</td>
                        <td>
                            <asp:TextBox ID="email" runat="server" ClientIDMode="Static" TextMode="Email"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="*" ControlToValidate="email" Font-Size="15pt"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="prefRow">Telephone</td>
                        <td>
                            <asp:TextBox ID="tel" runat="server" ClientIDMode="Static" TextMode="Number"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="rfvTelephone" runat="server" ErrorMessage="*" ControlToValidate="tel" Font-Size="15pt"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="prefRow">Password</td>
                        <td>
                            <asp:TextBox ID="password" runat="server" ClientIDMode="Static" TextMode="Password"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="*" ControlToValidate="password" Font-Size="15pt"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="prefRow">Input Yout Password Again</td>
                        <td>
                            <asp:TextBox ID="repassword" runat="server" ClientIDMode="Static" TextMode="Password"></asp:TextBox>
                            &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="rfvRepassword" runat="server" ErrorMessage="*" ControlToValidate="repassword" Font-Size="15pt"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="infoSection">

            <asp:Button ID="submit" runat="server" BackColor="#9933FF" BorderColor="#000066" ClientIDMode="Static" Font-Names="'antic slab', serif" OnClick="submit_Click" Text="Complete Registration" />

        </div>
        
    </div>
</asp:Content>
