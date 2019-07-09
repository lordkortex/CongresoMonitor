Public Class ConfUsuarios
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

            '    LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-info alert-dismissable", "usuario")

            '    Dim strUsuario As String
            '    If Not (Session("idusuario") Is Nothing) Then
            '        strUsuario = Session("idusuario").ToString
            Dim DataSetUsuarios As New DataSet
            CargarGrid()
            '    End If
        End If

    End Sub

    Public Function CargarGridPalabra()
        Try
            Dim oMyFunctions As New MyFunctions
            'CARGA COMBO DE EMPRESAS
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " SELECT id_palabra_clave,id_usuario,palabra_clave_a,palabra_clave_b,palabra_clave_c FROM palabra_clave where id_usuario=" + Me.ViewState("Idusuario").ToString + ";"

            GridViewpalabra_clave.DataSource = oMyFunctions.mySqlDataR()
            GridViewpalabra_clave.DataBind()

        Catch ex As Exception
            Response.Redirect("../Default.aspx")
        End Try

    End Function



    Public Function CargarGrid()
        Dim oMyFunctions As New MyFunctions

        'CARGA COMBO DE EMPRESAS
        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT id_empresa,empresa_nombre FROM empresa;"

        Dim DatasetRamos As DataSet = oMyFunctions.mySqlDataR()

        DropDownListEmpresa.DataSource = DatasetRamos
        DropDownListEmpresa.DataTextField = "empresa_nombre"
        DropDownListEmpresa.DataValueField = "id_empresa"
        DropDownListEmpresa.DataBind()


        'CARGA USUARIOS
        oMyFunctions.sqlString = ""
        oMyFunctions.sqlString += " SELECT u.id_usuario,u.usuario_nombre,u.usuario_contrasena,u.usuario_fecha_expira,u.usuario_email,u.id_empresa,e.empresa_nombre,u.perfil,u.device FROM usuario u left join empresa e ON u.id_empresa=e.id_empresa ;"
        GridViewusuarioList.DataSource = oMyFunctions.mySqlDataR()
        GridViewusuarioList.DataBind()
        Return ""

    End Function

    Private Sub GridViewusuarioList_PreRender(sender As Object, e As EventArgs) Handles GridViewusuarioList.PreRender
        'ESTO AGREGA A LA LABLA EL TAG <THEAD> Y <TBODY> PARA QUE EL BOOTSTRAP LE PUEDA AGREGAR LA PAGINACION Y LA BUSQUEDA
        If (GridViewusuarioList.Rows.Count > 0) Then
            GridViewusuarioList.UseAccessibleHeader = True
            GridViewusuarioList.HeaderRow.TableSection = TableRowSection.TableHeader
            GridViewusuarioList.FooterRow.TableSection = TableRowSection.TableFooter
        End If
    End Sub

    Private Sub GridViewPalabraClave_PreRender(sender As Object, e As EventArgs) Handles GridViewpalabra_clave.PreRender
        'ESTO AGREGA A LA LABLA EL TAG <THEAD> Y <TBODY> PARA QUE EL BOOTSTRAP LE PUEDA AGREGAR LA PAGINACION Y LA BUSQUEDA
        If (GridViewpalabra_clave.Rows.Count > 0) Then
            GridViewpalabra_clave.UseAccessibleHeader = True
            GridViewpalabra_clave.HeaderRow.TableSection = TableRowSection.TableHeader
            GridViewpalabra_clave.FooterRow.TableSection = TableRowSection.TableFooter
        End If
    End Sub

    Private Sub GridViewPalabraClave_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridViewpalabra_clave.RowCommand
        Dim oMyFunctions As New MyFunctions
        Try
            'OBTIENE LA LINEA SELECCIONADA EN EL GRIDVIEW
            Dim gvr As GridViewRow = ((e.CommandSource).NamingContainer)
            Dim index As Integer = gvr.RowIndex

            Me.ViewState.Add("Idpalabra_clave", GridViewpalabra_clave.DataKeys(index).Item(0).ToString())

            'MODIFICA EL USUARIO
            If e.CommandName = "Modificar" Then
                Try
                    BtnActualizarPalabraClaveModal.Visible = True
                    BtnCrearPalabraClaveModal.Visible = False
                    TextBoxPalabraClaveA.Text = Server.HtmlDecode(GridViewpalabra_clave.Rows(index).Cells(2).Text.ToString)
                    TextBoxPalabraClaveB.Text = Server.HtmlDecode(GridViewpalabra_clave.Rows(index).Cells(3).Text.ToString)
                    TextBoxPalabraClaveC.Text = Server.HtmlDecode(GridViewpalabra_clave.Rows(index).Cells(4).Text.ToString)
                    'AQEUI VA EL NOMBRE DEL DIV QUE CONTIENE EL MODAL
                    ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modalpalabra_clave').modal('show');", True)
                Catch ex As Exception
                    LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If

            'ELIMINA EL USUARIO
            If e.CommandName = "Eliminar" Then
                Try
                    oMyFunctions.sqlString += " DELETE FROM palabra_clave WHERE id_palabra_clave='" + GridViewpalabra_clave.DataKeys(index).Item(0).ToString() + "'"
                    oMyFunctions.mySqlDataR()
                    LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido elimiando satisfactoriamente")
                    CargarGridPalabra()
                Catch ex As Exception
                    LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If
        Catch ex As Exception
            LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try
    End Sub

    Private Sub GridViewusuarioList_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridViewusuarioList.RowCommand
        Dim oMyFunctions As New MyFunctions
        Try
            'OBTIENE LA LINEA SELECCIONADA EN EL GRIDVIEW
            Dim gvr As GridViewRow = ((e.CommandSource).NamingContainer)
            Dim index As Integer = gvr.RowIndex

            Me.ViewState.Add("Idusuario", GridViewusuarioList.DataKeys(index).Item(0).ToString())
            Me.ViewState.Add("Idempresa", GridViewusuarioList.DataKeys(index).Item(1).ToString())


            'VER palabra
            If e.CommandName = "VerPalabra" Then
                Try

                    litHeaderTablaPalabras.Text = "Tabla de Configuración de la Lista de palabras claves de Usuario : " + GridViewusuarioList.Rows(index).Cells(2).Text.ToString

                    oMyFunctions.sqlString = ""
                    oMyFunctions.sqlString += " SELECT id_palabra_clave,id_usuario,palabra_clave_a,palabra_clave_b,palabra_clave_c FROM palabra_clave where id_usuario=" + GridViewusuarioList.DataKeys(index).Item(0).ToString() + ";"

                    GridViewpalabra_clave.DataSource = oMyFunctions.mySqlDataR()
                    GridViewpalabra_clave.DataBind()
                Catch ex As Exception
                    LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If

            If e.CommandName = "CrearPalabra" Then
                Try

                    BtnActualizarPalabraClaveModal.Visible = False
                    BtnCrearPalabraClaveModal.Visible = True
                    TextBoxPalabraClaveA.Text = ""
                    TextBoxPalabraClaveB.Text = ""
                    TextBoxPalabraClaveC.Text = ""

                    ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modalpalabra_clave').modal('show');", True)
                Catch ex As Exception
                    LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If

            'MODIFICA EL USUARIO
            If e.CommandName = "Modificar" Then
                Try
                    BtnActualizarusuarioModal.Visible = True
                    BtnCrearusuarioModal.Visible = False
                    TextBoxusuario.Text = GridViewusuarioList.Rows(index).Cells(2).Text.ToString
                    TextBoxcontrasena.Text = GridViewusuarioList.Rows(index).Cells(3).Text.ToString
                    TextBoxemail.Text = GridViewusuarioList.Rows(index).Cells(5).Text.ToString
                    TextBoxPerfil.Text = GridViewusuarioList.Rows(index).Cells(7).Text.ToString
                    TextBoxDevice.Text = GridViewusuarioList.Rows(index).Cells(4).Text.ToString
                    'TextBoxfecha_expiracion.Text = GridViewusuarioList.Rows(index).Cells(4).Text.ToString
                    DropDownListEmpresa.SelectedValue = GridViewusuarioList.DataKeys(index).Item(1).ToString()
                    'AQEUI VA EL NOMBRE DEL DIV QUE CONTIENE EL MODAL
                    ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modalusuario').modal('show');", True)
                Catch ex As Exception
                    LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If

            'ELIMINA EL USUARIO
            If e.CommandName = "Eliminar" Then
                Try
                    oMyFunctions.sqlString += " DELETE FROM usuario WHERE id_usuario='" + GridViewusuarioList.DataKeys(index).Item(0).ToString() + "'"
                    oMyFunctions.mySqlDataR()
                    LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido elimiando satisfactoriamente")
                    CargarGrid()
                Catch ex As Exception
                    LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
                End Try
            End If
        Catch ex As Exception
            LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub

    Private Sub GridViewPalabraClave_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridViewpalabra_clave.RowDataBound
        'ESTO PERMITE QUE ANTES DE ELIMINAR UN REGISTRO , SE LE PREGUNTE AL USUARIO UNA CONFIRMACION DE LA ACCION
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim l As LinkButton = e.Row.FindControl("LinkButtonEliminar")
            Dim cadena As String = "javascript:return confirm('Esta seguro de eliminar este registro')"
            l.Attributes.Add("onclick", cadena)
        End If
    End Sub

    Private Sub GridViewusuarioList_RowDataBound(sender As Object, e As GridViewRowEventArgs) Handles GridViewusuarioList.RowDataBound
        'ESTO PERMITE QUE ANTES DE ELIMINAR UN REGISTRO , SE LE PREGUNTE AL USUARIO UNA CONFIRMACION DE LA ACCION
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim l As LinkButton = e.Row.FindControl("LinkButtonEliminar")
            Dim cadena As String = "javascript:return confirm('Esta seguro de eliminar este registro')"
            l.Attributes.Add("onclick", cadena)
        End If
    End Sub

    Private Sub BtnCrearusuario_Click(sender As Object, e As EventArgs) Handles BtnCrearusuario.Click
        BtnActualizarusuarioModal.Visible = False
        BtnCrearusuarioModal.Visible = True
        TextBoxusuario.Text = ""
        TextBoxcontrasena.Text = ""
        TextBoxfecha_expiracion.Text = ""
        TextBoxemail.Text = ""
        TextBoxPerfil.Text = ""

        ScriptManager.RegisterStartupScript(Page, Me.GetType(), "id", "$('#Modalusuario').modal('show');", True)
    End Sub

    Private Sub BtnCrearusuarioModal_Click(sender As Object, e As EventArgs) Handles BtnCrearusuarioModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " INSERT INTO usuario (usuario_nombre,usuario_contrasena,usuario_fecha_expira,usuario_email,id_empresa,perfil) VALUES('" & TextBoxusuario.Text.ToString & "','" + TextBoxcontrasena.Text.ToString + "','" + TextBoxfecha_expiracion.ToString + "','" + TextBoxemail.Text.ToString + "'," + DropDownListEmpresa.SelectedValue.ToString + ",'" & TextBoxPerfil.Text & "');"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try

    End Sub


    Private Sub BtnActualizarusuarioModal_Click(sender As Object, e As EventArgs) Handles BtnActualizarusuarioModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " UPDATE usuario SET device='" & TextBoxDevice.Text.ToString & "',perfil='" & TextBoxPerfil.Text.ToString & "', usuario_nombre='" & TextBoxusuario.Text.ToString & "',usuario_contrasena='" + TextBoxcontrasena.Text.ToString + "',usuario_fecha_expira='" + TextBoxfecha_expiracion.Text + "',usuario_email='" + TextBoxemail.Text.ToString + "',id_empresa=" + DropDownListEmpresa.SelectedValue.ToString + " WHERE id_usuario='" & Me.ViewState("Idusuario").ToString & "';"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGrid()
        Catch ex As Exception
            LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try
    End Sub

    Private Sub BtnCrearPalabraClaveModal_Click(sender As Object, e As EventArgs) Handles BtnCrearPalabraClaveModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " INSERT INTO palabra_clave (id_usuario,palabra_clave_a,palabra_clave_b,palabra_clave_c) VALUES(" + Me.ViewState("Idusuario").ToString + ",'" & TextBoxPalabraClaveA.Text.ToString & "','" + TextBoxPalabraClaveB.Text.ToString + "','" + TextBoxPalabraClaveC.Text.ToString + "');"
            oMyFunctions.mySqlDataR()
            LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGridPalabra()
        Catch ex As Exception
            LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try
    End Sub

    Private Sub BtnActualizarPalabraClaveModal_Click(sender As Object, e As EventArgs) Handles BtnActualizarPalabraClaveModal.Click
        Dim oMyFunctions As New MyFunctions
        Try
            oMyFunctions.sqlString = ""
            oMyFunctions.sqlString += " UPDATE palabra_clave SET palabra_clave_a='" & TextBoxPalabraClaveA.Text.ToString & "',palabra_clave_b='" + TextBoxPalabraClaveB.Text.ToString + "',palabra_clave_c='" + TextBoxPalabraClaveC.Text + "' WHERE id_palabra_clave='" & Me.ViewState("Idpalabra_clave").ToString & "'"""
            oMyFunctions.mySqlDataR()
            LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-success alert-dismissable", "Tu registro ha sido guardado satisfactoriamente")
            CargarGridPalabra()
        Catch ex As Exception
            LiteralEncabezadousuario.Text = oMyFunctions.ArmarMensaje("alert alert-danger", ex.Message.ToString)
        End Try
    End Sub


End Class