<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ReportesSessiones.aspx.vb" Inherits="Monitor.ReportesSessiones" MasterPageFile="~/SiteMonitor.Master"%>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Configuración sesiones</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="panel-body">
                <asp:Literal runat="server" ID="LiteralEncabezadosesiones"></asp:Literal>
                <asp:Button runat="server" ID="BtnCrearsesiones" Text="Crear sesiones" class="btn btn-primary btn-lg" />
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
                                    <tr>
                                        <td>sesiones</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxsesiones" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>desc_corta</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxsesiones_corta" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>desc_larga</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxsesiones_larga" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>fecha</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxsesiones_fecha" class="form-control" placeholder=""></asp:TextBox></td>
<%--                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" RenderMode="Inline">
                                                <ContentTemplate>
                                                         <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>--%>

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
                            <asp:Button runat="server" ID="BtnActualizarsesionesModal" Text="Modificar sesiones" class="btn btn-primary btn-lg" />
                            <asp:Button runat="server" ID="BtnCrearsesionesModal" Text="Crear sesiones" class="btn btn-primary btn-lg" />
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                Tabla de Configuración de la Lista de sesiones de un proyecto.
            </div>
            <div class="panel-body">
                <div class="dataTable_wrapper">
                    <asp:GridView ID="GridViewsesionesList" runat="server" AutoGenerateColumns="true" DataKeyNames="id_sesiones" class="table table-striped table-bordered table-hover">
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
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>


    </div>
</asp:Content>

