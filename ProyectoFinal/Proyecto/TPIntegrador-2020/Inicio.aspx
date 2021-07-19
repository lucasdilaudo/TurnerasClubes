<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="TPIntegrador_2020.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Titulaso</title>

    <style>
    </style>

    <link rel="StyleSheet" href="EstilosPlantilla.css"/>


</head>
<body style="max-height: 600px">
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

    <div id="SubMenu">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="75px" Width="75px" ImageUrl="https://pbs.twimg.com/profile_images/909940434755096576/SH9q-yOc_400x400.jpg" />
            <br />
            Grupo N°7<br />
            <br />
            Revilla, Victor<br />
            Blas, Leandro<br />
            Caraballo, Agustin<br />
            Di laudo, Lucas<br />
            Ledesma, Matias<br />

    </div>

    <div id="Contenido">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Texto de bienvenida"></asp:Label>
        <br />
        <br />
        Texto de bienvenida, etcetera
        <br />

    </div>

    <div id="PieDePagina">Pie de pagina</div>


    </form>


</body>
</html>
