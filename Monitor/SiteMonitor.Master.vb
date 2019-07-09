Public Class SiteMonitor
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Session("Autenticado") = "False") Then
            Response.Redirect("../Default.aspx")
        End If
    End Sub

End Class