<%@ Page Language="VB" AutoEventWireup="false" CodeFile="moveKey.aspx.vb" Inherits="moveKey" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" ItemStyle-Width="30" >
<ItemStyle Width="30px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="Country" HeaderText="Country" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
        </asp:BoundField>
        <asp:TemplateField HeaderText="col1">
            <ItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="col2">
            <ItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="col3">
            <ItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>

<HeaderStyle BackColor="#3AC0F2" ForeColor="White"></HeaderStyle>
</asp:GridView>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $("[id*=GridView1] input[type=text]").on("keypress", function (e) {
        if (e.keyCode == 13) {
            var next = $(this).closest('td').next().find("input[type=text]");           
            if (next.length > 0) {
               next.focus();
                
            } else {
        //  var next = $("#GridView1").find("td");
        //    $('[id*=Label1]').text(value);
$("#GridView1").closest(".TextBox").focuse()
       //$("[id*=TextBox1]").focus();
        //   next= $("[id*=TextBox1]").next(".TextBox").find("input[type=text]");
          //   next = $("[id*=GridView1] input[type=text]").first.col1;// .eq(0).focus();
                    //         next.focus();
                         //GridView1.Rows(1).Cells(0).FindControl("TextBox1").Focus()

              var next1 = $("#GridView1").find("tr:eq(2)").find("td:eq(1)");//.text();
              $('[id*=Label1]').text(next1);
 //           if (next1.length > 0) {
 
           next1.focus();
//}            
            }
            return false;
        }
    })
    
</script>    
    </div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
