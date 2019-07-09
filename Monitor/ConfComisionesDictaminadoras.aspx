<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ConfComisionesDictaminadoras.aspx.vb" Inherits="Monitor.ConfComisionesDictaminadoras" MasterPageFile="~/SiteMonitor.Master" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Configuración comision_dictaminadora</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="panel-body">
                <asp:Literal runat="server" ID="LiteralEncabezadocomision_dictaminadora"></asp:Literal>
                <asp:Button runat="server" ID="BtnCrearcomision_dictaminadora" Text="Crear comision_dictaminadora" class="btn btn-primary btn-lg" />
            </div>
            <%-------------------------------------------     PANEL MODAL DE INSERCION Y MODIFICACIONDE USUARIOS  ----------------------------------------%>
            <div class="modal fade" id="Modalcomision_dictaminadora" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myModalLabel">
                                <asp:Label ID="lblEncabezadocomision_dictaminadora" runat="server"></asp:Label></h4>
                        </div>
                        <div class="modal-body">
                            <div id="Panelcomision_dictaminadora">
                                <table style="border-collapse: separate; border-spacing: 3px 15px;">
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Label runat="server" ID="Labelcomision_dictaminadora"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>comision_dictaminadora</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxcomision_dictaminadora" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>desc_corta</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxcomision_dictaminadora_corta" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>desc_larga</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxcomision_dictaminadora_larga" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>imagen</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxcomision_dictaminadora_imagen" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                                                       <tr>
                                        <td>activo</td>
                                        <td>
                                            <asp:CheckBox id="chkActivo" runat="server"  /></td>
                                    </tr>

                                    <tr>
                                        <td colspan="2">
                                            <asp:Literal runat="server" ID="LiteralMensajecomision_dictaminadora"></asp:Literal></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <asp:Button runat="server" ID="BtnActualizarcomision_dictaminadoraModal" Text="Modificar comision_dictaminadora" class="btn btn-primary btn-lg" />
                            <asp:Button runat="server" ID="BtnCrearcomision_dictaminadoraModal" Text="Crear comision_dictaminadora" class="btn btn-primary btn-lg" />
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                Tabla de Configuración de la Lista de comision_dictaminadora de un proyecto.
            </div>
            <div class="panel-body">
                <div class="dataTable_wrapper">
                    <asp:GridView ID="GridViewcomision_dictaminadoraList" runat="server" AutoGenerateColumns="false" DataKeyNames="id_comision_dictaminadora" class="table table-striped table-bordered table-hover">
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

                             <asp:BoundField HeaderText="id" DataField="id_comision_dictaminadora" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="comision" DataField="comision_dictaminadora_nombre" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="desc_corta" DataField="descripcion_corta" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="desc_larga" DataField="descripcion_larga" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="imagen" DataField="imagen" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="activo" DataField="activo" Visible="true"></asp:BoundField>

                              <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkVerDiputados" CommandName="VerDiputados" runat="server"><img src="Images/Icons/icon_client.png" alt="delete group"  width="30" height="30"  /></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkAsociarDiputado" CommandName="AsociarDiputado" runat="server"><img src="Images/Icons/icon_pencil43.png" alt="delete group"  width="30" height="30"  /></asp:LinkButton>
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
                <%--<asp:Button runat="server" ID="Button1" Text="Crear comision_dictaminadora" class="btn btn-primary btn-lg" />--%>
            </div>
            <%-------------------------------------------     PANEL MODAL DE INSERCION Y MODIFICACIONDE USUARIOS  ----------------------------------------%>
            <div class="modal fade" id="Panelcomision_diputados" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="H1">
                                <asp:Label ID="Label1" runat="server"></asp:Label></h4>
                        </div>
                        <div class="modal-body">
                            <div id="Div2">
                                <table style="border-collapse: separate; border-spacing: 3px 15px;">
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Label runat="server" ID="Label2"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>diputado</td>
                                        <td>
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                    <asp:DropDownList ID="DropDownListDiputado" runat="server" AutoPostBack="false" class="form-control"></asp:DropDownList>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </td>
                                    </tr>                                    <tr>
                                        <td colspan="2">
                                            <asp:Literal runat="server" ID="Literal2"></asp:Literal></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <asp:Button runat="server" ID="BtnAgregarDiputadoModal" Text="Agregar Diputado" class="btn btn-primary btn-lg" />
                        </div>
                    </div>
                </div>
            </div>

        </div>

         <div class="panel panel-default">
            <div class="panel-heading">
                <asp:Label runat="server" ID="lblEncabezadoDiputadosPorComision"></asp:Label>
            </div>
            <div class="panel-body">
                <div class="dataTable_wrapper">
                    <asp:GridView ID="GridViewDiputados" runat="server" AutoGenerateColumns="true"  DataKeyNames="Id_diputado" class="table table-striped table-bordered table-hover">
                        <EmptyDataTemplate>No hay datos para mostrar </EmptyDataTemplate>
                        <Columns>
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButtonEliminar" CommandName="Eliminar" runat="server"><img src="Images/Icons/icon_close3.png" alt="delete group"  width="30" height="30"  /></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>


    </div>
</asp:Content>


