<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ReporteIntervenciones.aspx.vb" Inherits="Monitor.ReporteIntervenciones" MasterPageFile="~/SiteMonitor.Master" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Configuración Intervenciones</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="panel-body">
                <asp:Literal runat="server" ID="LiteralEncabezadosesiones"></asp:Literal>
                <%--<asp:Button runat="server" ID="BtnCrearsesiones" Text="Crear sesiones" class="btn btn-primary btn-lg" />--%>
            </div>
            <%-------------------------------------------     PANEL MODAL DE INSERCION Y MODIFICACIONDE USUARIOS  ----------------------------------------%>
            <div class="modal fade" id="Modalsesiones" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myModalLabel">
                                <asp:Label ID="lblEncabezadosesiones" runat="server"></asp:Label></h4>
                        </div>
                        <div class="modal-body">
                            <div id="Panelsesiones">
                                <table style="border-collapse: separate; border-spacing: 3px 15px;">
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Label runat="server" ID="Labelsesiones"></asp:Label></td>
                                    </tr>
<%--                                    <tr>
                                        <td>sesiones</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxProyecto" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>desc_corta</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxDiputado" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>--%>
                                    <tr>
                                        <td>intervencion</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxIntervencion" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Literal runat="server" ID="LiteralMensajesesiones"></asp:Literal></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <asp:Button runat="server" ID="BtnActualizarsesionesModal" Text="Modificar intervenciones" class="btn btn-primary btn-lg" />
                            <asp:Button runat="server" ID="BtnCrearsesionesModal" Text="Crear sesiones" class="btn btn-primary btn-lg" />
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                Tabla de Configuración de la Lista de intervenciones de un proyecto.
            </div>
            <div class="panel-body">
                <div class="dataTable_wrapper">
                    <asp:GridView ID="GridViewIntervencionesList" runat="server" AutoGenerateColumns="false" DataKeyNames="id_detalle_intervencion,id_sesion_proyecto,id_diputado" class="table table-striped table-bordered table-hover">
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

                            <asp:BoundField HeaderText="sesion" DataField="fecha" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="acto legislativo" DataField="proyecto_nombre" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="diputado" DataField="diputado_nombre" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="intervencion" DataField="intervencion_texto" Visible="true"></asp:BoundField>

                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>


    </div>
</asp:Content>

