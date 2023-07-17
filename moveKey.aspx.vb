Imports System.Data
Imports System.Data.OleDb
Imports System.Data.DataTable
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.GridView
Imports System.Web.UI.WebControls.DataControlRowType
Imports System.Web.UI.WebControls.DataControlRowState
Imports System.Windows.Forms
Imports System.Windows.Forms.PreviewKeyDownEventArgs
Imports System.Windows.Forms.KeyEventArgs


Partial Class moveKey
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        ' If IsPostBack Then
        Dim dt As New DataTable()

        Dim dr As DataRow
        dt.Columns.Add(New DataColumn("ID"))
        dt.Columns.Add(New DataColumn("Name"))
        dt.Columns.Add(New DataColumn("Country"))
        dr = dt.NewRow()

        dt.Rows.Add(1, "John Hammond", "United States")
        dt.Rows.Add(2, "Mudassar Khan", "India")
        dt.Rows.Add(3, "Suzanne Mathews", "France")
        dt.Rows.Add(4, "Robert Schidner", "Russia")
        'dt.Rows.Add(dr)

        GridView1.DataSource = dt
        GridView1.DataBind()
        'End If
        GridView1.Rows(1).Cells(0).FindControl("TextBox1").Focus()


    End Sub

End Class