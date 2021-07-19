<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TPIntegrador_2020.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Titulaso</title>
    <style>
        .auto-style1 {
            margin-left: 0px;
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
            </tr>
        </table>
    </div>

    <div id="SubMenu">
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

    <div id="Contenido">
        &nbsp;<br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Login"></asp:Label>
        <br />
        <br />
        <table border="0" class="tablaContenido" draggable="false">
            <tr>
                <td class="auto-style2">Usuario</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Contraseña</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width:200px">

                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registro.aspx">Registrarse</asp:HyperLink>

                </td>
                <td style="text-align:center; width:200px">

                    <asp:Button ID="Button1" runat="server" Text="Ingresar" OnClick="Button1_Click" />

                    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>

                </td>
            </tr>
        </table>
        <br />
        Algunos usuarios:<br />
        Administrador = adminCero:1234<br />
        Usuario = usrPablo:12345<br />
        </div>

    <div id="PieDePagina">Pie de pagina</div>


    </form>


</body>
</html>
