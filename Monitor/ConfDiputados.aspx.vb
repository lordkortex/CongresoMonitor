Public Class ConfDiputados
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

            '    LiteralEncabezadodiputado.Text = oMyFunctions.ArmarMensaje("alert alert-info alert-dismissable", "diputado")

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

        'CARGA COMBO DE PARTIDOS
        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT id_partido,partido_nombre FROM partido;"

        Dim DatasetRamos As DataSet = oMyFunctions.mySqlDataR()

        DropDownListPartido.DataSource = DatasetRamos
        DropDownListPartido.DataTextField = "partido_nombre"
        DropDownListPartido.DataValueField = "id_partido"
        DropDownListPartido.DataBind()

        'CARGA USUARIOS
        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT d.id_diputado,d.diputado_nombre,d.diputado_imagen,d.descripcion_corta,d.descripcion_larga,p.id_partido,p.partido_nombre,d.diputado_activo FROM diputado d LEFT JOIN partido p ON d.id_partido=p.id_partido;"
        GridViewdiputadoList.DataSource = oMyFunctions.mySqlDataR()
        GridViewdiputadoList.DataBind()
        Return ""

    End Function

    Private Sub GridViewdiputadoList_PreRender(sender As Object, e As EventArgs) Handles GridViewdiputadoList.PreRender
        'ESTO AGREGA A LA LABLA EL TAG <THEAD> Y <TBODY> PARA QUE EL BOOTSTRAP LE PUEDA AGREGAR LA PAGINACION Y LA BUSQUEDA
        If (GridViewdiputadoList.Rows.Count > 0) Then
            GridViewdiputadoList.UseAccessibleHeader = True
            GridViewdiputadoList.HeaderRow.TableSection = TableRowSection.TableHeader
            GridViewdiputadoList.FooterRow.TableSection = TableRowSection.TableFooter
        End If
    End Sub

    Private Sub GridViewdiputadoList_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridViewdiputadoList.RowCommand
        Dim oMyFunctions As New MyFunctions
        Try
            'OBTIENE LA LINEA SELECCIONADA EN EL GRIDVIEW
            Dim gvr As GridViewRow = ((e.CommandSource).NamingContainer)
            Dim index As Integer = gvr.RowIndex

            Me.ViewState.Add("Iddiputado", GridViewdiputadoList.DataKeys(index).Item(0).ToString())

            'MODIFICA EL USUARIO
            If e.CommandName = "Modificar" Then
                Try
                    BtnActualizardiputadoModal.Visible = True
                    BtnCreardiputadoModal.Visible = False
                    TextBoxdiputado.Text = Server.HtmlDecode(GridViewdiputadoList.Rows(index).Cells(2).Text.ToString)
                    TextBoxImagen.Text = Server.HtmlDecode(GridViewdiputadoList.Rows(index).Cells(4).Text.ToString)
                    TextBoxDescCorta.Text = Server.HtmlDecode(GridViewdiputadoList.DataKeys(index).Item(1).ToString())
                    TextBoxDescLarga.Text = Server.HtmlDecode(GridViewdiputadoList.DataKeys(index).Item(2).ToString())
                    Dim partidoPolitico As String = GridViewdiputadoList.DataKeys(index).Item(3).ToString()
                    If (partidoPolitico <> "") Then
                        DropDownListPartido.SelectedValue = Server.HtmlDecode(partidoPolitico)
                    End If

                    If (GridViewdiputadoList.Rows(index).Cells(5).Text.ToString = "0") Then
                        chkActivo.Checked = False
                    Else
                        chkActivo.Checked = True
                    End If
                    
                    'AQEUI VA EL NOMBRE DEL DIV QUE CONTIENE EL MODAL
                    ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modaldiputado').modal('show');", True)
                Catch ex As Exception
                    LiteralEncabezadodiputado.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If

            'ELIMINA EL USUARIO
            If e.CommandName = "Eliminar" Then
                Try
                    oMyFunctions.sqlString += " DELETE FROM diputado WHERE id_diputado='" + Me.ViewState("Iddiputado") + "'"
                    oMyFunctions.mySqlDataR()
                    LiteralEncabezadodiputado.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido elimiando satisfactoriamente")
                    CargarGrid()
                Catch ex As Exception
                    LiteralEncabezadodiputado.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If
        Catch ex As Exception
            LiteralEncabezadodiputado.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub GridViewdiputadoList_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridViewdiputadoList.RowDataBound
        'ESTO PERMITE QUE ANTES DE ELIMINAR UN REGISTRO , SE LE PREGUNTE AL USUARIO UNA CONFIRMACION DE LA ACCION
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim l As LinkButton = e.Row.FindControl("LinkButtonEliminar")
            Dim cadena As String = "javascript:return confirm('Esta seguro de eliminar este registro')"
            l.Attributes.Add("onclick", cadena)
        End If
    End Sub

    Private Sub BtnCreardiputado_Click(sender As Object, e As EventArgs) Handles BtnCreardiputado.Click
        BtnActualizardiputadoModal.Visible = False
        BtnCreardiputadoModal.Visible = True
        TextBoxdiputado.Text = ""
        TextBoxImagen.Text = ""
        TextBoxDescCorta.Text = ""
        TextBoxDescLarga.Text = ""
        chkActivo.Checked = False


        ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modaldiputado').modal('show');", True)
    End Sub

    Private Sub BtnCreardiputadoModal_Click(sender As Object, e As EventArgs) Handles BtnCreardiputadoModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " INSERT INTO diputado (diputado_nombre,diputado_imagen,id_partido,descripcion_corta,descripcion_larga,diputado_activo) VALUES('" & TextBoxdiputado.Text.ToString & "','" + TextBoxImagen.Text.ToString + "'," + DropDownListPartido.SelectedValue.ToString + ",'" + TextBoxDescCorta.Text.ToString + "','" + TextBoxDescLarga.Text.ToString + "'," + IIf(chkActivo.Checked = True, "1", "0") + ");"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadodiputado.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadodiputado.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub BtnActualizardiputadoModal_Click(sender As Object, e As EventArgs) Handles BtnActualizardiputadoModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString = "SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;"
            oMyFunctions.sqlString += " UPDATE diputado SET diputado_activo =" + IIf(chkActivo.Checked = True, "1", "0") + ",diputado_imagen='" + TextBoxImagen.Text + "',id_partido=" + DropDownListPartido.SelectedValue.ToString + ",descripcion_corta='" + TextBoxDescCorta.Text + "',descripcion_larga='" + TextBoxDescLarga.Text + "',diputado_nombre='" & TextBoxdiputado.Text.ToString & "' WHERE id_diputado='" & Me.ViewState("Iddiputado").ToString & "';"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadodiputado.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadodiputado.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try
    End Sub

End Class