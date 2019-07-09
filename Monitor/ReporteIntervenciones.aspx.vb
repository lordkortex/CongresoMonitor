Public Class ReporteIntervenciones
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

            '    LiteralEncabezadosesiones.Text = oMyFunctions.ArmarMensaje("alert alert-info alert-dismissable", "sesiones")

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
        oMyFunctions.sqlString = "Select di.id_detalle_intervencion,di.id_sesion_proyecto,p.proyecto_nombre,di.id_diputado,d.diputado_nombre,di.intervencion_texto,DATE_FORMAT(s.sesion_fecha_creacion,'%Y-%m-%d') as fecha FROM detalle_intervencion di,diputado d,sesion_proyecto sp, proyectos p,sesiones s WHERE di.id_diputado=d.id_diputado and di.id_sesion_proyecto=sp.id_sesion_proyecto and sp.id_proyecto = p.id_proyecto and sp.id_sesion=s.id_sesiones"
        GridViewIntervencionesList.DataSource = oMyFunctions.mySqlDataR()
        GridViewIntervencionesList.DataBind()
        Return ""

    End Function

    Private Sub GridViewsesionesList_PreRender(sender As Object, e As EventArgs) Handles GridViewIntervencionesList.PreRender
        'ESTO AGREGA A LA LABLA EL TAG <THEAD> Y <TBODY> PARA QUE EL BOOTSTRAP LE PUEDA AGREGAR LA PAGINACION Y LA BUSQUEDA
        If (GridViewIntervencionesList.Rows.Count > 0) Then
            GridViewIntervencionesList.UseAccessibleHeader = True
            GridViewIntervencionesList.HeaderRow.TableSection = TableRowSection.TableHeader
            GridViewIntervencionesList.FooterRow.TableSection = TableRowSection.TableFooter
        End If
    End Sub

    Private Sub GridViewsesionesList_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridViewIntervencionesList.RowCommand
        Dim oMyFunctions As New MyFunctions
        Try
            'OBTIENE LA LINEA SELECCIONADA EN EL GRIDVIEW
            Dim gvr As GridViewRow = ((e.CommandSource).NamingContainer)
            Dim index As Integer = gvr.RowIndex

            Me.ViewState.Add("id_detalle_intervencion", GridViewIntervencionesList.DataKeys(index).Item(0).ToString())

            'MODIFICA EL USUARIO
            If e.CommandName = "Modificar" Then
                Try
                    BtnActualizarsesionesModal.Visible = True
                    BtnCrearsesionesModal.Visible = False
                    TextBoxIntervencion.Text = Server.HtmlDecode(GridViewIntervencionesList.Rows(index).Cells(5).Text.ToString)
                    'TextBoxsesiones_fecha.Text = Server.HtmlDecode(GridViewIntervencionesList.Rows(index).Cells(4).Text.ToString)
                    'TextBoxsesiones_corta.Text = Server.HtmlDecode(GridViewIntervencionesList.Rows(index).Cells(5).Text.ToString)
                    'TextBoxsesiones_larga.Text = Server.HtmlDecode(GridViewIntervencionesList.Rows(index).Cells(6).Text.ToString)
                    'AQEUI VA EL NOMBRE DEL DIV QUE CONTIENE EL MODAL
                    ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modalsesiones').modal('show');", True)
                Catch ex As Exception
                    LiteralEncabezadosesiones.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If

            'ELIMINA EL USUARIO
            If e.CommandName = "Eliminar" Then
                Try
                    oMyFunctions.sqlString += " DELETE FROM detalle_intervencion WHERE id_detalle_intervencion='" + Me.ViewState("id_detalle_intervencion").ToString() + "'"
                    oMyFunctions.mySqlDataR()
                    LiteralEncabezadosesiones.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido elimiando satisfactoriamente")
                    CargarGrid()
                Catch ex As Exception
                    LiteralEncabezadosesiones.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If
        Catch ex As Exception
            LiteralEncabezadosesiones.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub GridViewsesionesList_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridViewIntervencionesList.RowDataBound
        'ESTO PERMITE QUE ANTES DE ELIMINAR UN REGISTRO , SE LE PREGUNTE AL USUARIO UNA CONFIRMACION DE LA ACCION
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim l As LinkButton = e.Row.FindControl("LinkButtonEliminar")
            Dim cadena As String = "javascript:return confirm('Esta seguro de eliminar este registro')"
            l.Attributes.Add("onclick", cadena)
        End If
    End Sub

  

    Private Sub BtnCrearsesionesModal_Click(sender As Object, e As EventArgs) Handles BtnCrearsesionesModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            'oMyFunctions.sqlString += " INSERT INTO sesiones (sesion_nombre,descripcion_corta,descripcion_larga) VALUES('" & TextBoxsesiones.Text.ToString & "','" + TextBoxsesiones_corta.Text + "','" + TextBoxsesiones_larga.Text + "');"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadosesiones.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadosesiones.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub BtnActualizarsesionesModal_Click(sender As Object, e As EventArgs) Handles BtnActualizarsesionesModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString = "SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;"
            oMyFunctions.sqlString += " UPDATE detalle_intervencion SET  	intervencion_texto='" + TextBoxIntervencion.Text + "' WHERE id_detalle_intervencion='" & Me.ViewState("id_detalle_intervencion").ToString() & "';"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadosesiones.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadosesiones.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try
    End Sub


End Class