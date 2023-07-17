Imports System.Data
Imports System.Data.OleDb
Imports System.Web.UI.Page
Imports CrystalDecisions.Shared
Imports System.Web.UI.WebControls
Imports System.IO
Imports System.Text
Imports Excel = Microsoft.Office.Interop.Excel
'Partial Class frmBasicData

Class Default2

    Inherits System.Web.UI.Page
    Public Overloads Overrides Sub VerifyRenderingInServerForm(ByVal control As Control)
        ' Verifies that the control is rendered
    End Sub
    Dim s1 As String = ""
    Dim crReportDocument As New CrystalDecisions.CrystalReports.Engine.ReportDocument
    ' Dim s1 As String = CType(Session.Item("s1"), String)

    Function GetManData(ByVal sortBy As String) As System.Data.OleDb.OleDbDataReader
        Dim sqlString As String = ""
        Dim txtBand As String = ""

        ' Dim s1 As String = ""
        'Dim txtSearch As New TextBox
        'txtSearch.Text = "حاتم"
        '        Dim cn As New OleDbConnection("Provider=Microsoft.jet.oledb.4.0;Data Source=" & Server.MapPath("app_data\Man.accdb"))
        '"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\webTest\salary.accdb"
        Dim connectionString As String = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath("app_data\Man.accdb")
        Dim sqlConnection As New OleDbConnection(connectionString)
        'Dim cmdAds As New OleDbCommand("SELECT count(`ad_id`) FROM `tbl_ads` WHERE `ad_isPrivate` = 1", Conn)
        '   tt = "kima"
        Select Case DropDownList1.SelectedIndex
            Case Is = 0
                sqlString = " SELECT * FROM masrofat where date=?   ORDER By " & sortBy
                txtBand = " التاريخ = "
                s1 = "date=" & txtSearch.Text.ToString
            Case Is = 1
                sqlString = " SELECT * FROM masrofat where kima=?   ORDER By " & sortBy
                txtBand = " القيمة = "
                s1 = "kima=" & txtSearch.Text.ToString
            Case Is = 2
                sqlString = " SELECT * FROM masrofat where desc like ?   ORDER By " & sortBy
                txtBand = " الوصف = "
                s1 = "desc=" & txtSearch.Text.ToString
            Case Is = 3
                sqlString = " SELECT * FROM masrofat where item=?   ORDER By " & sortBy
                txtBand = " البند = "
                s1 = "item=" & txtSearch.Text.ToString
            Case Is = 4
                sqlString = " SELECT * FROM masrofat where subitem=?   ORDER By " & sortBy
                txtBand = " البند الفرعى = "
                s1 = "subitem=" & txtSearch.Text.ToString
            Case Is = 5
                sqlString = " SELECT * FROM masrofat where operation=?   ORDER By " & sortBy
                txtBand = " العملية = "
                s1 = "operation=" & txtSearch.Text.ToString
            Case Is = 6
                sqlString = " SELECT * FROM masrofat where sarf =? ORDER By " & sortBy
                txtBand = " مسئول الصرف = "
                s1 = "sarf=" & txtSearch.Text.ToString
            Case Is = 7
                sqlString = " SELECT * FROM masrofat where notes=?   ORDER By " & sortBy
                txtBand = " ملاحظات"
                s1 = "notes=" & txtSearch.Text.ToString
        End Select
        ' Dim sqlString As String = " SELECT * FROM masrofat ORDER By " & sortBy
        Dim sqlCommand As New OleDbCommand(sqlString, sqlConnection)
        sqlCommand.Parameters.Clear()
        sqlCommand.Parameters.AddWithValue("?", txtSearch.Text.ToString)
        ' tt = txtSearch.Text
        sqlConnection.Open()
        txtSearch1.Text = s1
        ' txtBand.ToString & txtSearch.Text.ToString
        Dim dataReader As OleDbDataReader = sqlCommand.ExecuteReader(Data.CommandBehavior.CloseConnection)
        Return dataReader
        ' GridView1.DataBind()
    End Function
    Function GetManDataAdd(ByVal searchAdd As String, ByVal sortBy As String) As System.Data.OleDb.OleDbDataReader
        Dim sqlString As String = ""
        Dim txtBand As String = ""
        Label1.Text = s1
        Dim connectionString As String = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath("app_data\Man.accdb")
        Dim sqlConnection As New OleDbConnection(connectionString)
        sqlString = " SELECT * FROM masrofat where " & searchAdd & " ORDER By " & sortBy
        Label1.Text = searchAdd
        Dim sqlCommand As New OleDbCommand(sqlString, sqlConnection)
        'GridView1.DataSource = sqlConnection
        GridView1.DataBind()


        sqlConnection.Open()
        txtSearch1.Text = searchAdd
        Dim dataReader As OleDbDataReader = sqlCommand.ExecuteReader(Data.CommandBehavior.CloseConnection)
        Return dataReader
        GridView1.DataBind()
    End Function
    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim control As Control = Nothing
        If (Not (GridView1.FooterRow) Is Nothing) Then
            control = GridView1.FooterRow
        Else
            control = GridView1.Controls(0).Controls(0)
        End If
        Dim connectionString As String = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath("app_data\Man.accdb")

        Dim sqlConnection As New OleDbConnection(connectionString)
        Dim txtdate As New TextBox
        ' Dim mdate As DateTime
        'mdate.ToString("yyyy/mm/dd")

        '  mdate = CType(control.FindControl("txtdate"), TextBox).Text
        Dim mdate As Date = Date.ParseExact(CType(control.FindControl("txtdate"), TextBox).Text, "yyyy/MM/dd", Nothing)
        'Dim mdate As Date = Date.ParseExact(txtdate.Text, "yyyy/MM/dd", Nothing)
        'Dim mdate As DateTime = DateTime.ParseExact(txtdate.Text, , CultureInfo.InvariantCulture)
        Dim mKima As String = CType(control.FindControl("txtkima"), TextBox).Text
        'Dim mdesc As String = faridtxtbox.Text

        Dim mdesc As String = CType(control.FindControl("txtdesc"), TextBox).Text
        Dim mitem As String = CType(control.FindControl("cmbItem0"), DropDownList).Text
        Dim msubitem As String = CType(control.FindControl("cmbnewsubitem"), DropDownList).Text
        Dim moperation As String = CType(control.FindControl("txtoperation"), TextBox).Text
        Dim mSarf As String = CType(control.FindControl("cmbnewsarf0"), DropDownList).Text
        Dim mNotes As String = CType(control.FindControl("txtnotes"), TextBox).Text
        'Dim mcolor As String = CType(control.FindControl("txtcolor"), TextBox).Text
        'Dim strConnString As String = ConfigurationManager.ConnectionStrings("conString").ConnectionString
        Dim sqlCommand As New OleDbCommand(connectionString, sqlConnection)
        sqlCommand.Connection = sqlConnection
        sqlCommand.CommandType = CommandType.Text
        'InsertCommand = "INSERT INTO [masrofat] ([ID],  [kima], [desc], [item], [subitem], [operation], [sarf], [notes], [color]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
        sqlCommand.CommandText = "INSERT INTO [masrofat] (  [date], [kima], [desc], [item], [subitem], [operation], [sarf], [notes]) VALUES (?,  ?, ?, ?, ?, ?, ?, ?)"
        'sqlCommand.Parameters.AddWithValue("?", ID)

        sqlCommand.Parameters.AddWithValue("?", mdate)
        sqlCommand.Parameters.AddWithValue("?", mKima)
        sqlCommand.Parameters.AddWithValue("?", mdesc)
        sqlCommand.Parameters.AddWithValue("?", mitem)
        sqlCommand.Parameters.AddWithValue("?", msubitem)
        sqlCommand.Parameters.AddWithValue("?", moperation)
        sqlCommand.Parameters.AddWithValue("?", mSarf)
        sqlCommand.Parameters.AddWithValue("?", mNotes)
        'sqlCommand.Parameters.AddWithValue("?", mcolor)
        sqlConnection.Open()
        sqlCommand.ExecuteNonQuery()
        sqlConnection.Close()
        'Response.Redirect(Request.Url.AbsoluteUri)
    End Sub
    Private Sub releaseObject(ByVal obj As Object)
        Try
            System.Runtime.InteropServices.Marshal.ReleaseComObject(obj)
            obj = Nothing
        Catch ex As Exception
            obj = Nothing
        Finally
            GC.Collect()
        End Try
    End Sub

    Protected Sub PrintAllPages(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnPrintAll.Click, btnPrintAll.Click
        '  GridView1.AllowPaging = False
        GridView1.DataBind()
        GridView1.Columns(GridView1.Columns.Count() - 1).Visible = False
        GridView1.Columns(GridView1.Columns.Count() - 2).Visible = False
        GridView1.Rows(GridView1.Rows.Count() - 1).Visible = False
        GridView1.Rows(GridView1.Rows.Count() - 2).Visible = False
        GridView1.Rows(5).BackColor = Drawing.Color.Blue
        GridView1.PagerSettings.Visible = False
        Dim sw As New StringWriter()
        Dim hw As New HtmlTextWriter(sw)
        GridView1.RenderControl(hw)
        Dim gridHTML As String = sw.ToString().Replace("""", "'") _
           .Replace(System.Environment.NewLine, "")
        Dim sb As New StringBuilder()
        sb.Append("<script type = 'text/javascript'>")
        sb.Append("window.onload = new function(){")
        sb.Append("var printWin = window.open('', '', 'left=0")
        sb.Append(",top=0,width=1000,height=1000,status=0');")
        sb.Append("printWin.document.write(""")
        sb.Append(gridHTML)
        sb.Append(""");")
        sb.Append("printWin.document.close();")
        sb.Append("printWin.focus();")
        sb.Append("printWin.print();")
        sb.Append("printWin.close();};")
        sb.Append("</script>")
        ClientScript.RegisterStartupScript(Me.[GetType](), "GridPrint", sb.ToString())
        ' GridView1.AllowPaging = True
        'GridView1.DataBind()
    End Sub
    Protected Sub PrintCurrentPage(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnPrintCurrent.Click, btnPrintCurrent.Click
        'If IsPostBack = True Then
        'GridView1.DataBind()
        'Dim lblRCount As New Label
        'lblRCount.Text = GridView1.Rows(3).Cells(7).Text.ToString
        lblRCount.Text = "عدد الصفوف =" & GridView1.Rows.Count
        GridView1.Columns(GridView1.Columns.Count() - 1).Visible = False
        GridView1.Columns(GridView1.Columns.Count() - 10).Visible = False
        'GridView1.Rows(GridView1.Rows.Count() - 1).Visible = False
        'GridView1.Rows(GridView1.Rows.Count() - 2).Visible = False
        'GridView1.Rows(5).BackColor = Drawing.Color.Blue
        GridView1.PagerSettings.Visible = True
        'GridView1.Columns.RemoveAt(8)

        'GridView1.DataBind()
        Dim sw As New StringWriter()
        Dim hw As New HtmlTextWriter(sw)
        GridView1.RenderControl(hw)
        Dim gridHTML As String = sw.ToString().Replace("""", "'") _
           .Replace(System.Environment.NewLine, "")
        Dim sb As New StringBuilder()
        sb.Append("<body dir='rtl'>")
        sb.Append("<script type = 'text/javascript'>")

        sb.Append("window.onload = new function(){")
        sb.Append("var printWin = window.open('', '', 'left=0")
        sb.Append(",top=50,width=1000,height=600,status=0');")
        sb.Append("printWin.document.write(""")
        sb.Append(gridHTML)
        sb.Append(txtSearch1.Text)
        sb.Append("تفرير"");")

        sb.Append("printWin.document.close();")
        sb.Append("printWin.focus();")
        sb.Append("printWin.print();")
        sb.Append("printWin.close();};")
        sb.Append("</script>")
        ClientScript.RegisterStartupScript(Me.GetType(), "GridPrint", sb.ToString())
        GridView1.AllowPaging = True

        GridView1.PagerSettings.Visible = True
        'GridView1.DataBind()
        'End If
        'GridView1.Columns.RemoveAt(3)

    End Sub

    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        ' Dim RadioBtnAdd As New RadioButton
        ' If IsPostBack = False Then
        s1 = (CStr(Session("s1")))
        If RadioBtnAdd.Checked Then
            Label1.Text = s1
            GridView1.DataSource = GetManDataAdd(s1, "date")
            GridView1.AllowPaging = False
            GridView1.DataBind()
        Else
            GridView1.DataSource = GetManData("date")
            GridView1.AllowPaging = False
            GridView1.DataBind()
        End If
        lblRCount.Text = GridView1.Rows.Count
    End Sub
    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex

    End Sub
    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

        btnSearch.Visible = True
        btnSubmit.Visible = True
        txtSearch.Visible = True
        txtSearch.Focus()
        txtSearch.Text = ""
        ' btnSearchX.Visible = True
        'btnSearchAdd.Visible = True
    End Sub

    Protected Sub btnSearchAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearchAdd.Click
        s1 = CStr(Session("s1")) & " and "
        Session("s1") = s1
        Label1.Text = s1.ToString
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        s1 = (CStr(Session("s1")))
        Select Case DropDownList1.SelectedIndex
            Case Is = 0
                s1 = s1 + "date=" & "'" & txtSearch.Text.ToString & "'"
            Case Is = 1
                s1 = s1 + "kima=" & "'" & txtSearch.Text.ToString & "'"
            Case Is = 2
                s1 = s1 + "desc=" & "'" & txtSearch.Text.ToString & "'"
            Case Is = 3
                s1 = s1 + "item=" & "'" & txtSearch.Text.ToString & "'"
            Case Is = 4
                s1 = s1 + "subitem=" & "'" & txtSearch.Text.ToString & "'"
            Case Is = 5
                s1 = s1 + "operation=" & "'" & txtSearch.Text.ToString & "'"
            Case Is = 6
                s1 = s1 + "sarf=" & "'" & txtSearch.Text.ToString & "'"
            Case Is = 7
                s1 = s1 + "notes=" & "'" & txtSearch.Text.ToString & "'"
        End Select
        Label1.Text = s1
        Session("s1") = s1

    End Sub

    Protected Sub form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles form1.Load
        txtSearch.Focus()
        '        Session("s1") = ""
        '  Dim s1 As String = CType(Session.Item("s1"), String)

    End Sub
    Protected Sub btnXfile_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnXfile.Click
        s1 = (CStr(Session("s1")))
        If RadioBtnAdd.Checked Then
            Label1.Text = s1
            GridView1.DataSource = GetManDataAdd(s1, "date")
            GridView1.AllowPaging = False
            GridView1.DataBind()
        Else
            GridView1.DataSource = GetManData("date")
            GridView1.AllowPaging = False
            GridView1.DataBind()
        End If
        Dim xlApp As Excel.Application
        Dim xlWorkBook As Excel.Workbook
        Dim xlWorkSheet As Excel.Worksheet
        Dim misValue As Object = System.Reflection.Missing.Value
        Dim i As Integer
        Dim j As Integer
        xlApp = New Excel.ApplicationClass
        xlWorkBook = xlApp.Workbooks.Add(misValue)
        xlWorkSheet = xlWorkBook.Sheets("sheet1")
        For i = 0 To GridView1.Rows.Count - 1
            For j = 0 To GridView1.Columns.Count - 1
                For k As Integer = 1 To GridView1.Columns.Count
                    xlWorkSheet.Cells(1, k) = GridView1.Columns(k - 1).HeaderText
                    xlWorkSheet.Cells(i + 1, j + 1) = (GridView1.Rows(i).Cells(j)).Text.ToString
                Next
            Next
        Next

        xlWorkSheet.SaveAs("f:\vbexcel.xlsx")
        xlWorkBook.Close()
        xlApp.Quit()
        releaseObject(xlApp)
        releaseObject(xlWorkBook)
        releaseObject(xlWorkSheet)
        MsgBox("You can find the file f:\vbexcel.xlsx")
    End Sub

    Protected Sub GridView1_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) Handles GridView1.RowCancelingEdit
        GridView1.EditIndex = -1
        GridView1.DataSource = GetManData("date")
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_RowCreated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowCreated

    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing
        GridView1.EditIndex = e.NewEditIndex
        GridView1.DataSource = GetManData("date")
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_Update(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView1.RowUpdating
        Dim cn As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath("app_data\Man.accdb"))
        Dim gvRow As GridViewRow
        gvRow = GridView1.Rows(e.RowIndex)
        Dim mId As String
        Dim cmd As New OleDbCommand("UPDATE [masrofat] SET [date] = ?, [kima] = ?, [desc] = ?, [item] = ?, [subitem] = ?, [operation] = ?, [sarf] = ?, [notes] = ? WHERE [ID] =?", cn)
        'Dim cmd As New OleDbCommand("UPDATE [masrofat] SET [date] = ?, [kima] = ?, [desc] = ?, [item] = ?, [subitem] = ?, [operation] = ?, [sarf] = ?, [notes] = ? ", cn)
        mId = DirectCast(gvRow.Cells(0).Controls(0), TextBox).Text

        cmd.Parameters.Clear()
        lblRCount.Text = DirectCast(gvRow.Cells(3).Controls(0), TextBox).Text
        cmd.Parameters.AddWithValue("date", Convert.ToDateTime(DirectCast(gvRow.Cells(1).Controls(0), TextBox).Text))
        cmd.Parameters.AddWithValue("kima", DirectCast(gvRow.Cells(2).Controls(0), TextBox).Text)
        cmd.Parameters.AddWithValue("desc", DirectCast(gvRow.Cells(3).Controls(0), TextBox).Text)
        cmd.Parameters.AddWithValue("item", DirectCast(gvRow.Cells(4).Controls(0), TextBox).Text)
        cmd.Parameters.AddWithValue("subitem", DirectCast(gvRow.Cells(5).Controls(0), TextBox).Text)
        cmd.Parameters.AddWithValue("operation", DirectCast(gvRow.Cells(6).Controls(0), TextBox).Text)
        cmd.Parameters.AddWithValue("sarf", DirectCast(gvRow.Cells(7).Controls(0), TextBox).Text)
        cmd.Parameters.AddWithValue("notes", DirectCast(gvRow.Cells(8).Controls(0), TextBox).Text)
        cmd.Parameters.AddWithValue("ID", DirectCast(gvRow.Cells(0).Controls(0), TextBox).Text)
        cn.Open()
        cmd.ExecuteNonQuery()
        cn.Close()
        cmd.Dispose()
        cn.Dispose()
        GridView1.EditIndex = -1
        GridView1.DataSource = GetManData("date")
        GridView1.DataBind()
    End Sub
    Protected Sub btnTotal_Click1(ByVal sender As Object, ByVal e As System.EventArgs)
        'Calculate Sum and display in Footer Row
        GridView1.EditIndex = -1
        GridView1.DataSource = GetManData("date")
        GridView1.DataBind()
        If GridView1.Rows.Count - 1 > 0 Then
            Dim tot As New Decimal
            For i = 0 To GridView1.Rows.Count - 1
                tot = tot + Convert.ToDecimal(GridView1.Rows(i).Cells(2).Text)
            Next
            lblSum.Text = GridView1.Rows.Count
            GridView1.FooterRow.Cells(2).Text = tot.ToString()
        End If
    End Sub
End Class
