'Option Strict On
'Option Explicit On
Imports System.Data
Imports System.Data.OleDb
Imports System.Data.DataTable
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.DataControlRowType
Imports System.Web.UI.WebControls.DataControlRowState

Partial Class adding
    Inherits System.Web.UI.Page
    Dim CaseOption As String
    Protected Sub setinitialRow()
        Dim dtData As New DataTable()
        Dim dr As DataRow
        Dim dsData As New DataSet()
        dtData.Columns.Add(New DataColumn("ID"))
        ' dtData.Columns.Add(New DataColumn("date"))
        dtData.Columns.Add(New DataColumn("kima"))
        dtData.Columns.Add(New DataColumn("desc"))
        dtData.Columns.Add(New DataColumn("item"))
        dtData.Columns.Add(New DataColumn("subitem"))
        dtData.Columns.Add(New DataColumn("operation"))
        dtData.Columns.Add(New DataColumn("sarf"))
        dtData.Columns.Add(New DataColumn("notes"))
        ' dsData.Tables.Add(dtData)
        'dtData = Nothing
        For i = 1 To 15
            dr = dtData.NewRow()
            dr("ID") = i
            '    dr("date") = String.Empty
            dr("kima") = String.Empty
            dr("desc") = String.Empty
            ' dr("item") = String.Empty
            dr("subitem") = String.Empty
            dr("operation") = String.Empty
            dr("sarf") = String.Empty
            dr("notes") = String.Empty
            dtData.Rows.Add(dr)
            ' Return dsData
        Next i
        ViewState("currentTable") = dtData
        GridViewAdd.DataSource = dtData
        GridViewAdd.DataBind()
        Dim ddlitem As DropDownList = GridViewAdd.Rows(0).Cells(4).FindControl("cmbitem")
        Dim ddlsubitem As DropDownList = GridViewAdd.Rows(0).Cells(5).FindControl("cmbsubitem")
        Dim ddlsarf As DropDownList = GridViewAdd.Rows(0).Cells(7).FindControl("cmbnewsarf")
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            dateTxtBox.Focus()
            setinitialRow()
            ' GridViewAdd.Rows(0).Cells(1).FindControl("TextBox1").Focus()
            'Calendar1.Visible = True

        End If
    End Sub
    Protected Sub AddNewRowToGrid()
        Dim rowIndex As Int32 = 0
        Dim rowNo As Int32 = 1
        'If rowIndex <> 0 Then
        'Dim ff As String = ViewState("CurrentTable")
        If (ViewState("currentTable") IsNot Nothing) Then
            Dim dtCurrentTable As DataTable = ViewState("currentTable")
            Dim drCurrentRow As DataRow '= Nothing
            drCurrentRow = dtCurrentTable.NewRow()
            If (dtCurrentTable.Rows.Count > 0) Then
                ' Dim i As Int32 = 1
                Dim c As Int32 = (dtCurrentTable.Rows.Count)
                ' For (int i = 1;  i <= c ; i++)
                'Do While i <= (dtCurrentTable.Rows.Count)
                For i As Int32 = 0 To (dtCurrentTable.Rows.Count - 1) Step 1
                    '          Dim txtboxDate As TextBox = GridViewAdd.Rows(rowIndex).Cells(1).FindControl("TextBox1")
                    Dim txtboxkima As TextBox = GridViewAdd.Rows(rowIndex).Cells(2).FindControl("TextBox2")
                    Dim txtboxdesc As TextBox = GridViewAdd.Rows(rowIndex).Cells(3).FindControl("TextBox3")
                    Dim ddlitem As DropDownList = GridViewAdd.Rows(rowIndex).Cells(4).FindControl("cmbitem")
                    Dim ddlsubitem As DropDownList = GridViewAdd.Rows(rowIndex).Cells(5).FindControl("cmbsubitem")
                    Dim txtboxoperation As TextBox = GridViewAdd.Rows(rowIndex).Cells(6).FindControl("TextBox4")
                    Dim ddlsarf As DropDownList = GridViewAdd.Rows(rowIndex).Cells(7).FindControl("cmbnewsarf")
                    Dim txtboxnotes As TextBox = GridViewAdd.Rows(rowIndex).Cells(8).FindControl("TextBox5")
                    drCurrentRow = dtCurrentTable.NewRow()
                    drCurrentRow("ID") = rowNo + 1
                    '            dtCurrentTable.Rows(i)("date") = txtboxDate.Text
                    dtCurrentTable.Rows(i)("kima") = txtboxkima.Text
                    dtCurrentTable.Rows(i)("desc") = txtboxdesc.Text
                    dtCurrentTable.Rows(i)("item") = ddlitem.SelectedItem.Text
                    dtCurrentTable.Rows(i)("subitem") = ddlsubitem.SelectedItem.Text
                    dtCurrentTable.Rows(i)("operation") = txtboxoperation.Text
                    dtCurrentTable.Rows(i)("sarf") = ddlsarf.SelectedValue
                    dtCurrentTable.Rows(i)("notes") = txtboxnotes.Text
                    rowIndex = rowIndex + 1
                    rowNo = rowNo + 1
                    ' Loop
                Next
                dtCurrentTable.Rows.Add(drCurrentRow)
                ViewState("currentTable") = dtCurrentTable

                GridViewAdd.DataSource = dtCurrentTable
                GridViewAdd.DataBind()
                ' Next
            End If
        Else
            Response.Write("ViewState is null")
        End If
        SetPreviousData()
        'Label11.Text = GridViewAdd.Rows(0).Cells(0).ToString()
        'GridViewAdd.Rows(0).Cells(3).Text = "fariiiiid"
    End Sub
    Public Sub SetPreviousData()
        Dim rowIndex As Int32 = 0
        ' If (ViewState("CurrentTable") <> String.Empty) Then
        If (ViewState("currentTable") IsNot Nothing) Then
            Dim dt As DataTable = ViewState("currentTable")
            If (dt.Rows.Count > 0) Then
                Dim i As Int32 = 0
                ' Dim c As Int32 = (dt.Rows.Count)
                Do While i < (dt.Rows.Count)
                    'for (int i = 0; i &lt; dt.Rows.Count; i++)
                    '   Dim txtboxDate As TextBox = GridViewAdd.Rows(rowIndex).Cells(1).FindControl("TextBox1")
                    Dim txtboxkima As TextBox = GridViewAdd.Rows(rowIndex).Cells(2).FindControl("TextBox2")
                    Dim txtboxdesc As TextBox = GridViewAdd.Rows(rowIndex).Cells(3).FindControl("TextBox3")
                    Dim ddlitem As DropDownList = GridViewAdd.Rows(rowIndex).Cells(4).FindControl("cmbItem")
                    Dim ddlsubitem As DropDownList = GridViewAdd.Rows(rowIndex).Cells(5).FindControl("cmbSubItem")
                    Dim txtboxoperation As TextBox = GridViewAdd.Rows(rowIndex).Cells(6).FindControl("TextBox4")
                    Dim ddlsarf As DropDownList = GridViewAdd.Rows(rowIndex).Cells(7).FindControl("cmbNewSarf")
                    Dim txtboxnotes As TextBox = GridViewAdd.Rows(rowIndex).Cells(8).FindControl("TextBox5")
                    ' ddlitem.Items.Add(New ListItem("-----", "1")) 'خرسانة
                    'ddlitem.Items.Add(New ListItem("بياض", "2"))
                    'ddlitem.Items.Add(New ListItem("نقاشة", "3"))
                    'ddlitem.Items.Add(New ListItem("مهايا", "4"))
                    'ddlitem.Items.Add(New ListItem("سباكة", "5"))
                    'ddlitem.Items.Add(New ListItem("حداد", "6"))
                    'ddlitem.Items.Add(New ListItem("مختلط", "7"))
                    If (i < dt.Rows.Count - 1) Then
                        '      txtboxDate.Text = dt.Rows(i)("date").ToString()
                        '  dt.Rows(i)("kima") = txtboxkima.Text
                        txtboxkima.Text = dt.Rows(i)("kima").ToString()
                        txtboxdesc.Text = dt.Rows(i)("desc").ToString()
                        ' dt.Rows(i)("item") = 2 ' ddlitem.SelectedValue
                        'ddlitem.ClearSelection()
                        ' ddlitem.Items.FindByText(dt.Rows(i)("item").ToString()).Value = True ' .Selected = True
                        ddlitem.SelectedValue = dt.Rows(i)("item").ToString()
                        ddlsubitem.SelectedValue = dt.Rows(i)("subitem").ToString()
                        txtboxoperation.Text = dt.Rows(i)("operation").ToString()
                        ddlsarf.SelectedValue = dt.Rows(i)("sarf").ToString()
                        txtboxnotes.Text = dt.Rows(i)("notes").ToString()
                    End If
                    rowIndex = rowIndex + 1
                    i = i + 1
                Loop
            End If
            ' GridViewAdd.DataSource = dt
            '  GridViewAdd.DataBind()
        End If
    End Sub
    Protected Sub ButtonAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        AddNewRowToGrid()
        'Calendar1.Visible = True
    End Sub
    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        dateTxtBox.Text = Calendar1.SelectedDate
        'Calendar1.Visible = False
        btnClearDate.Enabled = True
    End Sub
    Protected Sub dateTxtBox_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dateTxtBox.TextChanged
        'GridViewAdd.Rows(0).Cells(1)= (Calendar1.SelectedDate))
        Label11.Text = " تم ادخال تاريخ اليوم"
        GridViewAdd.Rows(0).Cells(1).Focus()

    End Sub
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If (GridViewAdd.Rows.Count > 0) Then
            Dim i As Int32 = 0
            Dim rowIndex As Int32 = 0
            Do While i < (GridViewAdd.Rows.Count)
                If CType(GridViewAdd.Rows(rowIndex).Cells(2).FindControl("TextBox2"), TextBox).Text <> Nothing Then
                    'Dim TextBox1 As New TextBox
                    Dim connectionString As String = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath("app_data\Man.accdb")
                    Dim sqlConnection As New OleDbConnection(connectionString)
                    Dim sqlCommand As New OleDbCommand(connectionString, sqlConnection)
                    sqlCommand.Connection = sqlConnection
                    sqlCommand.CommandType = CommandType.Text
                    Dim mdate As Date = dateTxtBox.Text
                    Dim mKima As String = CType(GridViewAdd.Rows(rowIndex).Cells(2).FindControl("TextBox2"), TextBox).Text
                    Dim mdesc As String = CType(GridViewAdd.Rows(rowIndex).Cells(3).FindControl("TextBox3"), TextBox).Text
                    Dim mitem As String = CType(GridViewAdd.Rows(rowIndex).Cells(4).FindControl("cmbItem"), DropDownList).Text
                    Dim msubitem As String = CType(GridViewAdd.Rows(rowIndex).Cells(5).FindControl("cmbSubItem"), DropDownList).Text
                    Dim moperation As String = CType(GridViewAdd.Rows(rowIndex).Cells(6).FindControl("TextBox4"), TextBox).Text
                    Dim mSarf As String = CType(GridViewAdd.Rows(rowIndex).Cells(7).FindControl("cmbNewSarf"), DropDownList).Text
                    Dim mNotes As String = CType(GridViewAdd.Rows(rowIndex).Cells(8).FindControl("TextBox5"), TextBox).Text
                    sqlCommand.Parameters.Clear()
                    sqlCommand.CommandText = "INSERT INTO [masrofat] ( [date], [kima], [desc], [item], [subitem], [operation], [sarf], [notes]) VALUES (?,  ?, ?, ?, ?, ?, ?, ?)"
                    sqlCommand.Parameters.AddWithValue("?", mdate)
                    sqlCommand.Parameters.AddWithValue("?", mKima)
                    sqlCommand.Parameters.AddWithValue("?", mdesc)
                    sqlCommand.Parameters.AddWithValue("?", mitem)
                    sqlCommand.Parameters.AddWithValue("?", msubitem)
                    sqlCommand.Parameters.AddWithValue("?", moperation)
                    sqlCommand.Parameters.AddWithValue("?", mSarf)
                    sqlCommand.Parameters.AddWithValue("?", mNotes)
                    rowIndex = rowIndex + 1
                    i = i + 1
                    sqlConnection.Open()
                    sqlCommand.ExecuteNonQuery()
                    sqlConnection.Close()
                End If
            Loop
        Else
            Label11.Text = "no record to save.."
        End If
    End Sub

    Protected Sub GridViewAdd_Cancel(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) Handles GridViewAdd.RowCancelingEdit
        Dim inx As Integer = e.RowIndex ' ******System.Web.UI.WebControls.GridViewEditEventArgs

        If (ViewState("currentTable") IsNot Nothing) Then
            Dim dt As DataTable = ViewState("currentTable")
            GridViewAdd.EditIndex = -1
            GridViewAdd.DataSource = dt '("date")
            GridViewAdd.DataBind()
        End If
    End Sub
    Protected Sub GridViewAdd_Edit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridViewAdd.RowEditing
        Label11.Text = "farrrrrred"
        GridViewAdd.EditIndex = e.NewEditIndex
        '   GridViewAdd.DataSource = GetManData("date")
        GridViewAdd.DataBind()
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim xy As GridViewRow = GridViewAdd.SelectedRow
        '  Label11.Text = xy.Cells(1).Text
    End Sub

    Protected Sub btnCalender_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCalender0.Click
        Panel1.Visible = True
        'dateTxtBox.Text = Calendar1.SelectedDate
        Calendar1.Visible = True
    End Sub

    Protected Sub form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles form1.Load
        Dim sqlString As String = ""

        Select Case CaseOption
            Case "a"
                Dim connectionString As String = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & Server.MapPath("app_data\Man.accdb")
                Dim sqlConnection As New OleDbConnection(connectionString)
                sqlString = " SELECT * FROM masrofat where date=dateTxtBox.text  "
                Dim sqlCommand As New OleDbCommand(sqlString, sqlConnection)
                Dim dataReader As OleDbDataReader = sqlCommand.ExecuteReader(Data.CommandBehavior.CloseConnection)

                If dataReader.FieldCount = 0 Then
                    Label11.Text = "New"
                Else
                    Label11.Text = "Old"
                End If
            Case "b"
            Case "c"

        End Select

    End Sub

    Protected Sub btnClearDate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClearDate.Click
        dateTxtBox.Text = Nothing
        Calendar1.SelectedDate = Nothing
    End Sub

    Protected Sub btnHide_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnHide.Click
        Panel1.Visible = False
        Calendar1.Visible = False
        GridViewAdd.Rows(0).Cells(1).Focus()

    End Sub

    Protected Sub btnAddNewDay_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddNewDay.Click
        CaseOption = "a"

        lblTitle.Text = " بيانات تاريخ جديد " + CaseOption
        lblTitle.BackColor = Drawing.Color.GreenYellow

        setinitialRow()
    End Sub

    Protected Sub btnModifyDay_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnModifyDay.Click
        CaseOption = "e"

        lblTitle.Text = " تعديل يوم سابق " + CaseOption
        lblTitle.BackColor = Drawing.Color.Yellow
    End Sub

    Protected Sub btnRemoveDay0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRemoveDay0.Click
        CaseOption = "d"

        lblTitle.Text = "  ألغاء يوم سابق " + CaseOption
        lblTitle.BackColor = Drawing.Color.Red
    End Sub

    Protected Sub TextBox2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        Label11.Text = "date entered"
        GridViewAdd.Rows(0).Cells(3).Focus()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Label11.Text = dateTxtBox.Text
        Label11.BackColor = Drawing.Color.Red
    End Sub

End Class

