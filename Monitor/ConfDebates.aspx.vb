Public Class ConfDebates
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

            '    LiteralEncabezadotipo_debate.Text = oMyFunctions.ArmarMensaje("alert alert-info alert-dismissable", "tipo_debate")

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
        oMyFunctions.sqlString += " SELECT * FROM tipo_debate;"
        GridViewtipo_debateList.DataSource = oMyFunctions.mySqlDataR()
        GridViewtipo_debateList.DataBind()
        Return ""

    End Function

    Private Sub GridViewtipo_debateList_PreRender(sender As Object, e As EventArgs) Handles GridViewtipo_debateList.PreRender
        'ESTO AGREGA A LA LABLA EL TAG <THEAD> Y <TBODY> PARA QUE EL BOOTSTRAP LE PUEDA AGREGAR LA PAGINACION Y LA BUSQUEDA
        If (GridViewtipo_debateList.Rows.Count > 0) Then
            GridViewtipo_debateList.UseAccessibleHeader = True
            GridViewtipo_debateList.HeaderRow.TableSection = TableRowSection.TableHeader
            GridViewtipo_debateList.FooterRow.TableSection = TableRowSection.TableFooter
        End If
    End Sub

    Private Sub GridViewtipo_debateList_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridViewtipo_debateList.RowCommand
        Dim oMyFunctions As New MyFunctions
        Try
            'OBTIENE LA LINEA SELECCIONADA EN EL GRIDVIEW
            Dim gvr As GridViewRow = ((e.CommandSource).NamingContainer)
            Dim index As Integer = gvr.RowIndex

            Me.ViewState.Add("Idtipo_debate", GridViewtipo_debateList.DataKeys(index).Item(0).ToString())

            'MODIFICA EL USUARIO
            If e.CommandName = "Modificar" Then
                Try
                    BtnActualizartipo_debateModal.Visible = True
                    BtnCreartipo_debateModal.Visible = False
                    TextBoxtipo_debate.Text = Server.HtmlDecode(GridViewtipo_debateList.Rows(index).Cells(3).Text.ToString)
                    'AQEUI VA EL NOMBRE DEL DIV QUE CONTIENE EL MODAL
                    ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modaltipo_debate').modal('show');", True)
                Catch ex As Exception
                    LiteralEncabezadotipo_debate.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If

            'ELIMINA EL USUARIO
            If e.CommandName = "Eliminar" Then
                Try
                    oMyFunctions.sqlString += " DELETE FROM tipo_debate WHERE id_tipo_debate='" + GridViewtipo_debateList.Rows(index).Cells(2).Text.ToString + "'"
                    oMyFunctions.mySqlDataR()
                    LiteralEncabezadotipo_debate.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido elimiando satisfactoriamente")
                    CargarGrid()
                Catch ex As Exception
                    LiteralEncabezadotipo_debate.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If
        Catch ex As Exception
            LiteralEncabezadotipo_debate.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub GridViewtipo_debateList_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridViewtipo_debateList.RowDataBound
        'ESTO PERMITE QUE ANTES DE ELIMINAR UN REGISTRO , SE LE PREGUNTE AL USUARIO UNA CONFIRMACION DE LA ACCION
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim l As LinkButton = e.Row.FindControl("LinkButtonEliminar")
            Dim cadena As String = "javascript:return confirm('Esta seguro de eliminar este registro')"
            l.Attributes.Add("onclick", cadena)
        End If
    End Sub

    Private Sub BtnCreartipo_debate_Click(sender As Object, e As EventArgs) Handles BtnCreartipo_debate.Click
        BtnActualizartipo_debateModal.Visible = False
        BtnCreartipo_debateModal.Visible = True
        TextBoxtipo_debate.Text = ""
        ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modaltipo_debate').modal('show');", True)
    End Sub

    Private Sub BtnCreartipo_debateModal_Click(sender As Object, e As EventArgs) Handles BtnCreartipo_debateModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " INSERT INTO tipo_debate (tipo_debate_nombre) VALUES('" & TextBoxtipo_debate.Text.ToString & "');"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadotipo_debate.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadotipo_debate.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub BtnActualizartipo_debateModal_Click(sender As Object, e As EventArgs) Handles BtnActualizartipo_debateModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString = "SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;"
            oMyFunctions.sqlString += " UPDATE tipo_debate SET tipo_debate_nombre='" & TextBoxtipo_debate.Text.ToString & "' WHERE id_tipo_debate='" & Me.ViewState("Idtipo_debate").ToString & "';"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadotipo_debate.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadotipo_debate.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try
    End Sub

End Class