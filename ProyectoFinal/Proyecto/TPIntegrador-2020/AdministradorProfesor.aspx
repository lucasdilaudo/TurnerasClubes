<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministradorProfesor.aspx.cs" Inherits="TPIntegrador_2020.AdministradorProfesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Titulaso</title>
    <style>
        .auto-style2 {
            width: 74px;
        }
        .auto-style3 {
            width: 697px;
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

                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AdministradorEstadisticas.aspx">Estadisticas</asp:HyperLink>

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
                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/AdministradorCurso.aspx">Cursos</asp:HyperLink>
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
                    <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/AdministradorCancelacion.aspx">Cancelacion</asp:HyperLink>
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
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Texto de bienvenida al administrador"></asp:Label>
        <br />
        <br />
        <table class="tablaContenido">
            <tr><td class="auto-style2">&nbsp;</td>
 
                <td>&nbsp;</td></tr>
            <tr><td class="auto-style2">&nbsp;</td>

                <td>
                    <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/AdministradorAltaProfesor.aspx">Nuevo Profesor</asp:HyperLink>
                </td></tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
               
            </tr>
        </table>
         <br />

        <table >
            <tr>
                <td class="auto-style3">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TPIFinalClubDeportivoConnectionString %>" DeleteCommand="DELETE FROM [profesores] WHERE [codigo_profesor] = @codigo_profesor" InsertCommand="INSERT INTO [profesores] ([matricula_profesor], [CBU_profesor], [saldo_profesor], [estado_profesor]) VALUES (@matricula_profesor, @CBU_profesor, @saldo_profesor, @estado_profesor)" SelectCommand="SELECT profesores.codigo_profesor, personas.nombre_persona, personas.apellido_persona, personas.dni_persona, profesores.matricula_profesor, profesores.CBU_profesor, profesores.saldo_profesor, profesores.estado_profesor FROM profesores INNER JOIN personas ON profesores.codigo_persona_profesor = personas.codigo_persona" 
            UpdateCommand="ModificarProfesor @codigo_profesor, @nombre_persona, @apellido_persona,@dni_persona, @CBU_profesor,@matricula_profesor, @saldo_profesor, @estado_profesor">
            <DeleteParameters>
                <asp:Parameter Name="codigo_profesor" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="matricula_profesor" Type="String" />
                <asp:Parameter Name="CBU_profesor" Type="String" />
                <asp:Parameter Name="saldo_profesor" Type="Decimal" />
                <asp:Parameter Name="estado_profesor" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="matricula_profesor" Type="String" />
                <asp:Parameter Name="CBU_profesor" Type="String" />
                <asp:Parameter Name="saldo_profesor" Type="Decimal" />
                <asp:Parameter Name="estado_profesor" Type="Boolean" />
                <asp:Parameter Name="codigo_profesor" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="codigo_profesor" DataSourceID="SqlDataSource1" PageSize="5">
            <Columns>
                <asp:BoundField DataField="codigo_profesor" HeaderText="Code" InsertVisible="False" ReadOnly="True" SortExpression="codigo_profesor" />
                <asp:BoundField DataField="matricula_profesor" HeaderText="Matricula" SortExpression="matricula_profesor" />
                <asp:BoundField DataField="CBU_profesor" HeaderText="CBU" SortExpression="CBU_profesor" />
                <asp:BoundField DataField="saldo_profesor" HeaderText="Saldo" SortExpression="saldo_profesor" />
                <asp:CheckBoxField DataField="estado_profesor" HeaderText="Estado" SortExpression="estado_profesor" />
                <asp:BoundField DataField="nombre_persona" HeaderText="Nombre" SortExpression="nombre_persona" />
                <asp:BoundField DataField="apellido_persona" HeaderText="Apellido" SortExpression="apellido_persona" />
                <asp:BoundField DataField="dni_persona" HeaderText="DNI" SortExpression="dni_persona" />
                <asp:CommandField EditText="Editar" ShowEditButton="True" />
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
        </div>
        

    <div id="PieDePagina">Pie de pagina</div>


    </form>


</body>
</html>
