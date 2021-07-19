<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TPIntegrador_2020.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Titulaso</title>

    <link rel="StyleSheet" href="EstilosPlantilla.css"/>

    <style type="text/css">

        .auto-style1 {
            width: 135px;
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
                    <asp:HyperLink ID="HyperLink2" runat="server" ClientIDMode="AutoID" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>

    <div id="SubMenu" class="auto-style11">
            <br />
            <br />
            <br />
            <br />
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

    <div id="Contenido" class="auto-style6">
        &nbsp;<br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Registro"></asp:Label>
        <table border="0" class="auto-style5" draggable="false">
            <tr>
                <td class="auto-style1">
                    <table>
                        <tr>
                            <td class="auto-style34">Usuario</td>
                        </tr>
                        <tr>
                            <td class="auto-style34"></td>
                        </tr>
                    </table>
                </td>
                
                <td>
                    <table>
                        <tr>
                            <td>
                    <asp:TextBox ID="txtUsuario" runat="server" Width="130px" CssClass="auto-style4"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table>
                        <tr>
                            <td class="auto-style36">

                   
                    <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtUsuario" ForeColor="Red" ValidationGroup="GrupoRegistro">*El campo no puede estar vacío</asp:RequiredFieldValidator>

                   
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style36">
                                <asp:CustomValidator ID="cvUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="CustomValidator" ForeColor="Red" ValidationGroup="GrupoRegistro">*Ya existe el usuario</asp:CustomValidator>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style1">
                    <table>
                        <tr>
                            <td>
                                DNI
                            </td>
                        </tr>
                    </table>
                </td>
                
                <td class="auto-style29">
                    <table>
                        <tr>
                            <td>

                    <asp:TextBox ID="txtDNI" runat="server" Width="130px" Height="16px"></asp:TextBox>

                            </td>
                    </table>
                </td>
                <td>
                    <table>
                        <tr>
                            <td class="auto-style31">

                    <asp:RequiredFieldValidator ID="rfvDNI" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtDNI" ForeColor="Red" ValidationGroup="GrupoRegistro">*El campo no puede estar vacío</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style31">
                                <asp:CustomValidator ID="vDNIyaregistrado" runat="server" ControlToValidate="txtDNI" ErrorMessage="CustomValidator" ForeColor="Red" ValidationGroup="GrupoRegistro">*La persona ya se encuentra registrada</asp:CustomValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style31">
                                <asp:RegularExpressionValidator ID="revDNI" runat="server" ControlToValidate="txtDNI" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^[0-9]*$" ValidationGroup="GrupoRegistro">*El campo debe ser numerico</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <table>
                        <tr>
                            <td class="auto-style35">Contraseña</td>
                        </tr>
                        <tr>
                            <td class="auto-style35"></td>
                        </tr>
                    </table>
                </td>
                
                <td>
                    <table>
                        <tr>
                            <td>
                    <asp:TextBox ID="txtContrasenia" runat="server" Width="130px" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table>
                        <tr>
                            <td class="auto-style23">

                    <asp:RequiredFieldValidator ID="rfvContrasenia" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtContrasenia" ForeColor="Red" ValidationGroup="GrupoRegistro">*El campo no puede estar vacío</asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">
                                <asp:CustomValidator ID="cvContrasenia" runat="server" ControlToValidate="txtContrasenia" ErrorMessage="CustomValidator" ForeColor="Red" ValidationGroup="GrupoRegistro">*La contraseña es muy larga</asp:CustomValidator>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <table>
                        <tr>
                            <td class="auto-style35">Repetir contraseña</td>
                        </tr>
                        <tr>
                            <td class="auto-style35"></td>
                        </tr>
                    </table>
                </td>
                
                <td>
                    <table>
                        <tr>
                            <td>

                    <asp:TextBox ID="txtRepetircontrasenia" runat="server" CssClass="auto-style4" TextMode="Password" Width="130px"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table>
                        <tr>
                            <td class="auto-style28">

                    <asp:RequiredFieldValidator ID="rfvRepetircontrasenia" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtRepetircontrasenia" ForeColor="Red" ValidationGroup="GrupoRegistro">*El campo no puede estar vacío</asp:RequiredFieldValidator>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style28">

                    <asp:CompareValidator ID="cvRepetircontrasenia" runat="server" ControlToCompare="txtContrasenia" ControlToValidate="txtRepetircontrasenia" ErrorMessage="CompareValidator" ForeColor="Red" ValidationGroup="GrupoRegistro">*Las contraseñas no son iguales</asp:CompareValidator>

                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <table>
                        <tr>
                            <td class="auto-style33">Email</td>
                        </tr>
                        <tr>
                            <td class="auto-style33"></td>
                        </tr>
                        <tr>
                            <td class="auto-style33"></td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table>
                        <tr>
                            <td>

                    <asp:TextBox ID="txtMail" runat="server" Width="130px" Height="16px"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table>
                        <tr>
                            <td class="auto-style32">

                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtMail" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="GrupoRegistro">*El campo no puede estar vacío</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style32">
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtMail" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ValidationGroup="GrupoRegistro">*El campo debe ser un email valido</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style32">
                    <asp:CustomValidator ID="cvEmail" runat="server" ControlToValidate="txtMail" ErrorMessage="CustomValidator" ForeColor="Red" ValidationGroup="GrupoRegistro">*Este email ya se encuentra registrado</asp:CustomValidator>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">

                </td>
                <td style="text-align:center; " class="auto-style29">

                    <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" ValidationGroup="GrupoRegistro" />

                </td>
                <td>

                </td>
            </tr>
        </table>
        <table class="auto-style8">
            <tr>
                <td>

                    <asp:Label ID="lblRegistro" runat="server"></asp:Label>

                </td>
            </tr>
        </table>

    


        <br />
    </div>

        <div id="PieDePagina">Pie de pagina</div>
    </form>


</body>
</html>
