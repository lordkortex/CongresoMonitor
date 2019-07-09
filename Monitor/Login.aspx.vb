Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim oMyFunctions As New MyFunctions
        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT usuario_google FROM usuario WHERE usuario_nombre='" + txtLoginUser.Text.ToString + "' and usuario_contrasena='" + txtLoginPassword.Text.ToString + "'"
        Dim DatasetResultados = oMyFunctions.mySqlDataR()

        If DatasetResultados.Tables(0).Rows.Count > 0 Then
            lblMensaje.Text = "Satisfactorio"
            Session("Autenticado") = "True"
            Response.Redirect("~/Dashboard.aspx")
        Else
            Session("Autenticado") = "False"
            lblmensaje.Text = "Autenticacion incorrecta"
        End If
    End Sub
End Class