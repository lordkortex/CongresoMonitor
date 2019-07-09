<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ConfUsuarios.aspx.vb" Inherits="Monitor.ConfUsuarios" MasterPageFile="~/SiteMonitor.Master" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Configuración usuario</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>



        <div class="row">
            <div class="panel-body">
                <asp:Literal runat="server" ID="LiteralEncabezadousuario"></asp:Literal>
                <asp:Button runat="server" ID="BtnCrearusuario" Text="Crear usuario" class="btn btn-primary btn-lg" />
            </div>

            <%-------------------------------------------     PANEL MODAL DE INSERCION Y MODIFICACIONDE USUARIOS  ----------------------------------------%>
            <div class="modal fade" id="Modalusuario" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
                <div class="modal-dialog" id="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myModalLabel">
                                <asp:Label ID="lblEncabezadousuario" runat="server"></asp:Label></h4>
                        </div>
                        <div class="modal-body">
                            <div id="Panelusuario">
                                <table style="border-collapse: separate; border-spacing: 3px 15px;">
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Label runat="server" ID="Labelusuario"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>usuario</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxusuario" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>contraseña</td>
                                        <td>

                                            <asp:TextBox runat="server" ID="TextBoxcontrasena" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>expira</td>
                                        <td>

                                            <asp:TextBox runat="server" ID="TextBoxfecha_expiracion" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>email</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxemail" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>perfil</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxPerfil" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>device</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxDevice" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>empresa</td>
                                        <td>
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                    <asp:DropDownList ID="DropDownListEmpresa" runat="server" AutoPostBack="false" class="form-control"></asp:DropDownList>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Literal runat="server" ID="LiteralMensajeusuario"></asp:Literal></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <asp:Button runat="server" ID="BtnActualizarusuarioModal" Text="Modificar usuario" class="btn btn-primary btn-lg" />
                            <asp:Button runat="server" ID="BtnCrearusuarioModal" Text="Crear usuario" class="btn btn-primary btn-lg" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                Tabla de Configuración de la Lista de usuario de un proyecto.
            </div>
            <div class="panel-body">
                <div class="dataTable_wrapper">
                    <asp:GridView ID="GridViewusuarioList" runat="server" AutoGenerateColumns="false" DataKeyNames="id_usuario,id_empresa" class="table table-striped table-bordered table-hover">
                        <EmptyDataTemplate>No hay datos para mostrar </EmptyDataTemplate>
                        <Columns>
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButtonModificar" CommandName="Modificar" runat="server"><img src="Images/Icons/icon_pencil43.png" alt="delete group" width="30" height="30"  /></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButtonEliminar" CommandName="Eliminar" runat="server"><img src="Images/Icons/icon_close3.png" alt="delete group"  width="30" height="30"  /></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:BoundField HeaderText="usuario" DataField="usuario_nombre" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="pass" DataField="usuario_contrasena" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="device" DataField="device" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="email" DataField="usuario_email" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="empresa" DataField="empresa_nombre" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="perfil" DataField="perfil" Visible="true"></asp:BoundField>

                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkVerPalabra" CommandName="VerPalabra" runat="server"><img src="Images/Icons/icon_client.png" alt="delete group"  width="30" height="30"  /></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkCrearPalabra" CommandName="CrearPalabra" runat="server"><img src="Images/Icons/icon_pencil43.png" alt="delete group"  width="30" height="30"  /></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="panel-body">
                <asp:Literal runat="server" ID="Literal1"></asp:Literal>
                <%--<asp:Button runat="server" ID="ButtonCrearPalabra" Text="Crear palabra" class="btn btn-primary btn-lg" />--%>
            </div>

            <%-------------------------------------------     PANEL MODAL DE PALABRAS CLAVES  ----------------------------------------%>
            <div class="modal fade" id="Modalpalabra_clave" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
                <div class="modal-dialog" id="Div2">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="H1">
                                <asp:Label ID="Label1" runat="server"></asp:Label></h4>
                        </div>
                        <div class="modal-body">
                            <div id="PanelpalabraClave">
                                <table style="border-collapse: separate; border-spacing: 3px 15px;">
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Label runat="server" ID="Label2"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>Palabra</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxPalabraClaveA" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Palabra</td>
                                        <td>

                                            <asp:TextBox runat="server" ID="TextBoxPalabraClaveB" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Palabra</td>
                                        <td>

                                            <asp:TextBox runat="server" ID="TextBoxPalabraClaveC" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Literal runat="server" ID="Literal2"></asp:Literal></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <asp:Button runat="server" ID="BtnActualizarPalabraClaveModal" Text="Modificar palabra" class="btn btn-primary btn-lg" />
                            <asp:Button runat="server" ID="BtnCrearPalabraClaveModal" Text="Crear palabra" class="btn btn-primary btn-lg" />
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="panel panel-default">
            <div class="panel-heading">
                <asp:Literal runat="server" ID="litHeaderTablaPalabras"></asp:Literal>
            </div>
            <div class="panel-body">
                <div class="dataTable_wrapper">
                    <asp:GridView ID="GridViewpalabra_clave" runat="server" AutoGenerateColumns="false" DataKeyNames="id_palabra_clave" class="table table-striped table-bordered table-hover">
                        <EmptyDataTemplate>No hay datos para mostrar </EmptyDataTemplate>
                        <Columns>
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButtonEliminar" CommandName="Eliminar" runat="server"><img src="Images/Icons/icon_close3.png" alt="delete group"  width="30" height="30"  /></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>

                                                        <asp:BoundField HeaderText="palabra" DataField="palabra_clave_a" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="palabra" DataField="palabra_clave_b" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="palabra" DataField="palabra_clave_c" Visible="true"></asp:BoundField>
                            		


                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>


    </div>
</asp:Content>
