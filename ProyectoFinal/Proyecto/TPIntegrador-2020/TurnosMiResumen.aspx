<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TurnosMiResumen.aspx.cs" Inherits="TPIntegrador_2020.TurnosMiResumen" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Titulaso</title>


    <link rel="StyleSheet" href="EstilosPlantilla.css"/>

    <style type="text/css">
        .auto-style2 {
            width: 221px;
        }
        </style>

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
                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/TurnosMiResumen.aspx">Mi Resumen</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="BotonSubMenu">
                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/TurnosMisCuotas.aspx">Mis Cuotas</asp:HyperLink>
                </td>
            </tr>
                <tr>
                <td class="BotonSubMenu">&nbsp;</td>
            </tr>
            <tr>
                <td class="BotonSubMenu">
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/TurnosMisTurnos.aspx">Mis Turnos</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="BotonSubMenu">
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/TurnosNuevoTurno.aspx">Nuevo Turno</asp:HyperLink>
                </td>
            </tr>
                <tr>
                <td class="BotonSubMenu">&nbsp;</td>
            </tr>
                <tr>
                <td class="BotonSubMenu">
                    
                    <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/TurnosMisCursos.aspx">Mis Cursos</asp:HyperLink>
                    
                </td>
            </tr>
                <tr>
                <td class="BotonSubMenu">
                    
                    <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/TurnosNuevoCurso.aspx">Nuevo Curso</asp:HyperLink>
                    
                </td>
            </tr>


        </table>
            <br />
            <br />
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

    <div id="Contenido" class="auto-style2">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Mi Resumen"></asp:Label>
        <br />
        <table class="tablaContenido">
            <tr>
                <td>Estado de usuario:</td>
                <td>
                    <asp:Label ID="lblEstado" runat="server"></asp:Label>
                </td>
            </tr>
            <tr><td></td><td></td></tr>
            <tr>
                <td>Turnos Totales:</td>
                <td >
                    <asp:Label ID="Label2" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Turnos Activos:</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="0"></asp:Label>
                </td>
            </tr
                <tr><td></td><td></td></tr>
            <tr>
                <td>Cursos Activos:</td>
                <td>
                    
                    <asp:Label ID="lblCursosActivos" runat="server" Text="0"></asp:Label>
                    
                </td>
            </tr>
            <tr>
                <td>Cursos Totales:</td>
                <td>
                    
                    <asp:Label ID="lblCursosTotales" runat="server" Text="0"></asp:Label>
                    
                </td>
            </tr>
            <tr><td></td><td></td></tr>
            <tr>
                <td>Fecha de Ultima Cuota:</td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="0"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
    </div>

    <div id="PieDePagina">Pie de pagina</div>


    </form>


</body>
</html>
