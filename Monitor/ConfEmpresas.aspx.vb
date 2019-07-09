Public Class ConfEmpresas
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

            '    LiteralEncabezadoempresa.Text = oMyFunctions.ArmarMensaje("alert alert-info alert-dismissable", "empresa")

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
        oMyFunctions.sqlString += " SELECT * FROM empresa;"
        GridViewempresaList.DataSource = oMyFunctions.mySqlDataR()
        GridViewempresaList.DataBind()
        Return ""

    End Function

    Private Sub GridViewempresaList_PreRender(sender As Object, e As EventArgs) Handles GridViewempresaList.PreRender
        'ESTO AGREGA A LA LABLA EL TAG <THEAD> Y <TBODY> PARA QUE EL BOOTSTRAP LE PUEDA AGREGAR LA PAGINACION Y LA BUSQUEDA
        If (GridViewempresaList.Rows.Count > 0) Then
            GridViewempresaList.UseAccessibleHeader = True
            GridViewempresaList.HeaderRow.TableSection = TableRowSection.TableHeader
            GridViewempresaList.FooterRow.TableSection = TableRowSection.TableFooter
        End If
    End Sub

    Private Sub GridViewempresaList_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridViewempresaList.RowCommand
        Dim oMyFunctions As New MyFunctions
        Try
            'OBTIENE LA LINEA SELECCIONADA EN EL GRIDVIEW
            Dim gvr As GridViewRow = ((e.CommandSource).NamingContainer)
            Dim index As Integer = gvr.RowIndex

            Me.ViewState.Add("Idempresa", GridViewempresaList.DataKeys(index).Item(0).ToString())

            'MODIFICA EL USUARIO
            If e.CommandName = "Modificar" Then
                Try
                    BtnActualizarempresaModal.Visible = True
                    BtnCrearempresaModal.Visible = False
                    TextBoxempresa.Text = Server.HtmlDecode(GridViewempresaList.Rows(index).Cells(3).Text.ToString)
                    'AQEUI VA EL NOMBRE DEL DIV QUE CONTIENE EL MODAL
                    ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modalempresa').modal('show');", True)
                Catch ex As Exception
                    LiteralEncabezadoempresa.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If

            'ELIMINA EL USUARIO
            If e.CommandName = "Eliminar" Then
                Try
                    oMyFunctions.sqlString += " DELETE FROM empresa WHERE id_empresa='" + GridViewempresaList.Rows(index).Cells(2).Text.ToString + "'"
                    oMyFunctions.mySqlDataR()
                    LiteralEncabezadoempresa.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido elimiando satisfactoriamente")
                    CargarGrid()
                Catch ex As Exception
                    LiteralEncabezadoempresa.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If
        Catch ex As Exception
            LiteralEncabezadoempresa.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub GridViewempresaList_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridViewempresaList.RowDataBound
        'ESTO PERMITE QUE ANTES DE ELIMINAR UN REGISTRO , SE LE PREGUNTE AL USUARIO UNA CONFIRMACION DE LA ACCION
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim l As LinkButton = e.Row.FindControl("LinkButtonEliminar")
            Dim cadena As String = "javascript:return confirm('Esta seguro de eliminar este registro')"
            l.Attributes.Add("onclick", cadena)
        End If
    End Sub

    Private Sub BtnCrearempresa_Click(sender As Object, e As EventArgs) Handles BtnCrearempresa.Click
        BtnActualizarempresaModal.Visible = False
        BtnCrearempresaModal.Visible = True
        TextBoxempresa.Text = ""
        ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modalempresa').modal('show');", True)
    End Sub

    Private Sub BtnCrearempresaModal_Click(sender As Object, e As EventArgs) Handles BtnCrearempresaModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " INSERT INTO empresa (empresa_nombre) VALUES('" & TextBoxempresa.Text.ToString & "');"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadoempresa.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadoempresa.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub BtnActualizarempresaModal_Click(sender As Object, e As EventArgs) Handles BtnActualizarempresaModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString = "SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED ;"
            oMyFunctions.sqlString += " UPDATE empresa SET empresa_nombre='" & TextBoxempresa.Text.ToString & "' WHERE id_empresa='" & Me.ViewState("Idempresa").ToString & "';"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadoempresa.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadoempresa.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try
    End Sub


End Class