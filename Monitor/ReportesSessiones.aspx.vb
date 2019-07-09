Imports System.Globalization

Public Class ReportesSessiones
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
        oMyFunctions.sqlString = "Select id_sesiones,sesion_nombre,DATE_FORMAT(sesion_fecha_creacion,'%Y-%m-%d') as fecha_YYYY_MM_DD,descripcion_corta,descripcion_larga FROM sesiones"
        GridViewsesionesList.DataSource = oMyFunctions.mySqlDataR()
        GridViewsesionesList.DataBind()
        Return ""

    End Function

    Private Sub GridViewsesionesList_PreRender(sender As Object, e As EventArgs) Handles GridViewsesionesList.PreRender
        'ESTO AGREGA A LA LABLA EL TAG <THEAD> Y <TBODY> PARA QUE EL BOOTSTRAP LE PUEDA AGREGAR LA PAGINACION Y LA BUSQUEDA
        If (GridViewsesionesList.Rows.Count > 0) Then
            GridViewsesionesList.UseAccessibleHeader = True
            GridViewsesionesList.HeaderRow.TableSection = TableRowSection.TableHeader
            GridViewsesionesList.FooterRow.TableSection = TableRowSection.TableFooter
        End If
    End Sub

    Private Sub GridViewsesionesList_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridViewsesionesList.RowCommand
        Dim oMyFunctions As New MyFunctions
        Try
            'OBTIENE LA LINEA SELECCIONADA EN EL GRIDVIEW
            Dim gvr As GridViewRow = ((e.CommandSource).NamingContainer)
            Dim index As Integer = gvr.RowIndex

            Me.ViewState.Add("Idsesiones", GridViewsesionesList.DataKeys(index).Item(0).ToString())

            'MODIFICA EL USUARIO
            If e.CommandName = "Modificar" Then
                Try
                    BtnActualizarsesionesModal.Visible = True
                    BtnCrearsesionesModal.Visible = False
                    TextBoxsesiones.Text = Server.HtmlDecode(GridViewsesionesList.Rows(index).Cells(3).Text.ToString)

                    'Dim d As String = GridViewsesionesList.Rows(index).Cells(4).Text.ToString
                    'Dim dt As DateTime = DateTime.ParseExact(d, "dd/MM/yyyy", CultureInfo.InvariantCulture)
                    'Dim newString As String = dt.ToString("yyyy/MM/dd")

                    TextBoxsesiones_fecha.Text = Server.HtmlDecode(GridViewsesionesList.Rows(index).Cells(4).Text.ToString)

                    TextBoxsesiones_corta.Text = Server.HtmlDecode(GridViewsesionesList.Rows(index).Cells(5).Text.ToString)
                    TextBoxsesiones_larga.Text = Server.HtmlDecode(GridViewsesionesList.Rows(index).Cells(6).Text.ToString)
                    'AQEUI VA EL NOMBRE DEL DIV QUE CONTIENE EL MODAL
                    ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modalsesiones').modal('show');", True)
                Catch ex As Exception
                    LiteralEncabezadosesiones.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If

            'ELIMINA EL USUARIO
            If e.CommandName = "Eliminar" Then
                Try
                    oMyFunctions.sqlString += " DELETE FROM sesiones WHERE id_sesiones='" + GridViewsesionesList.Rows(index).Cells(2).Text.ToString + "'"
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

    Private Sub GridViewsesionesList_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridViewsesionesList.RowDataBound
        'ESTO PERMITE QUE ANTES DE ELIMINAR UN REGISTRO , SE LE PREGUNTE AL USUARIO UNA CONFIRMACION DE LA ACCION
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim l As LinkButton = e.Row.FindControl("LinkButtonEliminar")
            Dim cadena As String = "javascript:return confirm('Esta seguro de eliminar este registro')"
            l.Attributes.Add("onclick", cadena)
        End If
    End Sub

    Private Sub BtnCrearsesiones_Click(sender As Object, e As EventArgs) Handles BtnCrearsesiones.Click
        BtnActualizarsesionesModal.Visible = False
        BtnCrearsesionesModal.Visible = True
        TextBoxsesiones.Text = ""
        TextBoxsesiones_corta.Text = ""
        TextBoxsesiones_larga.Text = ""
        TextBoxsesiones_fecha.Text = ""


        ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modalsesiones').modal('show');", True)
    End Sub

    Private Sub BtnCrearsesionesModal_Click(sender As Object, e As EventArgs) Handles BtnCrearsesionesModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " INSERT INTO sesiones (sesion_nombre,descripcion_corta,descripcion_larga) VALUES('" & TextBoxsesiones.Text.ToString & "','" + TextBoxsesiones_corta.Text + "','" + TextBoxsesiones_larga.Text + "');"
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
            oMyFunctions.sqlString += " UPDATE sesiones SET  	sesion_fecha_creacion='" + TextBoxsesiones_fecha.Text + "', descripcion_corta='" + TextBoxsesiones_corta.Text + "',descripcion_larga='" + TextBoxsesiones_larga.Text + "',sesion_nombre='" & TextBoxsesiones.Text.ToString & "' WHERE id_sesiones='" & Me.ViewState("Idsesiones").ToString & "';"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadosesiones.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadosesiones.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try
    End Sub


End Class