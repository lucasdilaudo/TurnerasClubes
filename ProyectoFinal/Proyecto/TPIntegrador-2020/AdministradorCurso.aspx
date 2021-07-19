<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministradorCurso.aspx.cs" Inherits="TPIntegrador_2020.AdministradorCurso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Titulaso</title>
    <style>
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
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
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Cursos"></asp:Label>
        <br />
        <table class="tablaContenido">
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TPIFinalClubDeportivoConnectionString %>" SelectCommand="SELECT cursos.codigo_curso, cursos.descripcion_curso, cursos.horario_inicio, personas.apellido_persona, canchas.descripcion_cancha, cursos.estado_curso FROM cursos INNER JOIN profesores ON cursos.codigo_profesor_curso = profesores.codigo_profesor INNER JOIN personas ON personas.codigo_persona = profesores.codigo_persona_profesor INNER JOIN canchas ON canchas.codigo_cancha = cursos.codigo_cancha_curso" FilterExpression="estado_curso = 1">
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="codigo_curso" DataSourceID="SqlDataSource1" PageSize="5">
                        <Columns>
                            <asp:BoundField DataField="codigo_curso" HeaderText="Code" InsertVisible="False" ReadOnly="True" SortExpression="codigo_curso" />
                            <asp:BoundField DataField="descripcion_curso" HeaderText="Descripcion" SortExpression="descripcion_curso" />
<asp:BoundField DataField="horario_inicio" HeaderText="Horario" SortExpression="horario_inicio"></asp:BoundField>
                            <asp:BoundField DataField="apellido_persona" HeaderText="Apellido Profesor" SortExpression="apellido_persona" />
                            <asp:BoundField DataField="descripcion_cancha" HeaderText="Cancha" SortExpression="descripcion_cancha" />
                            <asp:CheckBoxField DataField="estado_curso" HeaderText="Estado" SortExpression="estado_curso" />
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
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBorrar" ErrorMessage="*" ValidationExpression="/^\d+$/" ValidationGroup="4" ForeColor="White"></asp:RegularExpressionValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtBorrar" ErrorMessage="*" ValidateEmptyText="True" ValidationGroup="2"></asp:CustomValidator>
                    <asp:TextBox ID="txtBorrar" runat="server" ValidationGroup="2"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Baja Curso" OnClientClick= "return confirm('Estas seguro? Esto dara de baja a todas las inscripciones tambien');" ValidationGroup="2"/>
                    <br />
                    <asp:Label ID="lblPrueba2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="tablaContenido">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">Nuevo Curso</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td>Profesor</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="apellido_persona" DataValueField="codigo_profesor" ValidationGroup="11" Width="130px" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Deporte</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="nombre_deporte" DataValueField="codigo_deporte" ValidationGroup="11" Width="130px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Cancha</td>
                <td>
                    
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="descripcion_cancha" DataValueField="codigo_cancha" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" ValidationGroup="11" Width="130px" AutoPostBack="True">
                    </asp:DropDownList>
                    
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>Descripcion</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" ValidationGroup="11"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" ValidationGroup="11" Width="130px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Horario</td>
                <td>
                    <asp:DropDownList ID="DropDownList3" runat="server" ValidationGroup="11" AutoPostBack="True">
                        <asp:ListItem>8:00:00</asp:ListItem>
                        <asp:ListItem>9:00:00</asp:ListItem>
                        <asp:ListItem>10:00:00</asp:ListItem>
                        <asp:ListItem>11:00:00</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnDayRender="Calendar1_DayRender" Width="200px" OnSelectionChanged="Calendar1_SelectionChanged">
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
                <td>
                </td>

            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPrueba" runat="server"></asp:Label>
                </td>
                <td>
                    
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrar" ValidationGroup="11" />
                    
                </td>
                <td>
                    
                    &nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TPIFinalClubDeportivoConnectionString %>" SelectCommand="SELECT profesores.codigo_profesor, apellido_persona FROM profesores INNER JOIN personas ON personas.codigo_persona = profesores.codigo_persona_profesor"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:TPIFinalClubDeportivoConnectionString %>" SelectCommand="SELECT [codigo_cancha], [descripcion_cancha] FROM [canchas] WHERE ([estado_cancha] = @estado_cancha)">
            <SelectParameters>
                <asp:Parameter DefaultValue="true" Name="estado_cancha" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TPIFinalClubDeportivoConnectionString %>" SelectCommand="SELECT [codigo_deporte], [nombre_deporte] FROM [deportes]"></asp:SqlDataSource>
        <br />
        </div>


    </form>


</body>
</html>
