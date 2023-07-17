<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frmPassword.aspx.vb" Inherits="password" Culture="af-ZA" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body bgcolor="#666699">
    <form id="form1" runat="server">
    <div align="center" dir="rtl">
    
        <br />
        <asp:Image ID="Image1" runat="server" />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" 
            Font-Names="Vladimir Script" Font-Size="X-Large" ForeColor="White" 
            Text="مان للمشروعات الهندسية"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" Height="66px" ImageUrl="~/man.jpg" 
            Width="81px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" 
            Font-Names="Edwardian Script ITC" Font-Size="XX-Large" ForeColor="White" 
            Text="Man for Projects"></asp:Label>
&nbsp;<br />
        <asp:Panel ID="Panel1" runat="server" BackColor="#000066" Height="100px" 
            HorizontalAlign="Left" Width="200px">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" 
    Font-Size="XX-Large" ForeColor="White" Text="Man for Projects" 
                Font-Names="Edwardian Script ITC"></asp:Label>
            &nbsp;<br />
            <br />
&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Vladimir Script" 
                Font-Size="X-Large" ForeColor="White" Text="مان للمشروعات الهندسية"></asp:Label>
        </asp:Panel>
    
        <asp:Login ID="Login1" runat="server" LoginButtonText="اضعط" 
            PasswordLabelText="كلمة السر :" UserNameLabelText="أسم المستخدم : " 
            BackColor="#0066FF" BorderColor="#990033" BorderStyle="Solid" BorderWidth="5px" 
            DestinationPageUrl="~/frmMain.aspx" DisplayRememberMe="False" 
            ForeColor="Yellow" Height="274px" UserName="man" Width="347px">
            <LayoutTemplate>
                <table border="0" cellpadding="1" cellspacing="0" 
                    style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0" style="height:224px;width:347px;">
                                <tr>
                                    <td align="center" colspan="2" dir="rtl" 
                                        style="color:White;background-color:#507CD1;font-size:0.9em;font-weight:bold;">
                                        Log In</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" 
                                            Font-Bold="True">أسم المستخدم : </asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server"  ontextchanged="UserName_TextChanged"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                            ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                            ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" 
                                            Font-Bold="True">كلمة السر :</asp:Label>
                                    </td>
                                    <td align="center" bgcolor="#3366FF" dir="rtl" headers="5">
                                        <asp:TextBox ID="Password" runat="server">1965</asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                            ControlToValidate="Password" ErrorMessage="Password is required." 
                                            ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2" style="color:Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2">
                                        <asp:Button ID="LoginButton" runat="server" BackColor="#6699FF" 
                                            CommandName="Login" Font-Bold="True" Font-Size="Large" Height="24px" 
                                            onclick="LoginButton_Click" Text="اضعط" ValidationGroup="Login1" Width="71px" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <LabelStyle HorizontalAlign="Right" />
            <TitleTextStyle Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
                BackColor="#507CD1" />
            <HyperLinkStyle HorizontalAlign="Right" />
        </asp:Login>
    
        <asp:ImageMap ID="ImageMap1" runat="server" BackColor="#999999" 
            BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Width="100px">
            <asp:CircleHotSpot AlternateText="فريد" Radius="2" X="2" Y="2" />
            <asp:CircleHotSpot AlternateText="Man" Radius="3" X="3" Y="3" />
        </asp:ImageMap>
    
        <br />
    
    </div>
    </form>
</body>
</html>
