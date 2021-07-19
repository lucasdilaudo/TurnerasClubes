<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="TPIntegrador_2020.Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Titulaso</title>
    <style>
    </style>

    <link rel="StyleSheet" href="EstilosPlantilla.css"/>

</head>
<body style="height: 1207px">
    <form id="form1" runat="server">
    <div id="Encabezado" font-size:3em">Titulo</div>
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
        Texto de bienvenida, etcetera</div>

    <div id="PieDePagina">Pie de pagina</div>


    </form>


</body>
</html>
