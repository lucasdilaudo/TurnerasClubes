using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TPIntegrador_2020
{
    public partial class TurnosMisTurnos : System.Web.UI.Page
    {
        String user = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            cookies cookie = new cookies();
            if (cookie.existeUsuario())
            {
                user = cookie.cargarUsuario();
                String rango = cookie.cargarRango();
                HyperLink3.Text = user;
                //SqlDataSource1.SelectCommand = "mostrarturnosde '" + user + "'";
                //SqlDataSource1.FilterExpression = "vw_usuariosXturnos.codigo_usuario_usXtu = (select codigo_usuario from usuarios where nombre_usuario = '" + user + "') and vw_usuariosXturnos.estado_usXtu = 1";
            }
            else
            {
                HyperLink3.Text = "Usuario";
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            NegocioUsuario n = new NegocioUsuario();
            if(n.bajarTurno(user, TextBox1.Text) > 0)
            {
                Label2.Text = "Dado de baja";
                GridView1.DataBind();
            }
            else
            {
                Label2.Text = "Turno Invalido";
            }
        }
    }
}