<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministradorAltaProfesor.aspx.cs" Inherits="TPIntegrador_2020.AdministradorAltaProfesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Titulaso</title>
    <style>
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
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Titulo"></asp:Label>
        <br />
        <table class="tablaContenido">
            <tr>
                <td>Nombre:</td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </td>
                <td style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="RequiredFieldValidator" ValidationGroup="GProfe">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Apellido:</td>
                <td>
                    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                </td>
                <td style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="RequiredFieldValidator" ValidationGroup="GProfe">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>DNI:</td>
                <td>
                    <asp:TextBox ID="txtDNI" runat="server"></asp:TextBox>
                </td>
                <td style="color: #FF0000">
                    <asp:RegularExpressionValidator ID="revDNI" runat="server" ControlToValidate="txtDNI" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="GProfe">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Direccion:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                </td>
                <td style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="RequiredFieldValidator" ValidationGroup="GProfe">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Telefono:</td>
                <td>
                    <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                </td>
                <td style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="RequiredFieldValidator" ValidationGroup="GProfe">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
            <tr>
                <td>CBU:</td>
                <td>
                    
                    <asp:TextBox ID="txtCBU" runat="server"></asp:TextBox>
                    
                </td>
                <td style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="rfvCBU" runat="server" ControlToValidate="txtCBU" ErrorMessage="RequiredFieldValidator" ValidationGroup="GProfe">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Matricula:</td>
                <td>
                    
                    <asp:TextBox ID="txtMatricula" runat="server"></asp:TextBox>
                    
                </td>
                <td style="color: #FF0000">
                    <asp:RequiredFieldValidator ID="rfvMatricula" runat="server" ControlToValidate="txtMatricula" ErrorMessage="RequiredFieldValidator" ValidationGroup="GProfe">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Remuneración</td>
                <td>

                    <asp:TextBox ID="txtRemuneracion" runat="server"></asp:TextBox>

                </td>
                <td>
                    <asp:RegularExpressionValidator ID="revRemuneracion" runat="server" ControlToValidate="txtRemuneracion" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="GProfe">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Aceptar" OnClick="Button1_Click" ValidationGroup="GProfe" />
                 &nbsp;
                </td>
                <td>
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        </div>

    <div id="PieDePagina">Pie de pagina</div>


        <br />
        <br />
        <br />


    </form>


</body>
</html>
