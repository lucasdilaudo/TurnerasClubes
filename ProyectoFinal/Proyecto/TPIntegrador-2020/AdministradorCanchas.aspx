<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministradorCanchas.aspx.cs" Inherits="TPIntegrador_2020.AdministradorCanchas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Titulaso</title>
    <style>
        .auto-style1 {
            width: 100%;
        }
    </style>

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
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Canchas"></asp:Label>
        <br />
        <table class="tablaContenido">
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TPIFinalClubDeportivoConnectionString %>" DeleteCommand="DELETE FROM [canchas] WHERE [codigo_cancha] = @codigo_cancha" InsertCommand="INSERT INTO [canchas] ([descripcion_cancha], [estado_cancha]) VALUES (@descripcion_cancha, @estado_cancha)" SelectCommand="SELECT [codigo_cancha], [descripcion_cancha], [estado_cancha] FROM [canchas]" UpdateCommand="UPDATE [canchas] SET [descripcion_cancha] = @descripcion_cancha, [estado_cancha] = @estado_cancha WHERE [codigo_cancha] = @codigo_cancha">
                        <DeleteParameters>
                            <asp:Parameter Name="codigo_cancha" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="descripcion_cancha" Type="String" />
                            <asp:Parameter Name="estado_cancha" Type="Boolean" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="descripcion_cancha" Type="String" />
                            <asp:Parameter Name="estado_cancha" Type="Boolean" />
                            <asp:Parameter Name="codigo_cancha" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="codigo_cancha" DataSourceID="SqlDataSource1" OnRowEditing="GridView1_RowEditing" PageSize="5">
                        <Columns>
                            <asp:BoundField DataField="codigo_cancha" HeaderText="Code" InsertVisible="False" ReadOnly="True" SortExpression="codigo_cancha">
                            <ControlStyle Width="60px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="descripcion_cancha" HeaderText="Descripcion" SortExpression="descripcion_cancha">
                            <ControlStyle Width="300px" />
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="estado_cancha" HeaderText="Estado" SortExpression="estado_cancha">
                            <ControlStyle Width="60px" />
                            </asp:CheckBoxField>
                            <asp:CommandField ShowEditButton="True" />
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
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Nueva Cancha" />
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <br />
        </div>

    <div id="PieDePagina">Pie de pagina</div>


        <br />
        <br />
        <br />


    </form>


</body>
</html>
