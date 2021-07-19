<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdministradorAltaUsuario.aspx.cs" Inherits="TPIntegrador_2020.AdministradorAltaUsuario" %>

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

    <div id="Contenido" class="auto-style2">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Titulo"></asp:Label>
        <br />
        <table class="auto-style4">
            <tr>
                <td class="auto-style5">Nombre:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtNombre" runat="server" Width="118px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtNombre" ValidationGroup="GrupoAlta" ForeColor="Red">* Ingrese nombre</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Apellido:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="rfvApellid" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtApellido" ValidationGroup="GrupoAlta" ForeColor="Red">* Ingrese apellido</asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style5">DNI:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtDNI" runat="server"></asp:TextBox>
                </td>
                <td>
                    <table>
                        <tr>
                            <td class="auto-style9">
                                <asp:RequiredFieldValidator ID="rfvDNI" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="GrupoAlta" ControlToValidate="txtDNI" ForeColor="Red">* Ingrese DNI</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:RegularExpressionValidator ID="revDNI" runat="server" ErrorMessage="RegularExpressionValidator" ValidationGroup="GrupoAlta" ControlToValidate="txtDNI" ValidationExpression="^\d+$" ForeColor="Red">* Debe ser numerico</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                       
                    </table>
                </td>
            </tr>
            
            <tr>
                <td>Direccion:</td>
                <td>
                    <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="GrupoAlta" ControlToValidate="txtDireccion" ForeColor="Red">* Ingrese una direccion</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="btnRegistrar" runat="server" Text="Aceptar" ValidationGroup="GrupoAlta" OnClick="btnRegistrar_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            
        </table>
        <table>
            <tr>
                <td class="auto-style10">
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
