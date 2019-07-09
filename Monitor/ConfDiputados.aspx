<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ConfDiputados.aspx.vb" Inherits="Monitor.ConfDiputados" MasterPageFile="~/SiteMonitor.Master" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Configuración diputado</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="panel-body">
                <asp:Literal runat="server" ID="LiteralEncabezadodiputado"></asp:Literal>
                <asp:Button runat="server" ID="BtnCreardiputado" Text="Crear diputado" class="btn btn-primary btn-lg" />
            </div>
            <%-------------------------------------------     PANEL MODAL DE INSERCION Y MODIFICACIONDE USUARIOS  ----------------------------------------%>
            <div class="modal fade" id="Modaldiputado" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myModalLabel">
                                <asp:Label ID="lblEncabezadodiputado" runat="server"></asp:Label></h4>
                        </div>
                        <div class="modal-body">
                            <div id="Paneldiputado">
                                <table style="border-collapse: separate; border-spacing: 3px 15px;">
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Label runat="server" ID="Labeldiputado"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>diputado</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxdiputado" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                      <tr>
                                        <td>partido</td>
                                        <td>
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
                                                    <asp:DropDownList ID="DropDownListPartido" runat="server" AutoPostBack="false" class="form-control"></asp:DropDownList>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>imagen</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxImagen" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>descripcion corta</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxDescCorta" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>descripcion larga</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxDescLarga" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                      <tr>
                                        <td>activo</td>
                                        <td>
                                            <asp:CheckBox id="chkActivo" runat="server"  /></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Literal runat="server" ID="LiteralMensajediputado"></asp:Literal></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <asp:Button runat="server" ID="BtnActualizardiputadoModal" Text="Modificar diputado" class="btn btn-primary btn-lg" />
                            <asp:Button runat="server" ID="BtnCreardiputadoModal" Text="Crear diputado" class="btn btn-primary btn-lg" />
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                Tabla de Configuración de la Lista de diputado de un proyecto.
            </div>
            <div class="panel-body">
                <div class="dataTable_wrapper">
                    <asp:GridView ID="GridViewdiputadoList" runat="server" AutoGenerateColumns="false" DataKeyNames="id_diputado,descripcion_corta,descripcion_larga,id_partido" class="table table-striped table-bordered table-hover">
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

                             <asp:BoundField HeaderText="Nombre" DataField="diputado_nombre" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="Partido" DataField="partido_nombre" Visible="true"></asp:BoundField>
                            <asp:BoundField HeaderText="Imagen" DataField="diputado_imagen" Visible="true"></asp:BoundField>
                             <asp:BoundField HeaderText="Activo" DataField="diputado_activo" Visible="true"></asp:BoundField>

                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>


    </div>
</asp:Content>
