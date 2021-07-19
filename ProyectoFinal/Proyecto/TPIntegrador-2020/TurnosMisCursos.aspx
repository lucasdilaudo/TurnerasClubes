<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TurnosMisCursos.aspx.cs" Inherits="TPIntegrador_2020.TurnosMisCursos" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Titulaso</title>


    <link rel="StyleSheet" href="EstilosPlantilla.css"/>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
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
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Mis Cursos"></asp:Label>
        <br />
        &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TPIFinalClubDeportivoConnectionString %>" SelectCommand="MostrarCursosDe" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="usuario" SessionField="usuario" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <table class="tablaContenido">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idInscripcionCurso_usXcu" DataSourceID="SqlDataSource1" PageSize="5">
                        <Columns>
                            <asp:BoundField DataField="idInscripcionCurso_usXcu" HeaderText="Code Insc." InsertVisible="False" ReadOnly="True" SortExpression="idInscripcionCurso_usXcu" />
                            <asp:BoundField DataField="descripcion_curso" HeaderText="Curso" SortExpression="descripcion_curso">
                            </asp:BoundField>
                            <asp:BoundField DataField="descripcion_cancha" HeaderText="Cancha" SortExpression="descripcion_cancha" />
                            <asp:BoundField DataField="horario_inicio" HeaderText="Fecha y Hora" SortExpression="horario_inicio" />
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Ingresar Numero"></asp:RequiredFieldValidator>
                    <br />
                    <table class="auto-style1">
                        <tr>
                            <td>Turno a Cancelar</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="2"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="2"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
                            <td>
                             
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cancelar Turno" ValidationGroup="2" />
                             
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>

    <div id="PieDePagina">Pie de pagina</div>


    </form>


</body>
</html>
