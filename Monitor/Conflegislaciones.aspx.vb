Public Class Conflegislaciones
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

            '    LiteralEncabezadolegislacion.Text = oMyFunctions.ArmarMensaje("alert alert-info alert-dismissable", "legislacion")

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
        oMyFunctions.sqlString += " SELECT * FROM legislacion;"
        GridViewlegislacionList.DataSource = oMyFunctions.mySqlDataR()
        GridViewlegislacionList.DataBind()
        Return ""

    End Function

    Private Sub GridViewlegislacionList_PreRender(sender As Object, e As EventArgs) Handles GridViewlegislacionList.PreRender
        'ESTO AGREGA A LA LABLA EL TAG <THEAD> Y <TBODY> PARA QUE EL BOOTSTRAP LE PUEDA AGREGAR LA PAGINACION Y LA BUSQUEDA
        If (GridViewlegislacionList.Rows.Count > 0) Then
            GridViewlegislacionList.UseAccessibleHeader = True
            GridViewlegislacionList.HeaderRow.TableSection = TableRowSection.TableHeader
            GridViewlegislacionList.FooterRow.TableSection = TableRowSection.TableFooter
        End If
    End Sub

    Private Sub GridViewlegislacionList_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridViewlegislacionList.RowCommand
        Dim oMyFunctions As New MyFunctions
        Try
            'OBTIENE LA LINEA SELECCIONADA EN EL GRIDVIEW
            Dim gvr As GridViewRow = ((e.CommandSource).NamingContainer)
            Dim index As Integer = gvr.RowIndex

            Me.ViewState.Add("Idlegislacion", GridViewlegislacionList.DataKeys(index).Item(0).ToString())

            'MODIFICA EL USUARIO
            If e.CommandName = "Modificar" Then
                Try
                    BtnActualizarlegislacionModal.Visible = True
                    BtnCrearlegislacionModal.Visible = False
                    TextBoxlegislacion.Text = Server.HtmlDecode(GridViewlegislacionList.Rows(index).Cells(3).Text.ToString)
                    'AQEUI VA EL NOMBRE DEL DIV QUE CONTIENE EL MODAL
                    ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modallegislacion').modal('show');", True)
                Catch ex As Exception
                    LiteralEncabezadolegislacion.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If

            'ELIMINA EL USUARIO
            If e.CommandName = "Eliminar" Then
                Try
                    oMyFunctions.sqlString += " DELETE FROM legislacion WHERE id_legislacion='" + GridViewlegislacionList.Rows(index).Cells(2).Text.ToString + "'"
                    oMyFunctions.mySqlDataR()
                    LiteralEncabezadolegislacion.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido elimiando satisfactoriamente")
                    CargarGrid()
                Catch ex As Exception
                    LiteralEncabezadolegislacion.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If
        Catch ex As Exception
            LiteralEncabezadolegislacion.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub GridViewlegislacionList_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridViewlegislacionList.RowDataBound
        'ESTO PERMITE QUE ANTES DE ELIMINAR UN REGISTRO , SE LE PREGUNTE AL USUARIO UNA CONFIRMACION DE LA ACCION
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim l As LinkButton = e.Row.FindControl("LinkButtonEliminar")
            Dim cadena As String = "javascript:return confirm('Esta seguro de eliminar este registro')"
            l.Attributes.Add("onclick", cadena)
        End If
    End Sub

    Private Sub BtnCrearlegislacion_Click(sender As Object, e As EventArgs) Handles BtnCrearlegislacion.Click
        BtnActualizarlegislacionModal.Visible = False
        BtnCrearlegislacionModal.Visible = True
        TextBoxlegislacion.Text = ""
        ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modallegislacion').modal('show');", True)
    End Sub

    Private Sub BtnCrearlegislacionModal_Click(sender As Object, e As EventArgs) Handles BtnCrearlegislacionModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " INSERT INTO legislacion (legislacion_nombre) VALUES('" & TextBoxlegislacion.Text.ToString & "');"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadolegislacion.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadolegislacion.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub BtnActualizarlegislacionModal_Click(sender As Object, e As EventArgs) Handles BtnActualizarlegislacionModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString = "SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;"
            oMyFunctions.sqlString += " UPDATE legislacion SET legislacion_nombre='" & TextBoxlegislacion.Text.ToString & "' WHERE id_legislacion='" & Me.ViewState("Idlegislacion").ToString & "';"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadolegislacion.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadolegislacion.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try
    End Sub


End Class