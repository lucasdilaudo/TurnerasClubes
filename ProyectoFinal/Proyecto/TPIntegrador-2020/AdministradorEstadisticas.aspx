<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministradorEstadisticas.aspx.cs" Inherits="TPIntegrador_2020.AdministradorEstadisticas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Titulaso</title>

    <link rel="StyleSheet" href="EstilosPlantilla.css"/>

    </head>
<body style="height: 1207px">
    <form id="form1" runat="server">
    <div id="Encabezado">Titulo</div>
    <div id="MenuIzq">&nbsp;</div>
       <div id="MenuDer">
       <table class="tablaMenu">
            <tr>
                <td class="BotonMenu">
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Administrador.aspx">Admin</asp:HyperLink>
                </td>
                <td class="BotonMenu">
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Inicio.aspx">Inicio</asp:HyperLink>
                </td>
                <td class="BotonMenu">
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Turnos.aspx">Turnos</asp:HyperLink>
                </td>
                <td class="BotonMenu">
                    <asp:HyperLink ID="HyperLink2" runat="server" ClientIDMode="AutoID" NavigateUrl="~/Login.aspx">Salir</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>

  <div id="SubMenu">
         <table class="tablaSubMenu">
                <tr>
                <td class="BotonSubMenu">

                    <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/AdministradorEstadisticas.aspx">Estadisticas</asp:HyperLink>

                </td>
            </tr>
                <tr>
                <td class="BotonSubMenu">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="BotonSubMenu">
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/AdministradorUsuario.aspx">Usuarios</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="BotonSubMenu">
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/AdministradorProfesor.aspx">Profesores</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="BotonSubMenu">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="BotonSubMenu">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdministradorCurso.aspx">Cursos</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="BotonSubMenu">
                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/AdministradorDeportes.aspx">Deportes</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="BotonSubMenu">
                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/AdministradorCanchas.aspx">Canchas</asp:HyperLink>
                </td>
            </tr>
               <tr>
                <td class="BotonSubMenu">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="BotonSubMenu">
                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/AdministradorCancelacion.aspx">Cancelacion</asp:HyperLink>
                </td>
            </tr>

        </table>
            <asp:Image ID="Image1" runat="server" Height="75px" Width="75px" ImageUrl="https://pbs.twimg.com/profile_images/909940434755096576/SH9q-yOc_400x400.jpg" />
            <br />
            <br />
            Grupo N°7<br />
            <br />
            Revilla, Victor<br />
            Blas, Leandro<br />
            Caraballo, Agustin<br />
            Di laudo, Lucas<br />
            Ledesma, Matias</div>

    <div id="Contenido">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Estadisticas"></asp:Label>
        <br />
        <br />
        <table class="tablaContenido">
            <tr>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" MaximumValue="3000" MinimumValue="2000"></asp:RangeValidator></td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td>Anio</td>
            </tr>
            <tr>
                <td>Desde</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" MaximumValue="12" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>Mes</td>
            </tr>
            <tr>
                <td>Hasta</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" MaximumValue="12" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>Mes</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Mostrar" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="tablaContenido">
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TPIFinalClubDeportivoConnectionString %>" SelectCommand="sumarCuotasDesdeHasta" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="anio" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="TextBox2" Name="mes1" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="TextBox4" Name="mes2" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" PageSize="7">
                        <Columns>
                            <asp:BoundField DataField="Column2" HeaderText="Mes" ReadOnly="True" SortExpression="Column2" />
                            <asp:BoundField DataField="Column1" HeaderText="Monto" ReadOnly="True" SortExpression="Column1" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                    <br />
                </td>
            </tr>
        </table>
        <br />
        </div>

    <div id="PieDePagina">Pie de pagina</div>


    </form>


</body>
</html>
