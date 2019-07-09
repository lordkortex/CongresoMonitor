Public Class ConfPartidos
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

            '    LiteralEncabezadopartido.Text = oMyFunctions.ArmarMensaje("alert alert-info alert-dismissable", "partido")

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
        oMyFunctions.sqlString += " SELECT * FROM partido;"
        GridViewpartidoList.DataSource = oMyFunctions.mySqlDataR()
        GridViewpartidoList.DataBind()
        Return ""

    End Function

    Private Sub GridViewpartidoList_PreRender(sender As Object, e As EventArgs) Handles GridViewpartidoList.PreRender
        'ESTO AGREGA A LA LABLA EL TAG <THEAD> Y <TBODY> PARA QUE EL BOOTSTRAP LE PUEDA AGREGAR LA PAGINACION Y LA BUSQUEDA
        If (GridViewpartidoList.Rows.Count > 0) Then
            GridViewpartidoList.UseAccessibleHeader = True
            GridViewpartidoList.HeaderRow.TableSection = TableRowSection.TableHeader
            GridViewpartidoList.FooterRow.TableSection = TableRowSection.TableFooter
        End If
    End Sub

    Private Sub GridViewpartidoList_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridViewpartidoList.RowCommand
        Dim oMyFunctions As New MyFunctions
        Try
            'OBTIENE LA LINEA SELECCIONADA EN EL GRIDVIEW
            Dim gvr As GridViewRow = ((e.CommandSource).NamingContainer)
            Dim index As Integer = gvr.RowIndex

            Me.ViewState.Add("Idpartido", GridViewpartidoList.DataKeys(index).Item(0).ToString())

            'MODIFICA EL USUARIO
            If e.CommandName = "Modificar" Then
                Try
                    BtnActualizarpartidoModal.Visible = True
                    BtnCrearpartidoModal.Visible = False
                    TextBoxpartido.Text = Server.HtmlDecode(GridViewpartidoList.Rows(index).Cells(3).Text.ToString)
                    TextBoxpartidoImagen.Text = Server.HtmlDecode(GridViewpartidoList.Rows(index).Cells(4).Text.ToString)
                    TextBoxpartidoDescCorta.Text = Server.HtmlDecode(GridViewpartidoList.Rows(index).Cells(5).Text.ToString)
                    TextBoxpartidoDescLarga.Text = Server.HtmlDecode(GridViewpartidoList.Rows(index).Cells(6).Text.ToString)
                    If (GridViewpartidoList.Rows(index).Cells(7).Text.ToString = "0") Then
                        chkActivo.Checked = False
                    Else
                        chkActivo.Checked = True
                    End If
                    'AQEUI VA EL NOMBRE DEL DIV QUE CONTIENE EL MODAL
                    ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modalpartido').modal('show');", True)
                Catch ex As Exception
                    LiteralEncabezadopartido.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If

            'ELIMINA EL USUARIO
            If e.CommandName = "Eliminar" Then
                Try
                    oMyFunctions.sqlString += " DELETE FROM partido WHERE id_partido='" + GridViewpartidoList.Rows(index).Cells(2).Text.ToString + "'"
                    oMyFunctions.mySqlDataR()
                    LiteralEncabezadopartido.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido elimiando satisfactoriamente")
                    CargarGrid()
                Catch ex As Exception
                    LiteralEncabezadopartido.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If
        Catch ex As Exception
            LiteralEncabezadopartido.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub GridViewpartidoList_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridViewpartidoList.RowDataBound
        'ESTO PERMITE QUE ANTES DE ELIMINAR UN REGISTRO , SE LE PREGUNTE AL USUARIO UNA CONFIRMACION DE LA ACCION
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim l As LinkButton = e.Row.FindControl("LinkButtonEliminar")
            Dim cadena As String = "javascript:return confirm('Esta seguro de eliminar este registro')"
            l.Attributes.Add("onclick", cadena)
        End If
    End Sub

    Private Sub BtnCrearpartido_Click(sender As Object, e As EventArgs) Handles BtnCrearpartido.Click
        BtnActualizarpartidoModal.Visible = False
        BtnCrearpartidoModal.Visible = True
        TextBoxpartido.Text = ""
        TextBoxpartidoImagen.Text = ""
        TextBoxpartidoDescCorta.Text = ""
        TextBoxpartidoDescLarga.Text = ""
        chkActivo.Checked = False

        ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modalpartido').modal('show');", True)
    End Sub

    Private Sub BtnCrearpartidoModal_Click(sender As Object, e As EventArgs) Handles BtnCrearpartidoModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " INSERT INTO partido (partido_nombre,partido_imagen,descripcion_corta,descripcion_larga) VALUES('" & TextBoxpartido.Text.ToString & "','" & TextBoxpartidoImagen.Text.ToString & "','" & TextBoxpartidoDescCorta.Text.ToString & "','" & TextBoxpartidoDescLarga.Text.ToString & "');"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadopartido.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadopartido.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub BtnActualizarpartidoModal_Click(sender As Object, e As EventArgs) Handles BtnActualizarpartidoModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString = "SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;"
            oMyFunctions.sqlString += " UPDATE partido SET activo=" + IIf(chkActivo.Checked = True, "1", "0") + " ,partido_imagen='" + TextBoxpartidoImagen.Text.ToString + "',descripcion_corta='" + TextBoxpartidoDescCorta.Text.ToString + "',descripcion_larga='" + TextBoxpartidoDescLarga.Text.ToString + "',partido_nombre='" & TextBoxpartido.Text.ToString & "' WHERE id_partido='" & Me.ViewState("Idpartido").ToString & "';"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadopartido.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadopartido.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString + " / " + oMyFunctions.sqlString)
        End Try
    End Sub

End Class