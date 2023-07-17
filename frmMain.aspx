<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frmMain.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>القائمة الرئيسية</title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            font-family: "Times New Roman", Times, serif;
            text-align: center;
        }
        .style2
        {
            text-align: center;
        }
        </style>
</head>
<body bgcolor="#cacaca" background="katie-jason-sea-scenery.jpg">
    <form id="form1" runat="server" target="_parent">
    <div style="height: 476px; direction: rtl;" class="style2">
    
        <span class="style1">
        <asp:Label ID="Label5" runat="server" Font-Bold="True" 
            Font-Names="Vladimir Script" Font-Size="Medium" ForeColor="White" 
            Text="مان للمشروعات الهندسية"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Font-Bold="True" 
            Font-Names="Edwardian Script ITC" Font-Size="Medium" ForeColor="White" 
            Text="Man for Projects"></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Font-Bold="True" 
            Font-Names="Vladimir Script" Font-Size="X-Large" ForeColor="Black" 
            Text="المصروفات والايرادات"></asp:Label>
        </span>&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />


        <span class="style1">
        
        <asp:LinkButton ID="addBtn" runat="server" BorderStyle="Outset" 
            Font-Size="13pt" Height="30px" 
            Width="150px" ToolTip="ادخال وتسجيل بنود مصروفات اوايرادات يومية" 
            Font-Bold="True" BackColor="#3366FF" ForeColor="White" SkinID="200">ادخال</asp:LinkButton>
        <asp:LinkButton ID="reportBtn0" runat="server" BorderStyle="Outset" 
            Font-Size="13pt" Height="30px" 
            Width="150px" 
            ToolTip="استعلام وطباعة تقارير البيانات بمعلومية احد العوامل او اكثر.." 
            Font-Bold="True" BackColor="#FFCC99" SkinID="200">تقارير</asp:LinkButton>
        <asp:LinkButton ID="egmalyBtn" runat="server" BorderStyle="Outset" 
            Font-Size="13pt" Height="30px" PostBackUrl="~/adding.aspx" 
            Width="150px" 
            
            
            ToolTip="الاستعلام وطباعة اجماليات جميع العمليات ..ايرادات ومصروفات ..وصافى" 
            Font-Bold="True">أجماليات</asp:LinkButton>
        <asp:LinkButton ID="toolsBtn" runat="server" BorderStyle="Outset" 
            Font-Size="13pt" Height="30px" PostBackUrl="~/adding.aspx" 
            Width="150px" ToolTip="نسخ احتياطى وحذف عمليات ..وغيرها" Font-Bold="True">صيانة</asp:LinkButton>
        </span>
    
        <br />
        <br />
        <br />
            
            <asp:Panel ID="PanelReport"           
            
            style="   POSITION: absolute; TOP: 130px; left:550px; width: 150px; bottom: 353px; height: 90px;" runat="server" 
              BackColor="#CC0066" Visible="False" BorderStyle="Groove">
              
          <asp:Button ID="btnCancel0" runat="server" Font-Bold="True" 
          
                  style="   LEFT: 1px; POSITION: absolute; TOP: 60px; height: 30px;" 
                    Text="Cancel" Width="150px" Font-Size="13pt" 
                    PostBackUrl="~/frmMain.aspx" BackColor="#FFCC99" /> 
              
                    <asp:Button ID="btnMasrofat0" runat="server" Font-Bold="True" Height="30px" 
                        style="   LEFT: 1px; POSITION: absolute; TOP: 0px;" Text="مصروفات" 
                        Width="150px" Font-Size="13pt" PostBackUrl="~/frmBasicData.aspx" 
                    BackColor="#FFCC99" />
                <asp:Button ID="btnEradat1" runat="server" Font-Bold="True" Font-Size="13pt" 
                    PostBackUrl="~/frmBasicData.aspx" 
                    style="   LEFT: 1px; POSITION: absolute; TOP: 30px; height: 30px;" 
                    Text="أيرادات" Width="150px" BackColor="#FFCC99" />
             </asp:Panel>              
          
        <br />
            
            <asp:Panel ID="PanelAdd"           
            style="   POSITION: absolute; TOP: 130px; left:700px; width: 150px; bottom: 353px; height: 90px;" runat="server" 
              BackColor="#3333FF" Visible="False" BorderStyle="Groove">
              
          <asp:Button ID="btnCancel" runat="server" Font-Bold="True" 
          
                  style="   LEFT: 1px; POSITION: absolute; TOP: 60px; height: 30px;" 
                    Text="Cancel" Width="150px" Font-Size="13pt" 
                    PostBackUrl="~/frmMain.aspx" /> 
              
                    <asp:Button ID="btnMasrofat" runat="server" Font-Bold="True" Height="30px" 
                        style="   LEFT: 1px; POSITION: absolute; TOP: 0px;" Text="مصروفات" 
                        Width="150px" Font-Size="13pt" PostBackUrl="~/adding.aspx" />
                <asp:Button ID="btnEradat0" runat="server" Font-Bold="True" Font-Size="13pt" 
                    PostBackUrl="~/adding.aspx" 
                    style="   LEFT: 1px; POSITION: absolute; TOP: 30px; height: 30px;" 
                    Text="أيرادات" Width="150px" />
             </asp:Panel>              
          
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
