using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TPIntegrador_2020
{
    public partial class AdministradorAltaProfesor : System.Web.UI.Page
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
            if (ad.AltaProfesor(txtNombre.Text, txtApellido.Text, txtDNI.Text, txtDireccion.Text, txtTelefono.Text, txtCBU.Text, txtMatricula.Text, txtRemuneracion.Text) == 0)
                lblMensaje.Text = "Error al ingresar un profesor";
            else
            {
                lblMensaje.Text = "El profesor se ha guardado exitosamente";
            }


            txtNombre.Text = ""; txtApellido.Text = ""; txtDNI.Text = ""; txtDireccion.Text = ""; txtTelefono.Text = ""; txtCBU.Text = ""; txtMatricula.Text = ""; txtRemuneracion.Text = "";


        }
    }
}

