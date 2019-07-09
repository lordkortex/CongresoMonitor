Public Class ConfComisionesDictaminadoras
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

            '    LiteralEncabezadocomision_dictaminadora.Text = oMyFunctions.ArmarMensaje("alert alert-info alert-dismissable", "comision_dictaminadora")

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

        'CARGA COMBO DE DIPUTADOS
        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT id_diputado,diputado_nombre FROM diputado;"

        Dim DatasetRamos As DataSet = oMyFunctions.mySqlDataR()

        DropDownListDiputado.DataSource = DatasetRamos
        DropDownListDiputado.DataTextField = "diputado_nombre"
        DropDownListDiputado.DataValueField = "id_diputado"
        DropDownListDiputado.DataBind()

        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString = "Select id_comision_dictaminadora,comision_dictaminadora_nombre,descripcion_corta,descripcion_larga,imagen,activo FROM comision_dictaminadora"
        GridViewcomision_dictaminadoraList.DataSource = oMyFunctions.mySqlDataR()
        GridViewcomision_dictaminadoraList.DataBind()

        If ViewState("Idcomision_dictaminadora") <> Nothing Then
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " SELECT d.id_diputado,d.diputado_nombre FROM comision_dicatminadora_diputado cdd LEFT JOIN diputado d ON cdd.id_diputado=d.id_diputado where id_comision_dictaminadora=" + ViewState("Idcomision_dictaminadora") + ";"

            GridViewDiputados.DataSource = oMyFunctions.mySqlDataR()
            GridViewDiputados.DataBind()

        End If


        Return ""

    End Function

    Private Sub GridViewcomision_dictaminadoraList_PreRender(sender As Object, e As EventArgs) Handles GridViewcomision_dictaminadoraList.PreRender
        'ESTO AGREGA A LA LABLA EL TAG <THEAD> Y <TBODY> PARA QUE EL BOOTSTRAP LE PUEDA AGREGAR LA PAGINACION Y LA BUSQUEDA
        If (GridViewcomision_dictaminadoraList.Rows.Count > 0) Then
            GridViewcomision_dictaminadoraList.UseAccessibleHeader = True
            GridViewcomision_dictaminadoraList.HeaderRow.TableSection = TableRowSection.TableHeader
            GridViewcomision_dictaminadoraList.FooterRow.TableSection = TableRowSection.TableFooter
        End If
    End Sub

    Private Sub GridViewcomision_dictaminadoraList_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridViewcomision_dictaminadoraList.RowCommand
        Dim oMyFunctions As New MyFunctions
        Try
            'OBTIENE LA LINEA SELECCIONADA EN EL GRIDVIEW
            Dim gvr As GridViewRow = ((e.CommandSource).NamingContainer)
            Dim index As Integer = gvr.RowIndex

            Me.ViewState.Add("Idcomision_dictaminadora", GridViewcomision_dictaminadoraList.DataKeys(index).Item(0).ToString())

            'MODIFICA EL USUARIO
            If e.CommandName = "Modificar" Then
                Try


                    BtnActualizarcomision_dictaminadoraModal.Visible = True
                    BtnCrearcomision_dictaminadoraModal.Visible = False
                    TextBoxcomision_dictaminadora.Text = Server.HtmlDecode(GridViewcomision_dictaminadoraList.Rows(index).Cells(3).Text.ToString)
                    TextBoxcomision_dictaminadora_corta.Text = Server.HtmlDecode(GridViewcomision_dictaminadoraList.Rows(index).Cells(4).Text.ToString)
                    TextBoxcomision_dictaminadora_larga.Text = Server.HtmlDecode(GridViewcomision_dictaminadoraList.Rows(index).Cells(5).Text.ToString)
                    TextBoxcomision_dictaminadora_imagen.Text = Server.HtmlDecode(GridViewcomision_dictaminadoraList.Rows(index).Cells(6).Text.ToString)

                    If (GridViewcomision_dictaminadoraList.Rows(index).Cells(7).Text.ToString = "0") Then
                        chkActivo.Checked = False
                    Else
                        chkActivo.Checked = True
                    End If


                    'AQEUI VA EL NOMBRE DEL DIV QUE CONTIENE EL MODAL
                    ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modalcomision_dictaminadora').modal('show');", True)
                Catch ex As Exception
                    LiteralEncabezadocomision_dictaminadora.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If

            'ELIMINA EL USUARIO
            If e.CommandName = "Eliminar" Then
                Try
                    oMyFunctions.sqlString += " DELETE FROM comision_dictaminadora WHERE id_comision_dictaminadora='" + GridViewcomision_dictaminadoraList.Rows(index).Cells(2).Text.ToString + "'"
                    oMyFunctions.mySqlDataR()
                    LiteralEncabezadocomision_dictaminadora.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido elimiando satisfactoriamente")
                    CargarGrid()
                Catch ex As Exception
                    LiteralEncabezadocomision_dictaminadora.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If

            'VER DIPUTADOS
            If e.CommandName = "VerDiputados" Then
                Try

                    'lblEncabezadoDiputadosPorComision.Text = "Tabla de Configuración de Diputados por Comisión. : " + GridViewcomision_dictaminadoraList.Rows(index).Cells(3).Text.ToString

                    oMyFunctions.sqlString = ""
                    oMyFunctions.sqlString += " SELECT d.id_diputado,d.diputado_nombre FROM comision_dicatminadora_diputado cdd LEFT JOIN diputado d ON cdd.id_diputado=d.id_diputado where id_comision_dictaminadora=" + ViewState("Idcomision_dictaminadora") + ";"

                    GridViewDiputados.DataSource = oMyFunctions.mySqlDataR()
                    GridViewDiputados.DataBind()
                    LiteralEncabezadocomision_dictaminadora.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "")
                Catch ex As Exception
                    LiteralEncabezadocomision_dictaminadora.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If

            'ASOCIAR DIPUTADOS
            If e.CommandName = "AsociarDiputado" Then
                Try

                    'Panelcomision_diputados.Visible = False
                    'BtnCrearPalabraClaveModal.Visible = True
                    ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Panelcomision_diputados').modal('show');", True)
                Catch ex As Exception
                    'LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If

        Catch ex As Exception
            LiteralEncabezadocomision_dictaminadora.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub GridViewcomision_dictaminadoraList_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridViewcomision_dictaminadoraList.RowDataBound
        'ESTO PERMITE QUE ANTES DE ELIMINAR UN REGISTRO , SE LE PREGUNTE AL USUARIO UNA CONFIRMACION DE LA ACCION
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim l As LinkButton = e.Row.FindControl("LinkButtonEliminar")
            Dim cadena As String = "javascript:return confirm('Esta seguro de eliminar este registro')"
            l.Attributes.Add("onclick", cadena)
        End If
    End Sub

    Private Sub BtnCrearcomision_dictaminadora_Click(sender As Object, e As EventArgs) Handles BtnCrearcomision_dictaminadora.Click
        BtnActualizarcomision_dictaminadoraModal.Visible = False
        BtnCrearcomision_dictaminadoraModal.Visible = True
        TextBoxcomision_dictaminadora.Text = ""
        TextBoxcomision_dictaminadora_corta.Text = ""
        TextBoxcomision_dictaminadora_larga.Text = ""
        TextBoxcomision_dictaminadora_imagen.Text = ""
        chkActivo.Checked = False

        ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modalcomision_dictaminadora').modal('show');", True)
    End Sub

    Private Sub BtnCrearcomision_dictaminadoraModal_Click(sender As Object, e As EventArgs) Handles BtnCrearcomision_dictaminadoraModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " INSERT INTO comision_dictaminadora (comision_dictaminadora_nombre,descripcion_corta,descripcion_larga,imagen) VALUES('" & TextBoxcomision_dictaminadora.Text.ToString & "','" + TextBoxcomision_dictaminadora_corta.Text + "','" + TextBoxcomision_dictaminadora_larga.Text + "','" + TextBoxcomision_dictaminadora_imagen.Text + "');"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadocomision_dictaminadora.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadocomision_dictaminadora.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub BtnActualizarcomision_dictaminadoraModal_Click(sender As Object, e As EventArgs) Handles BtnActualizarcomision_dictaminadoraModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString = "SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;"
            oMyFunctions.sqlString += " UPDATE comision_dictaminadora SET  activo=" + IIf(chkActivo.Checked = True, "1", "0") + ", imagen='" + TextBoxcomision_dictaminadora_imagen.Text + "',descripcion_corta='" + TextBoxcomision_dictaminadora_corta.Text + "',descripcion_larga='" + TextBoxcomision_dictaminadora_larga.Text + "',comision_dictaminadora_nombre='" & TextBoxcomision_dictaminadora.Text.ToString & "' WHERE id_comision_dictaminadora='" & Me.ViewState("Idcomision_dictaminadora").ToString & "';"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadocomision_dictaminadora.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadocomision_dictaminadora.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try
    End Sub


    Private Sub GridViewDiputados_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridViewDiputados.RowCommand
        Dim oMyFunctions As New MyFunctions
        Try
            'OBTIENE LA LINEA SELECCIONADA EN EL GRIDVIEW
            Dim gvr As GridViewRow = ((e.CommandSource).NamingContainer)
            Dim index As Integer = gvr.RowIndex

            'Me.ViewState.Add("Id_diputado", GridViewDiputados.DataKeys(index).Item(0).ToString())

            'ELIMINA EL USUARIO
            If e.CommandName = "Eliminar" Then
                Try
                    oMyFunctions.sqlString = ""
                    oMyFunctions.sqlString = " DELETE FROM comision_dicatminadora_diputado WHERE id_comision_dictaminadora=" + ViewState("Idcomision_dictaminadora") + " AND id_diputado=" + GridViewDiputados.Rows(index).Cells(1).Text.ToString
                    oMyFunctions.mySqlDataR()
                    LiteralEncabezadocomision_dictaminadora.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido elimiando satisfactoriamente")
                    CargarGrid()
                Catch ex As Exception
                    LiteralEncabezadocomision_dictaminadora.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If
        Catch ex As Exception
            LiteralEncabezadocomision_dictaminadora.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub BtnAgregarDiputadoModal_Click(sender As Object, e As EventArgs) Handles BtnAgregarDiputadoModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " INSERT INTO comision_dicatminadora_diputado (id_diputado,id_comision_dictaminadora) VALUES(" + DropDownListDiputado.SelectedValue + "," + ViewState("Idcomision_dictaminadora") + ");"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadocomision_dictaminadora.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadocomision_dictaminadora.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try
    End Sub
End Class