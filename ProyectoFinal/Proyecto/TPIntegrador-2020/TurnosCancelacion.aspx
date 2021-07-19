<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TurnosCancelacion.aspx.cs" Inherits="TPIntegrador_2020.TurnosCancelacion" %>

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

    <div id="Contenido">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Cancelar Turno"></asp:Label>
        <br />
        <table class="tablaContenido">
            <tr>
                <td>Turno a cancelar:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Aceptar" />
                </td>
            </tr>
        </table>
        <br />
    </div>

    <div id="PieDePagina">Pie de pagina</div>


    </form>


</body>
</html>
