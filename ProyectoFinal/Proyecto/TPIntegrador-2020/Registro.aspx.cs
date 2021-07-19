using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TPIntegrador_2020
{
    public partial class Registro : System.Web.UI.Page
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

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            NegocioLogin n = new NegocioLogin();
            int p = n.nuevoUsuario(txtUsuario.Text,txtContrasenia.Text, txtMail.Text, txtDNI.Text);
            if (p != 0)
            {
                lblRegistro.Text = "Registro exitoso";
                txtUsuario.Text = "";
                txtContrasenia.Text = "";
                txtDNI.Text = "";
                txtRepetircontrasenia.Text = "";
                txtMail.Text = "";
            }
            else
            {
                lblRegistro.Text = "Usuario o DNI ya registrado";
            }
            

            
        }
    }
}