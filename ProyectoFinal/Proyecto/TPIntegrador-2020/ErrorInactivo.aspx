<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorInactivo.aspx.cs" Inherits="TPIntegrador_2020.ErrorInactivo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">




    </style>
</head>
<body>
    <form id="form1" runat="server">
            <div id="Error">
                <table class="tablaError">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Error: Usuario Inactivo"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Usted NO es un usuario activo. Para ser un usuario ACTIVO debe pagar la cuota.</td>
                    </tr>
                    <tr>
                        <td>Click
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/TurnosMisCuotas.aspx">Aqui</asp:HyperLink>
&nbsp;para ver sus cuotas.</td>
                    </tr>
                    <tr>
                        <td>Click
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Inicio.aspx">Aqui</asp:HyperLink>
&nbsp;para volver a inicio.</td>
                    </tr>
                </table>
            </div>
    </form>
</body>
</html>
