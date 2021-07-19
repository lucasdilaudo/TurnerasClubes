<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TurnosNuevoTurno.aspx.cs" Inherits="TPIntegrador_2020.TurnosNuevoTurno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Titulaso</title>


    <link rel="StyleSheet" href="EstilosPlantilla.css"/>

    <style type="text/css">
        .auto-style5 {
            width: 282px;
            height: 184px;
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

    <div id="Contenido">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Nuevo Turno"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TPIFinalClubDeportivoConnectionString %>" SelectCommand="SELECT [descripcion_cancha], [codigo_cancha] FROM [canchas] WHERE ([estado_cancha] = @estado_cancha)">
            <SelectParameters>
                <asp:Parameter DefaultValue="True" Name="estado_cancha" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TPIFinalClubDeportivoConnectionString %>" SelectCommand="SELECT [fecha_y_horario_turno], [codigo_cancha_turno] FROM [turnos]"></asp:SqlDataSource>
        <table class="tablaContenido">
            <tr>
                <td class="auto-style5">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
        </table>
        <br />
        <table class="tablaContenido">
            <tr>
                <td>Cancha:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="150px" DataSourceID="SqlDataSource2" DataTextField="descripcion_cancha" DataValueField="codigo_cancha" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Horario:</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="150px" AutoPostBack="True">
                        <asp:ListItem>12:00:000</asp:ListItem>
                        <asp:ListItem>13:00:00</asp:ListItem>
                        <asp:ListItem>14:00:00</asp:ListItem>
                        <asp:ListItem>15:00:00</asp:ListItem>
                        <asp:ListItem>16:00:00</asp:ListItem>
                        <asp:ListItem>17:00:00</asp:ListItem>
                        <asp:ListItem>18:00:00</asp:ListItem>
                        <asp:ListItem>19:00:00</asp:ListItem>
                        <asp:ListItem>20:00:00</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPrueba" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Aceptar" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
        <br />
    </div>

    <div id="PieDePagina">Pie de pagina</div>


    </form>


</body>
</html>
