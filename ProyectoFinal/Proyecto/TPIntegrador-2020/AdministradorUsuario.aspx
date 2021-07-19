<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministradorUsuario.aspx.cs" Inherits="TPIntegrador_2020.AdministradorUsuario" %>

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
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Texto de bienvenida al administrador"></asp:Label>
        <br />
        <br />
        <table class="tablaContenido">
            <tr><td>&nbsp;</td>
 
                <td>
                    &nbsp;</td></tr>
            <tr><td>&nbsp;</td>

                <td>
                    &nbsp;</td></tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Apellido:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
        <table class="tablaContenido">
            <tr>
                <td>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TPIFinalClubDeportivoConnectionString %>" 
            SelectCommand="SELECT usuarios.codigo_usuario, usuarios.codigo_curso_usuario, usuarios.nombre_usuario, usuarios.tipo_usuario, usuarios.estado_usuario, personas.dni_persona, personas.apellido_persona, personas.nombre_persona FROM usuarios INNER JOIN personas ON personas.codigo_persona = usuarios.codigo_persona_usuario" DeleteCommand="DELETE FROM [usuarios] WHERE [codigo_usuario] = @codigo_usuario" InsertCommand="INSERT INTO [usuarios] ([codigo_curso_usuario], [nombre_usuario], [tipo_usuario], [estado_usuario]) VALUES (@codigo_curso_usuario, @nombre_usuario, @tipo_usuario, @estado_usuario)" 
            UpdateCommand="actualizarUsuarioAdmin @codigo_usuario, @codigo_curso_usuario, @nombre_usuario, @tipo_usuario, @estado_usuario, @nombre_persona, @apellido_persona, @dni_persona"            >
            <DeleteParameters>
                <asp:Parameter Name="codigo_usuario" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="codigo_curso_usuario" Type="Int32" />
                <asp:Parameter Name="nombre_usuario" Type="String" />
                <asp:Parameter Name="tipo_usuario" Type="String" />
                <asp:Parameter Name="estado_usuario" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="codigo_curso_usuario" Type="Int32" />
                <asp:Parameter Name="nombre_usuario" Type="String" />
                <asp:Parameter Name="tipo_usuario" Type="String" />
                <asp:Parameter Name="estado_usuario" Type="Boolean" />
                <asp:Parameter Name="codigo_usuario" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="codigo_usuario" DataSourceID="SqlDataSource1" OnRowEditing="GridView1_RowEditing" OnRowUpdated="GridView1_RowUpdated" PageSize="5">
            <Columns>
                <asp:BoundField DataField="codigo_usuario" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="codigo_usuario" />
                <asp:BoundField DataField="codigo_curso_usuario" HeaderText="Curso" SortExpression="codigo_curso_usuario" />
                <asp:BoundField DataField="nombre_usuario" HeaderText="Usuario" SortExpression="nombre_usuario" />
                <asp:BoundField DataField="tipo_usuario" HeaderText="Tipo" SortExpression="tipo_usuario" />
                <asp:CheckBoxField DataField="estado_usuario" HeaderText="Estado" SortExpression="estado_usuario" />
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
