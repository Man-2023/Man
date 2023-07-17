Imports CrystalDecisions.CrystalReports.Engine

Partial Class _Default
    Inherits System.Web.UI.Page

    Private rptDoc As CrystalDecisions.CrystalReports.Engine.ReportDocument = Nothing

    Protected Sub addBtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles addBtn.Click
        PanelAdd.Visible = True
        reportBtn0.Enabled = False
        egmalyBtn.Enabled = False
        toolsBtn.Enabled = False
    End Sub

    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        PanelAdd.Visible = False
        reportBtn0.Enabled = True
        egmalyBtn.Enabled = True
        toolsBtn.Enabled = True
    End Sub
    Protected Sub reportBtn0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles reportBtn0.Click
        PanelReport.Visible = True
        addBtn.Enabled = False
        reportBtn0.Enabled = False
        egmalyBtn.Enabled = False
        toolsBtn.Enabled = False
    End Sub

    Protected Sub btnCancel0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel0.Click
        PanelReport.Visible = False
        addBtn.Enabled = True
        reportBtn0.Enabled = True
        egmalyBtn.Enabled = True
        toolsBtn.Enabled = True
    End Sub
End Class
