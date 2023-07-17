<%@ Page Language="VB" AutoEventWireup="false" EnableEventValidation="false" CodeFile="frmBasicData.aspx.vb" Inherits="Default2" %>

<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>تداول البيانات والتقارير</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function Button1_onclick() {

}

// ]]>
</script>
</head>
<body>
    <form id="form1" runat="server" dir="rtl" style="background-color: #C0C0C0" 
    title="مان للمشروعات">
    <div style="direction: rtl; background-color: #9999FF; position: inherit; list-style-type: circle; background-image: url('just-note-sea-beach.jpg');" 
        align="center" dir="rtl">
    
        &quot;<asp:Label ID="Label1" runat="server" Text="Welcom Farid" 
            TabIndex="11" style="text-align: right"></asp:Label>
    
        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
    
        <br />
    
    
    
  
                تقارير<br />
        <asp:Panel ID="Panel3" runat="server" BorderStyle="Solid" Width="263px">
            <asp:Label ID="Label11" runat="server" 
    BackColor="#FF9900" BorderStyle="None" Font-Bold="True" Font-Size="Smaller" 
    Text="خيارات البحث" Width="88px"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                BackColor="#FFCC66" Font-Bold="True" Font-Size="Smaller" ForeColor="#000099" 
                Height="20px" style="text-align: right" TabIndex="2" Width="88px">
                <asp:ListItem Value="date">التـــــاريخ</asp:ListItem>
                <asp:ListItem Value="kima">القيمـــــــة</asp:ListItem>
                <asp:ListItem>الوصـــــف</asp:ListItem>
                <asp:ListItem>البنــــــــــد</asp:ListItem>
                <asp:ListItem>البند الفرعى</asp:ListItem>
                <asp:ListItem>العمــــــــلية</asp:ListItem>
                <asp:ListItem>مسئول الصرف</asp:ListItem>
                <asp:ListItem>ملاحظــــــات</asp:ListItem>
                <asp:ListItem Enabled="False">البنود</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="txtSearch" runat="server" Font-Bold="True" TabIndex="1" 
                style="width: 128px"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" BackColor="#006600" 
                BorderColor="White" Font-Bold="True" ForeColor="White" Text="بحث" />
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" Width="574px">
            <asp:Button ID="btnSearchAdd" runat="server" Text="اضافة اختيارات للبحث" 
            BackColor="#0066FF" Font-Bold="True" ForeColor="White" />
            <asp:Button ID="btnSubmit" runat="server" Text="ادخال" Visible="False" />
            <asp:RadioButton ID="RadioBtnAdd" runat="server" Font-Bold="True" 
                Font-Size="Larger" Text="&quot; و &quot;" BorderColor="Silver" 
                BorderStyle="Solid" />
            <asp:Button ID="btnSearchX" runat="server" BackColor="#D50000" Font-Bold="True" 
                ForeColor="White" Text="تعديل اختيارات البحث" Visible="False" 
                Font-Size="Small" />
            <asp:Button ID="btnSearch0" runat="server" BackColor="#006600" 
                BorderColor="White" Font-Bold="True" ForeColor="White" Text="بحث" />
        </asp:Panel>
        &nbsp;<asp:TextBox ID="txtSearch1" runat="server" TabIndex="1" BorderStyle="None" 
            ForeColor="Blue" Height="16px" ReadOnly="True" Width="150px" 
            TextMode="MultiLine"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblRCount" runat="server" BorderColor="#3333FF" 
            BorderStyle="Solid" BackColor="White" Height="16px" Width="150px"></asp:Label>
        
        
        &nbsp;<asp:Label ID="lblSum" runat="server" Text="Label"></asp:Label>
&nbsp;<br />
        <asp:GridView ID="gData" runat="server" AllowPaging="True" dir="rtl"
        AllowSorting="True" AutoGenerateColumns="False" BackColor="#99CCFF" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        CellSpacing="2" DataKeyNames="ID" 
        Font-Size="Small" HorizontalAlign="Center" PageSize="20" 
        style="margin-left: 0px" Width="50px" EnableTheming="True" TabIndex="5" 
            ForeColor="#99CCFF">
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <Columns>
                <asp:BoundField DataField="date" HeaderText="التاريخ" 
                    DataFormatString="{0:d}" />
                <asp:BoundField DataField="kima" HeaderText="القيمة" />
                <asp:BoundField DataField="desc" HeaderText="الوصف" />
                <asp:BoundField DataField="item" HeaderText="البند" />
                <asp:BoundField DataField="subitem" HeaderText="البند الفرعى" />
                <asp:BoundField DataField="operation" HeaderText="العملية" />
                <asp:BoundField DataField="sarf" HeaderText="مسئول الصرف" />
                <asp:BoundField DataField="notes" HeaderText="ملاحظات" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" Font-Size="Small" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <EditRowStyle Width="10px" />
    </asp:GridView>
        
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="#AFC8F5" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataKeyNames="ID" dir="rtl" EnableTheming="True" 
            Font-Size="Small" HorizontalAlign="Center"  ShowFooter="True" 
            style="height:400px; overflow:scroll" TabIndex="5" Font-Bold="True">
            <RowStyle BackColor="#99CCFF" ForeColor="#8C4510" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" >
                    <ControlStyle BackColor="Blue" ForeColor="Blue" />
                </asp:BoundField>
                <asp:BoundField DataField="date" DataFormatString="{0:d}" 
                    HeaderText="(التاريخ)" >
                    <ControlStyle Width="70px" />
                </asp:BoundField>
                <asp:BoundField DataField="kima" HeaderText="(القيمة)" SortExpression="desc">
                    <ControlStyle Width="50px" />
                    <ItemStyle Width="50px" />
                </asp:BoundField>
                <asp:BoundField DataField="desc" HeaderText="(الوصـــــف)" >
                    <ControlStyle Width="150px" />
                    <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="item" HeaderText="(البند)" >
                    <ControlStyle Width="50px" />
                    <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="subitem" HeaderText="(البند الفرعى)" >
                    <ControlStyle Width="50px" />
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="operation" HeaderText="(العملية)" >
                    <ControlStyle Width="50px" />
                </asp:BoundField>
                <asp:BoundField DataField="sarf" HeaderText="(مسئول الصرف)" >
                    <FooterStyle Wrap="False" />
                    <HeaderStyle Wrap="False" />
                    <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="notes" HeaderText="(ملاحظات)">
                    <ControlStyle Width="200px" />
                    <ItemStyle Width="70px" Wrap="False" />
                </asp:BoundField>
                <asp:TemplateField FooterText="اضافة سجل" HeaderText="الاوامر" 
                    ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="تحديث"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                            CommandName="Cancel" Text="الغاء"></asp:LinkButton>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:Button ID="btnTotal" runat="server" BackColor="#339933" Font-Bold="True" 
                            Font-Italic="False" onclick="btnTotal_Click1" Text="تجميع" Width="100px" />
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="تعديل"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                            CommandName="New" Text="جديد"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" 
                            CommandName="Select" Text="اختيار"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="حذف"></asp:LinkButton>
                    </ItemTemplate>
                    <ControlStyle Width="20px" />
                    <ItemStyle Wrap="False" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCFFFF" Font-Size="Small" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#CCFFFF" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#0033CC" Font-Bold="True" ForeColor="White" 
                Wrap="True" />
            <EditRowStyle Width="10px" />
        </asp:GridView>
        
        <br />
        
        <asp:Panel ID="Panel2" runat="server" Height="58px" 
            
            style="text-align: left; background-color: #3366FF; margin-right: 0px; margin-bottom: 7px;" 
            Width="550px" BorderStyle="Solid" HorizontalAlign="Center" Wrap="False">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
            <asp:Button ID="btnPrintCurrent" runat="server" Font-Bold="True" 
                OnClick="PrintCurrentPage" Text="طباعة الصفحة الحالية" Width="120px" />
            <asp:Button ID="btnXfile" runat="server" Text="طباعة الى ملف اكسيل" 
                style="text-align: center" Font-Bold="True" Width="120px" />
            <asp:Button ID="btnPrintAll" runat="server" OnClick="PrintAllPages" 
                Text="طباعة كل الصفحات" Font-Bold="True" Width="120px" />
            &nbsp;&nbsp;
            <asp:Button ID="btnDel" runat="server" Font-Bold="True" 
                Text="حذف عمود من الجدول " Width="120px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
    
    </div>
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/frmMain.aspx" 
        TabIndex="12">عودة</asp:LinkButton>
        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\manWep\App_Data\Man.accdb" 
        ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>">
    </asp:SqlDataSource>
    </form>

</body>
</html>
