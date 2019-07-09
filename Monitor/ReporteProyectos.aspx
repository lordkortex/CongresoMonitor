<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ReporteProyectos.aspx.vb" Inherits="Monitor.ReporteProyectos" MasterPageFile="~/SiteMonitor.Master" %>

<%--<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ReporteProyectos.aspx.vb" Inherits="Monitor.ReporteProyectos" MasterPageFile="~/SiteMonitor.Master"%>--%>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Configuración Actos Legislativos</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="panel-body">
                <asp:Literal runat="server" ID="LiteralEncabezadoproyectos"></asp:Literal>
                <%--<asp:Button runat="server" ID="BtnCrearproyectos" Text="Crear proyectos" class="btn btn-primary btn-lg" />--%>
            </div>
            <%-------------------------------------------     PANEL MODAL DE INSERCION Y MODIFICACIONDE USUARIOS  ----------------------------------------%>
            <div class="modal fade" id="Modalproyectos" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myModalLabel">
                                <asp:Label ID="lblEncabezadoproyectos" runat="server"></asp:Label></h4>
                        </div>
                        <div class="modal-body">
                            <div id="Panelproyectos">
                                <table style="border-collapse: separate; border-spacing: 3px 15px;">
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Label runat="server" ID="Labelproyectos"></asp:Label></td>
                                    </tr>
                                       <tr>
                                        <td>acto_legislativo</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxActoLegislativo" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                       <tr>
                                        <td>descricpcion</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxDescripcion" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>tipo acto</td>
                                        <td>
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                    <asp:DropDownList ID="DropDownListTipoActo" runat="server" AutoPostBack="false" class="form-control"></asp:DropDownList>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>

                                        </td>
                                    </tr>
                                    <%--                                    <tr>
                                        <td>debate</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBox3" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>--%>
                                    <tr>
                                        <td>partido</td>
                                        <td>
                                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                <ContentTemplate>
                                                    <asp:DropDownList ID="DropDownListPartido" runat="server" AutoPostBack="false" class="form-control"></asp:DropDownList>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>status</td>
                                        <td>
                                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                <ContentTemplate>
                                                    <asp:DropDownList ID="DropDownListStatus" runat="server" AutoPostBack="false" class="form-control"></asp:DropDownList>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>proponente</td>
                                        <td>
                                            <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                                <ContentTemplate>
                                                    <asp:DropDownList ID="DropDownListProponente" runat="server" AutoPostBack="false" class="form-control"></asp:DropDownList>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>comisión</td>
                                        <td>
                                            <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                                <ContentTemplate>
                                                    <asp:DropDownList ID="DropDownListComision" runat="server" AutoPostBack="false" class="form-control"></asp:DropDownList>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>fecha</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxFecha" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Literal runat="server" ID="LiteralMensajeproyectos"></asp:Literal></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <asp:Button runat="server" ID="BtnActualizarproyectosModal" Text="Modificar proyectos" class="btn btn-primary btn-lg" />
                            <asp:Button runat="server" ID="BtnCrearproyectosModal" Text="Crear proyectos" class="btn btn-primary btn-lg" />
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                Tabla de Configuración de la Lista de proyectos de un proyecto.
            </div>
            <div class="panel-body">
                <div class="dataTable_wrapper">
                    <asp:GridView ID="GridViewActosLegislativos" runat="server" AutoGenerateColumns="false" DataKeyNames="id_proyecto,id_legislacion,id_proponente,id_comision_dictaminadora,id_status" class="table table-striped table-bordered table-hover">
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


                            <asp:BoundField HeaderText="id" DataField="id_proyecto" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="sesion" DataField="sesion" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="acto_legislativo" DataField="proyecto_nombre" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="proyecto_descripcion" DataField="proyecto_descripcion" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="tipo acto" DataField="legislacion_nombre" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="debate" DataField="tipo_debate_nombre" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="partido" DataField="partido_nombre" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="status" DataField="status_nombre" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="proponente" DataField="diputado_nombre" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="comisión" DataField="comision_dictaminadora_nombre" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="fecha" DataField="fecha" Visible="true"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>


    </div>
</asp:Content>

