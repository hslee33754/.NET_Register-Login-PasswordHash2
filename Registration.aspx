<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="NameRequiredField" runat="server" ErrorMessage="Name Required" Display="None" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmailRequiredField" runat="server" ErrorMessage="Email Required" Display="None" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="EmailRegularExpression" runat="server" ErrorMessage="Enter valid email address" Display="None" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>User Name</td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UserNameRequiredField" runat="server" ErrorMessage="RequiredFieldValidator" Display="None" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PasswordRequiredField" runat="server" ErrorMessage="RequiredFieldValidator" Display="None" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Password Confirm</td>
                <td>
                    <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ConfirmRequiredField" runat="server" ErrorMessage="Password confirm required" Display="None" ControlToValidate="txtConfirm"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="PasswordCompare" runat="server" ErrorMessage="Passwords don't match" ControlToCompare="txtPassword" ControlToValidate="txtConfirm" Display="None"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
                </td>
                <td>
                    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <asp:LinkButton ID="LinkLogin" runat="server" PostBackUrl="~/Default.aspx">Login</asp:LinkButton>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        
    </div>
    </form>
</body>
</html>
