using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TPIntegrador_2020
{
    public partial class AdministradorAltaUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            NegocioAdministrador ad = new NegocioAdministrador();
            if (ad.AltaPersona(txtNombre.Text, txtApellido.Text, txtDNI.Text, txtDireccion.Text) == 0)
            {
                lblMensaje.Text = "Ya existe dicha persona en la base de datos.";
            } else
            {
                lblMensaje.Text = "La persona a sido añadida con exito";
            }
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtDNI.Text = "";
            txtDireccion.Text = "";
        }
    }
}