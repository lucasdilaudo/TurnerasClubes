using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;


namespace TPIntegrador_2020
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //VEO SI HAY COOKIE DE USUARIO, EN CASO DE HABERLO CARGO SU NOMBRE Y RANGO
            cookies cookie = new cookies();
            if (cookie.existeUsuario())
            {
                cookie.borrarUsuario();
            }
            else
            {
                HyperLink3.Text = "Usuario";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "adminCero" & TextBox2.Text == "1234")
            {
                cookies cookie = new cookies();
                cookie.guardarUsuario(TextBox1.Text, "ADMIN");
                Response.Redirect("Inicio.aspx");
            }
            else
            {

                NegocioLogin n = new NegocioLogin();
                String pw = n.BuscarContrasenia(TextBox1.Text);
                if (pw != null)
                {
                    if (TextBox2.Text == pw.ToString())
                    {
                        cookies cookie = new cookies();
                                                String rango = n.BuscarRango(TextBox1.Text);
                        cookie.guardarUsuario(TextBox1.Text, rango);
                        Response.Redirect("Inicio.aspx");
                    }
                    else
                    {
                        Label2.Text = "Contrasenia invalida";
                    }
                }
                else
                {
                    Label2.Text = "Usuario inexistente";
                }

            }

        }
    }
}