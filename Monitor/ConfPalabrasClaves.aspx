<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ConfPalabrasClaves.aspx.vb" Inherits="Monitor.ConfPalabrasClaves" MasterPageFile="~/SiteMonitor.Master"%>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Configuración palabra_clave</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
            <div class="panel-body">
                <asp:Literal runat="server" ID="LiteralEncabezadopalabra_clave"></asp:Literal>
                <asp:Button runat="server" ID="BtnCrearpalabra_clave" Text="Crear palabra_clave" class="btn btn-primary btn-lg" />
            </div>
            <%-------------------------------------------     PANEL MODAL DE INSERCION Y MODIFICACIONDE USUARIOS  ----------------------------------------%>
            <div class="modal fade" id="Modalpalabra_clave" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myModalLabel">
                                <asp:Label ID="lblEncabezadopalabra_clave" runat="server"></asp:Label></h4>
                        </div>
                        <div class="modal-body">
                            <div id="Panelpalabra_clave">
                                <table style="border-collapse: separate; border-spacing: 3px 15px;">
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Label runat="server" ID="Labelpalabra_clave"></asp:Label></td>
                                    </tr>
                                    <tr>
                                        <td>palabra_clave</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxpalabra_clave_a" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>palabra_clave</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxpalabra_clave_b" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>palabra_clave</td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBoxpalabra_clave_c" class="form-control" placeholder=""></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Literal runat="server" ID="LiteralMensajepalabra_clave"></asp:Literal></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <asp:Button runat="server" ID="BtnActualizarpalabra_claveModal" Text="Modificar palabra_clave" class="btn btn-primary btn-lg" />
                            <asp:Button runat="server" ID="BtnCrearpalabra_claveModal" Text="Crear palabra_clave" class="btn btn-primary btn-lg" />
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                Tabla de Configuración de la Lista de palabra_clave de un proyecto.
            </div>
            <div class="panel-body">
                <div class="dataTable_wrapper">
                    <asp:GridView ID="GridViewpalabra_claveList" runat="server" AutoGenerateColumns="true" DataKeyNames="id_palabra_clave" class="table table-striped table-bordered table-hover">
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
