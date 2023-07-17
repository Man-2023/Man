<%@ Page Language="VB" AutoEventWireup="false" CodeFile="adding.aspx.vb" Inherits="adding" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>شاشة الادخال</title>
</head>
<body bgcolor="#cccccc">
    <form id="form1" action="/Ar/adding.aspx" runat="server" xml:lang="aa">
    <div align="center">
   <asp:Button ID="btnSave" runat="server" Text="حفظ" style="  z-index : 501;  POSITION: absolute; TOP: 0px; left:80px; width: 40px; height: 33px; "  
             BorderWidth="3px" ForeColor="Black" 
            Font-Size="12pt" Font-Names="Verdana" BorderColor="White"  
                BorderStyle="Outset" dir="rtl" Font-Bold="True" TabIndex="7" />
    
   <asp:Button ID="btnExit" runat="server" Text="خروج" style="  z-index : 501;  POSITION: absolute; TOP: 0px; left:0px; width: 40px; height: 33px; "  
             BorderWidth="3px" ForeColor="Black" 
            Font-Size="12pt" Font-Names="Verdana" BorderColor="White"  
                BorderStyle="Outset" dir="rtl" Font-Bold="True" TabIndex="9" 
            PostBackUrl="~/frmMain.aspx" Width="60px" />  
    
   <asp:Button ID="btnPrint" runat="server" Text="طباعة" style="  z-index : 501;  POSITION: absolute; TOP: 0px; left:40px; width: 40px; height: 33px; "  
             BorderWidth="3px" ForeColor="Black" 
            Font-Size="12pt" Font-Names="Verdana" BorderColor="White"  
                BorderStyle="Outset" dir="rtl" Font-Bold="True" TabIndex="8" />
    
        <asp:Label ID="lblTitle" runat="server" BackColor="#FFCC66" 
            BorderStyle="Outset" Font-Bold="True" Font-Size="XX-Large" ForeColor="#990033" 
            Text="أدخال البيانات" Width="200px"></asp:Label>
         
         <br />
         
         <asp:Button ID="Button2" runat="server" Text="Button" />
         
         <asp:TextBox ID="dateTxtBox" runat="server" Height="20px" dir="rtl"
                            Text='<%# Bind("date") %>' Width="100px" 
                            ontextchanged="dateTxtBox_TextChanged" 
    Enabled="False" Wrap="False" Font-Bold="True" Font-Names="Simplified Arabic"></asp:TextBox>
            <asp:Button ID="btnCalender0" runat="server" 
     style="background:" BackColor="#FFFF66" Height="30px" onclick="btnCalender_Click" Width="60px" 
            Font-Bold="True" Text=" اجندة" ToolTip="أظهار التقويم" 
            BorderColor="#FFCC00" Font-Size="14pt" />

            <asp:Button ID="btnRemoveDay0" style="  z-index : 501;  POSITION: absolute; TOP: 176px; left:833px; width: 127px; height: 33px;"  
             BorderWidth="3px"  
                ForeColor="White" 
            Font-Size="14pt" Font-Names="Verdana" BorderColor="White"  
                BorderStyle="Outset" dir="rtl" Font-Bold="True" runat="server" 
                Text="الغاء يوم سابق.." BackColor="#FF9900"/>
            
        </div>
 <div style ="
    height:30px;width:730px; margin:0;padding:0" dir="rtl" >
    <table cellspacing="0" cellpadding = "0" rules="all" border="1" id="tblHeader"
        style="font-family:Arial;font-size:10pt; color: #FFFFFF;
        border-collapse:collapse;height:100%; font-weight: bolder;"  >
    <tr style="background-color: #3366FF">
       <td style ="width:30px;text-align:center">م</td>
       <td style ="width:100px;text-align:center">القيمة</td>
       <td style ="width:110px;text-align:center">الوصف</td>
       <td style ="width:70px;text-align:center">البند</td>
       <td style ="width:70px;text-align:center">البند الفرعى</td>
       <td style ="width:80px;text-align:center">العملية</td>
       <td style ="width:70px;text-align:center">مسئول الصرف</td>
       <td style ="width:130px;text-align:center">ملاحظات</td>
       <td style ="width:70px;text-align:center" dir="rtl">أوامر</td>
    </tr>
    </table>
</div>       
        <div style ="height:450px; width:730px; overflow: auto;">
            <asp:Button ID="btnAddNewDay" style="  z-index : 501;  POSITION: absolute; TOP: 110px; left:833px; width: 127px; height: 33px;"  
             BorderWidth="3px"  
                ForeColor="White" 
            Font-Size="14pt" Font-Names="Verdana" BorderColor="White"  
                BorderStyle="Outset" dir="rtl" Font-Bold="True" runat="server" 
                Text="أدخال يوم جديد.." BackColor="#FF9900"/>
            <asp:Panel ID="Panel1"
                style="   LEFT: 16px; POSITION: absolute; TOP: 75px; left:245px; width: 139px; bottom: 342px;" runat="server" 
              BackColor="#3333FF" Visible="False" BorderStyle="Groove" Height="200px">
                    <asp:Calendar id="Calendar1" 
                        style="  z-index : 501; LEFT: 16px; POSITION: absolute; TOP: 0px; left:0px; width: 139px; bottom: 449px;" runat="server" 
             BorderWidth="1px" BackColor="#3366FF" DayNameFormat="FirstLetter" 
                ForeColor="White" Height="50px" 
            Font-Size="8pt" Font-Names="Verdana" BorderColor="White" ShowGridLines="True" 
                BorderStyle="Solid" Visible="False">
            </asp:Calendar>
          <asp:Button ID="btnClearDate" runat="server" Enabled="False" Font-Bold="True" 
                  style="   LEFT: 7px; POSITION: absolute; TOP: 170px;" 
              Height="20px" Text="مسح" /> 
              <asp:Button ID="btnHide" runat="server" Font-Bold="True" Height="20px" 
                    style="   LEFT: 100px; POSITION: absolute; TOP: 170px;" 
                Text="أخفاء" />  
             </asp:Panel>              
            <asp:Button ID="btnModifyDay" style="  z-index : 501;  POSITION: absolute; TOP: 143px; left:833px; width: 127px; height: 33px;"  
             BorderWidth="3px"  
                ForeColor="White" 
            Font-Size="14pt" Font-Names="Verdana" BorderColor="White"  
                BorderStyle="Outset" dir="rtl" Font-Bold="True" runat="server" 
                Text=" تعديل يوم سابق.." BackColor="#FF9900"/>
            <asp:GridView ID="GridViewAdd" runat="server" AutoGenerateColumns="False" 
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" CellPadding="1" 
                DataKeyNames="ID" dir="rtl" EnableTheming="True" Font-Size="16pt" 
                GridLines="None" HorizontalAlign="Center" PageSize="20" ShowFooter="True" 
                style="height:400px;  overflow: auto" TabIndex="5"  
                ShowHeader="False" Font-Bold="True">
                <RowStyle BackColor="#FFF7E7" Font-Size="X-Small" ForeColor="#8C4510" 
                    Height="18px" VerticalAlign="Middle" Wrap="True" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="No">
                        <ControlStyle Width="30px" />
                        <FooterStyle Wrap="False" />
                        <HeaderStyle Wrap="False" />
                        <ItemStyle Width="30px" Wrap="False" HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="القيمة" SortExpression="kima">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Height="18px" Width="100px" 
                                ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="الوصـــــف" SortExpression="desc">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" width="110px" Height="18px" 
                                Text='<%# Bind("desc") %>' TabIndex="1"></asp:TextBox>
                        </ItemTemplate>
                        <ItemStyle Width="110px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="البند" SortExpression="item">
                        <ItemTemplate>
                            <asp:DropDownList ID="cmbItem" runat="server" Height="18px" TabIndex="2">
                                <asp:ListItem>خرسانة</asp:ListItem>
                                <asp:ListItem>بياض</asp:ListItem>
                                <asp:ListItem>نقاشة</asp:ListItem>
                                <asp:ListItem>مهايا</asp:ListItem>
                                <asp:ListItem>سباكة</asp:ListItem>
                                <asp:ListItem>حداد</asp:ListItem>
                                <asp:ListItem>مختلط</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                        <ItemStyle Width="70px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="البند الفرعى" SortExpression="subitem">
                        <ItemTemplate>
                            <asp:DropDownList ID="cmbSubItem" runat="server" Height="18px" TabIndex="3">
                                <asp:ListItem>خامات</asp:ListItem>
                                <asp:ListItem>عمالة</asp:ListItem>
                                <asp:ListItem>عامة</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                        <ItemStyle Width="70px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="العملية" SortExpression="operation">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Height="18px" 
                                Text='<%# Bind("operation") %>' Width="80px" TabIndex="4"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="مسئول الصرف" SortExpression="sarf">
                        <ItemTemplate>
                            <asp:DropDownList ID="cmbNewSarf" runat="server" Height="18px" TabIndex="5">
                                <asp:ListItem>حسام</asp:ListItem>
                                <asp:ListItem>عبد المنعم</asp:ListItem>
                                <asp:ListItem>أشرف</asp:ListItem>
                                <asp:ListItem>أحمد</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                        <ItemStyle Width="70px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ملاحظات" SortExpression="notes">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Height="18px" 
                                Text='<%# Bind("notes") %>' TabIndex="6"></asp:TextBox>
                        </ItemTemplate>
                        <ItemStyle Width="130px" />
                        <FooterTemplate>
                            <asp:Button ID="ButtonAdd" runat="server" onclick="ButtonAdd_Click" 
                                Text="اضافة سطر" />
                        </FooterTemplate>
                        <ControlStyle Width="130px" />
                        <ItemStyle Width="130px" />
                    </asp:TemplateField>
                    <asp:CommandField DeleteText="ألغاء" EditText="تعديل"  ShowEditButton="True" 
                        UpdateText="تحديث" >
                        <ItemStyle Width="70px" />
                    </asp:CommandField>
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" Font-Size="Small" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <EditRowStyle Width="10px" />
            </asp:GridView>
    </div>
        <asp:Button ID="Button1" runat="server" Text="Button" Height="20px" />
        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $("[id*=GridViewAdd] input[type=text]").on("keypress", function (e) {
        if (e.keyCode == 13) {
            var next = $(this).closest('td').next().find("input[type=text]");           
            if (next.length > 0) {
               next.focus();
 
            } else {
              var next1 = $("#GridView1").find("tr:eq(1)").find("td:eq(2)").Focus();
              $('[id*=Label1]').text(next1);
            }
            return false;
        }
    })
</script>    
    </form>
</body>
</html>
