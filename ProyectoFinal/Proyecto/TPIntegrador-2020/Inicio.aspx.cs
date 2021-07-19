using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPIntegrador_2020
{
    public partial class Inicio : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //Intento cargar cookie de nombre de usuario.
            cookies cookie = new cookies();
            if (cookie.existeUsuario())
            {
                HyperLink3.Text = cookie.cargarUsuario();
                HyperLink2.Text = "Salir";
            }
            else
            {
                HyperLink3.Text = "Usuario";
            }

        }



    }
}