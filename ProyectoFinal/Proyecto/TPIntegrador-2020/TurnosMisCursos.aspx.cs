using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TPIntegrador_2020
{
    public partial class TurnosMisCursos : System.Web.UI.Page
    {
        String user = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            cookies cookie = new cookies();
            if (cookie.existeUsuario())
            {
                user = cookie.cargarUsuario();
                String rango = cookie.cargarRango();
                HyperLink3.Text = cookie.cargarUsuario();
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
            int mods = n.bajarusuariodelcurso(user, TextBox1.Text);
            if (mods > 0)
            {
                Label2.Text = "Dado de baja";
                TextBox1.Text = "";
                GridView1.DataBind();
            }
            else
            {
                Label2.Text = "No se pudo dar de baja";
            }
        }
    }
}