Public Class ConfTipoCargos
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

            '    LiteralEncabezadotipo_cargo.Text = oMyFunctions.ArmarMensaje("alert alert-info alert-dismissable", "tipo_cargo")

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
        oMyFunctions.sqlString += " SELECT * FROM tipo_cargo;"
        GridViewtipo_cargoList.DataSource = oMyFunctions.mySqlDataR()
        GridViewtipo_cargoList.DataBind()
        Return ""

    End Function

    Private Sub GridViewtipo_cargoList_PreRender(sender As Object, e As EventArgs) Handles GridViewtipo_cargoList.PreRender
        'ESTO AGREGA A LA LABLA EL TAG <THEAD> Y <TBODY> PARA QUE EL BOOTSTRAP LE PUEDA AGREGAR LA PAGINACION Y LA BUSQUEDA
        If (GridViewtipo_cargoList.Rows.Count > 0) Then
            GridViewtipo_cargoList.UseAccessibleHeader = True
            GridViewtipo_cargoList.HeaderRow.TableSection = TableRowSection.TableHeader
            GridViewtipo_cargoList.FooterRow.TableSection = TableRowSection.TableFooter
        End If
    End Sub

    Private Sub GridViewtipo_cargoList_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridViewtipo_cargoList.RowCommand
        Dim oMyFunctions As New MyFunctions
        Try
            'OBTIENE LA LINEA SELECCIONADA EN EL GRIDVIEW
            Dim gvr As GridViewRow = ((e.CommandSource).NamingContainer)
            Dim index As Integer = gvr.RowIndex

            Me.ViewState.Add("Idtipo_cargo", GridViewtipo_cargoList.DataKeys(index).Item(0).ToString())

            'MODIFICA EL USUARIO
            If e.CommandName = "Modificar" Then
                Try
                    BtnActualizartipo_cargoModal.Visible = True
                    BtnCreartipo_cargoModal.Visible = False
                    TextBoxtipo_cargo.Text = Server.HtmlDecode(GridViewtipo_cargoList.Rows(index).Cells(3).Text.ToString)
                    'AQEUI VA EL NOMBRE DEL DIV QUE CONTIENE EL MODAL
                    ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modaltipo_cargo').modal('show');", True)
                Catch ex As Exception
                    LiteralEncabezadotipo_cargo.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If

            'ELIMINA EL USUARIO
            If e.CommandName = "Eliminar" Then
                Try
                    oMyFunctions.sqlString += " DELETE FROM tipo_cargo WHERE id_tipo_cargo='" + GridViewtipo_cargoList.Rows(index).Cells(2).Text.ToString + "'"
                    oMyFunctions.mySqlDataR()
                    LiteralEncabezadotipo_cargo.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido elimiando satisfactoriamente")
                    CargarGrid()
                Catch ex As Exception
                    LiteralEncabezadotipo_cargo.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If
        Catch ex As Exception
            LiteralEncabezadotipo_cargo.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub GridViewtipo_cargoList_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridViewtipo_cargoList.RowDataBound
        'ESTO PERMITE QUE ANTES DE ELIMINAR UN REGISTRO , SE LE PREGUNTE AL USUARIO UNA CONFIRMACION DE LA ACCION
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim l As LinkButton = e.Row.FindControl("LinkButtonEliminar")
            Dim cadena As String = "javascript:return confirm('Esta seguro de eliminar este registro')"
            l.Attributes.Add("onclick", cadena)
        End If
    End Sub

    Private Sub BtnCreartipo_cargo_Click(sender As Object, e As EventArgs) Handles BtnCreartipo_cargo.Click
        BtnActualizartipo_cargoModal.Visible = False
        BtnCreartipo_cargoModal.Visible = True
        TextBoxtipo_cargo.Text = ""
        ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modaltipo_cargo').modal('show');", True)
    End Sub

    Private Sub BtnCreartipo_cargoModal_Click(sender As Object, e As EventArgs) Handles BtnCreartipo_cargoModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " INSERT INTO tipo_cargo (tipo_cargo_nombre) VALUES('" & TextBoxtipo_cargo.Text.ToString & "');"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadotipo_cargo.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadotipo_cargo.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub BtnActualizartipo_cargoModal_Click(sender As Object, e As EventArgs) Handles BtnActualizartipo_cargoModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString = "SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;"
            oMyFunctions.sqlString += " UPDATE tipo_cargo SET tipo_cargo_nombre='" & TextBoxtipo_cargo.Text.ToString & "' WHERE id_tipo_cargo='" & Me.ViewState("Idtipo_cargo").ToString & "';"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadotipo_cargo.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadotipo_cargo.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try
    End Sub

End Class