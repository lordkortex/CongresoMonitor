Public Class ConfPalabrasClaves
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'Session("titulo") = "País"
        'If Not (Session("admin") Is Nothing) Then
        '    If Session("admin").ToString <> -1 Then
        '        Me.Response.Redirect("/login.aspx", False)
        '    End If
        'Else
        '    Me.Response.Redirect("/login.aspx", False)
        'End If
        If Not Page.IsPostBack Then
            '    Dim oMyFunctions As New MyFunctions

            '    LiteralEncabezadopalabra_clave.Text = oMyFunctions.ArmarMensaje("alert alert-info alert-dismissable", "palabra_clave")

            '    Dim strUsuario As String
            '    If Not (Session("idusuario") Is Nothing) Then
            '        strUsuario = Session("idusuario").ToString
            Dim DataSetUsuarios As New DataSet
            CargarGrid()
            '    End If
        End If

    End Sub

    Public Function CargarGrid()
        Dim oMyFunctions As New MyFunctions
        'CARGA USUARIOS
        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT * FROM palabra_clave;"
        GridViewpalabra_claveList.DataSource = oMyFunctions.mySqlDataR()
        GridViewpalabra_claveList.DataBind()
        Return ""

    End Function

    Private Sub GridViewpalabra_claveList_PreRender(sender As Object, e As EventArgs) Handles GridViewpalabra_claveList.PreRender
        'ESTO AGREGA A LA LABLA EL TAG <THEAD> Y <TBODY> PARA QUE EL BOOTSTRAP LE PUEDA AGREGAR LA PAGINACION Y LA BUSQUEDA
        If (GridViewpalabra_claveList.Rows.Count > 0) Then
            GridViewpalabra_claveList.UseAccessibleHeader = True
            GridViewpalabra_claveList.HeaderRow.TableSection = TableRowSection.TableHeader
            GridViewpalabra_claveList.FooterRow.TableSection = TableRowSection.TableFooter
        End If
    End Sub

    Private Sub GridViewpalabra_claveList_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridViewpalabra_claveList.RowCommand
        Dim oMyFunctions As New MyFunctions
        Try
            'OBTIENE LA LINEA SELECCIONADA EN EL GRIDVIEW
            Dim gvr As GridViewRow = ((e.CommandSource).NamingContainer)
            Dim index As Integer = gvr.RowIndex

            Me.ViewState.Add("Idpalabra_clave", GridViewpalabra_claveList.DataKeys(index).Item(0).ToString())

            'MODIFICA EL USUARIO
            If e.CommandName = "Modificar" Then
                Try
                    BtnActualizarpalabra_claveModal.Visible = True
                    BtnCrearpalabra_claveModal.Visible = False
                    TextBoxpalabra_clave_a.Text = Server.HtmlDecode(GridViewpalabra_claveList.Rows(index).Cells(3).Text.ToString)
                    TextBoxpalabra_clave_b.Text = Server.HtmlDecode(GridViewpalabra_claveList.Rows(index).Cells(4).Text.ToString)
                    TextBoxpalabra_clave_c.Text = Server.HtmlDecode(GridViewpalabra_claveList.Rows(index).Cells(5).Text.ToString)
                    'AQEUI VA EL NOMBRE DEL DIV QUE CONTIENE EL MODAL
                    ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modalpalabra_clave').modal('show');", True)
                Catch ex As Exception
                    LiteralEncabezadopalabra_clave.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If

            'ELIMINA EL USUARIO
            If e.CommandName = "Eliminar" Then
                Try
                    oMyFunctions.sqlString += " DELETE FROM palabra_clave WHERE id_palabra_clave='" + GridViewpalabra_claveList.Rows(index).Cells(2).Text.ToString + "'"
                    oMyFunctions.mySqlDataR()
                    LiteralEncabezadopalabra_clave.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido elimiando satisfactoriamente")
                    CargarGrid()
                Catch ex As Exception
                    LiteralEncabezadopalabra_clave.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If
        Catch ex As Exception
            LiteralEncabezadopalabra_clave.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub GridViewpalabra_claveList_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridViewpalabra_claveList.RowDataBound
        'ESTO PERMITE QUE ANTES DE ELIMINAR UN REGISTRO , SE LE PREGUNTE AL USUARIO UNA CONFIRMACION DE LA ACCION
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim l As LinkButton = e.Row.FindControl("LinkButtonEliminar")
            Dim cadena As String = "javascript:return confirm('Esta seguro de eliminar este registro')"
            l.Attributes.Add("onclick", cadena)
        End If
    End Sub

    Private Sub BtnCrearpalabra_clave_Click(sender As Object, e As EventArgs) Handles BtnCrearpalabra_clave.Click
        BtnActualizarpalabra_claveModal.Visible = False
        BtnCrearpalabra_claveModal.Visible = True
        TextBoxpalabra_clave_a.Text = ""
        TextBoxpalabra_clave_b.Text = ""
        TextBoxpalabra_clave_c.Text = ""
        ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modalpalabra_clave').modal('show');", True)
    End Sub

    Private Sub BtnCrearpalabra_claveModal_Click(sender As Object, e As EventArgs) Handles BtnCrearpalabra_claveModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " INSERT INTO palabra_clave (palabra_clave_a,palabra_clave_b,palabra_clave_c) VALUES('" & TextBoxpalabra_clave_a.Text.ToString & "','" + TextBoxpalabra_clave_b.Text.ToString + "','" + TextBoxpalabra_clave_c.Text.ToString + "');"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadopalabra_clave.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadopalabra_clave.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub BtnActualizarpalabra_claveModal_Click(sender As Object, e As EventArgs) Handles BtnActualizarpalabra_claveModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString = "SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;"
            oMyFunctions.sqlString += " UPDATE palabra_clave SET palabra_clave_a='" & TextBoxpalabra_clave_a.Text.ToString & "',palabra_clave_b='" + TextBoxpalabra_clave_b.Text.ToString + "',palabra_clave_c='" + TextBoxpalabra_clave_c.Text.ToString + "'  WHERE id_palabra_clave='" & Me.ViewState("Idpalabra_clave").ToString & "';"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadopalabra_clave.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadopalabra_clave.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try
    End Sub


End Class