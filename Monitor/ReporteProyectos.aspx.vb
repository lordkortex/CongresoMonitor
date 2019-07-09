Public Class ReporteProyectos
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

            '    LiteralEncabezadoproyectos.Text = oMyFunctions.ArmarMensaje("alert alert-info alert-dismissable", "proyectos")

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

        'CARGA COMBO DE TIPO ACTO
        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT id_legislacion,legislacion_nombre FROM legislacion;"

        Dim DatasetRamos As DataSet = oMyFunctions.mySqlDataR()

        DropDownListTipoActo.DataSource = DatasetRamos
        DropDownListTipoActo.DataTextField = "legislacion_nombre"
        DropDownListTipoActo.DataValueField = "id_legislacion"
        DropDownListTipoActo.DataBind()

        'CARGA COMBO DE PARTIDO
        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT id_partido,partido_nombre FROM partido;"

        DatasetRamos = oMyFunctions.mySqlDataR()

        DropDownListPartido.DataSource = DatasetRamos
        DropDownListPartido.DataTextField = "partido_nombre"
        DropDownListPartido.DataValueField = "id_partido"
        DropDownListPartido.DataBind()

        'CARGA COMBO DE STATUS
        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT id_status,status_nombre FROM status;"

        DatasetRamos = oMyFunctions.mySqlDataR()

        DropDownListStatus.DataSource = DatasetRamos
        DropDownListStatus.DataTextField = "status_nombre"
        DropDownListStatus.DataValueField = "id_status"
        DropDownListStatus.DataBind()

        'CARGA COMBO DE PROPONENTE
        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT id_diputado,diputado_nombre FROM diputado;"

        DatasetRamos = oMyFunctions.mySqlDataR()

        DropDownListProponente.DataSource = DatasetRamos
        DropDownListProponente.DataTextField = "diputado_nombre"
        DropDownListProponente.DataValueField = "id_diputado"
        DropDownListProponente.DataBind()

        'CARGA COMBO DE COMISION
        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT id_comision_dictaminadora,comision_dictaminadora_nombre FROM comision_dictaminadora;"

        DatasetRamos = oMyFunctions.mySqlDataR()

        DropDownListComision.DataSource = DatasetRamos
        DropDownListComision.DataTextField = "comision_dictaminadora_nombre"
        DropDownListComision.DataValueField = "id_comision_dictaminadora"
        DropDownListComision.DataBind()


        'CARGA USUARIOS
        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT distinct p.id_proyecto,p.proyecto_nombre,proyecto_descripcion,l.legislacion_nombre,se.sesion_nombre as sesion,d.diputado_nombre,cd.comision_dictaminadora_nombre,s.status_nombre,DATE_FORMAT(p.fecha_creacion,'%Y-%m-%d') as fecha,td.tipo_debate_nombre,par.partido_nombre,l.id_legislacion,p.id_proponente,cd.id_comision_dictaminadora,sp.id_status " +
                                         " FROM sesion_proyecto sp ,sesiones se , proyectos p , " +
                                         " tipo_debate td," +
                                         " legislacion l ," +
                                         " diputado d , " +
                                         " partido par , " +
                                         " comision_dictaminadora cd , " +
                                         " status s  " +
                                         " WHERE sp.id_proyecto=p.id_proyecto AND sp.id_sesion=se.id_sesiones AND sp.id_tipo_debate=td.id_tipo_debate AND p.id_legislacion=l.id_legislacion AND p.id_proponente=d.id_diputado AND d.id_partido=par.id_partido AND p.id_comision_dictaminadora=cd.id_comision_dictaminadora AND sp.id_status=s.id_status order by p.id_proyecto,id_sesion_proyecto ;"
        GridViewActosLegislativos.DataSource = oMyFunctions.mySqlDataR()
        GridViewActosLegislativos.DataBind()
        Return ""

    End Function

    Private Sub GridViewproyectosList_PreRender(sender As Object, e As EventArgs) Handles GridViewActosLegislativos.PreRender
        'ESTO AGREGA A LA LABLA EL TAG <THEAD> Y <TBODY> PARA QUE EL BOOTSTRAP LE PUEDA AGREGAR LA PAGINACION Y LA BUSQUEDA
        If (GridViewActosLegislativos.Rows.Count > 0) Then
            GridViewActosLegislativos.UseAccessibleHeader = True
            GridViewActosLegislativos.HeaderRow.TableSection = TableRowSection.TableHeader
            GridViewActosLegislativos.FooterRow.TableSection = TableRowSection.TableFooter
        End If
    End Sub

    Private Sub GridViewproyectosList_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridViewActosLegislativos.RowCommand
        Dim oMyFunctions As New MyFunctions
        Try
            'OBTIENE LA LINEA SELECCIONADA EN EL GRIDVIEW
            Dim gvr As GridViewRow = ((e.CommandSource).NamingContainer)
            Dim index As Integer = gvr.RowIndex

            Me.ViewState.Add("Idproyectos", GridViewActosLegislativos.DataKeys(index).Item(0).ToString())
            'MODIFICA EL USUARIO
            If e.CommandName = "Modificar" Then
                Try
                    BtnActualizarproyectosModal.Visible = True
                    BtnCrearproyectosModal.Visible = False
                    TextBoxActoLegislativo.Text = Server.HtmlDecode(GridViewActosLegislativos.Rows(index).Cells(4).Text.ToString)
                    TextBoxDescripcion.Text = Server.HtmlDecode(GridViewActosLegislativos.Rows(index).Cells(5).Text.ToString)

                    'id_legislacion, id_proponente, id_comision_dictaminadora, id_status

                    Dim id_legislacion As String = GridViewActosLegislativos.DataKeys(index).Item(1).ToString()
                    If (id_legislacion <> "") Then
                        DropDownListTipoActo.SelectedValue = Server.HtmlDecode(id_legislacion)
                    End If

                    Dim id_proponente As String = GridViewActosLegislativos.DataKeys(index).Item(2).ToString()
                    If (id_proponente <> "") Then
                        DropDownListProponente.SelectedValue = Server.HtmlDecode(id_proponente)
                    End If

                    Dim id_comision_dictaminadora As String = GridViewActosLegislativos.DataKeys(index).Item(3).ToString()
                    If (id_comision_dictaminadora <> "") Then
                        DropDownListComision.SelectedValue = Server.HtmlDecode(id_comision_dictaminadora)
                    End If

                    Dim id_status As String = GridViewActosLegislativos.DataKeys(index).Item(4).ToString()
                    If (id_status <> "") Then
                        DropDownListStatus.SelectedValue = Server.HtmlDecode(id_status)
                    End If

                    TextBoxFecha.Text = Server.HtmlDecode(GridViewActosLegislativos.Rows(index).Cells(12).Text.ToString)



                    'AQEUI VA EL NOMBRE DEL DIV QUE CONTIENE EL MODAL
                    ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modalproyectos').modal('show');", True)
                Catch ex As Exception
                    LiteralEncabezadoproyectos.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If

            'ELIMINA EL USUARIO
            If e.CommandName = "Eliminar" Then
                Try
                    oMyFunctions.sqlString = " DELETE FROM `sesion_proyecto` WHERE id_proyecto='" + GridViewActosLegislativos.Rows(index).Cells(2).Text.ToString + "'"
                    oMyFunctions.mySqlDataR()
                    oMyFunctions.sqlString = " DELETE FROM proyectos WHERE id_proyecto='" + GridViewActosLegislativos.Rows(index).Cells(2).Text.ToString + "'"
                    oMyFunctions.mySqlDataR()
                    LiteralEncabezadoproyectos.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido elimiando satisfactoriamente.")
                    CargarGrid()
                Catch ex As Exception
                    LiteralEncabezadoproyectos.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If
        Catch ex As Exception
            LiteralEncabezadoproyectos.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub GridViewproyectosList_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridViewActosLegislativos.RowDataBound
        'ESTO PERMITE QUE ANTES DE ELIMINAR UN REGISTRO , SE LE PREGUNTE AL USUARIO UNA CONFIRMACION DE LA ACCION
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim l As LinkButton = e.Row.FindControl("LinkButtonEliminar")
            Dim cadena As String = "javascript:return confirm('Esta seguro de eliminar este registro')"
            l.Attributes.Add("onclick", cadena)
        End If
    End Sub

    'Private Sub BtnCrearproyectos_Click(sender As Object, e As EventArgs) Handles BtnCrearproyectos.Click
    '    BtnActualizarproyectosModal.Visible = False
    '    BtnCrearproyectosModal.Visible = True
    '    TextBoxproyectos.Text = ""
    '    ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modalproyectos').modal('show');", True)
    'End Sub

    'Private Sub BtnCrearproyectosModal_Click(sender As Object, e As EventArgs) Handles BtnCrearproyectosModal.Click
    '    Dim oMyFunctions As New MyFunctions
    '    Try
    '        oMyFunctions.sqlString = ""
    '        oMyFunctions.sqlString += " INSERT INTO proyectos (proyectos_nombre) VALUES('" & TextBoxproyectos.Text.ToString & "');"
    '        oMyFunctions.mySqlDataR()
    '        LiteralEncabezadoproyectos.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
    '        CargarGrid()
    '    Catch ex As Exception
    '        LiteralEncabezadoproyectos.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
    '    End Try

    'End Sub

    Private Sub BtnActualizarproyectosModal_Click(sender As Object, e As EventArgs) Handles BtnActualizarproyectosModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString = "SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;"
            oMyFunctions.sqlString += " UPDATE proyectos SET proyecto_nombre='" & TextBoxActoLegislativo.Text.ToString & "',proyecto_descripcion='" & TextBoxDescripcion.Text.ToString & "',id_legislacion=" + DropDownListTipoActo.SelectedValue.ToString + ",id_proponente=" + DropDownListProponente.SelectedValue.ToString + ",id_comision_dictaminadora=" + DropDownListComision.SelectedValue.ToString + ",id_status=" + DropDownListStatus.SelectedValue.ToString + ",fecha_creacion='" & TextBoxFecha.Text.ToString & "' WHERE id_proyecto='" & Me.ViewState("Idproyectos").ToString & "';"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadoproyectos.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadoproyectos.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try
    End Sub

End Class