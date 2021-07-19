using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TPIntegrador_2020
{
    public partial class AdministradorCancelacion : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //VEO SI HAY COOKIE DE USUARIO, EN CASO DE HABERLO CARGO SU NOMBRE Y RANGO
            cookies cookie = new cookies();
            if (cookie.existeUsuario())
            {
                if (cookie.cargarRango() != "ADMIN")
                {
                    Response.Redirect("Inicio.aspx");
                }
                HyperLink3.Text = cookie.cargarUsuario();
            }
            else
            {
                Response.Redirect("Inicio.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            NegocioAdministrador ad = new NegocioAdministrador();
            if (ad.BajarTurno(TextBox1.Text) > 0) { 
                Label2.Text = "Turno seteado a BAJA";
                GridView1.DataBind();
            } else {
                Label2.Text = "No se pudo dar de baja";
            }

        }
    }
}