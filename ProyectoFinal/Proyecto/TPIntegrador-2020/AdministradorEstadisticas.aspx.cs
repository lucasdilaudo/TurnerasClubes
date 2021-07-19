using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TPIntegrador_2020
{
    public partial class AdministradorEstadisticas : System.Web.UI.Page
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
            lblError.Text = "";
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            ValidarRangos();
            if (lblError.Text != "")
            {
                //consultar
            }

        }

        protected void ValidarRangos()
        {
            int mes1 = Int32.Parse(TextBox2.Text);
            int mes2 = Int32.Parse(TextBox4.Text);

                if ( mes1 > mes2)
                {
                    lblError.Text = "Rango M invalido";
                }
                else
                {
                    lblError.Text = "";
                }
        }
    }
}