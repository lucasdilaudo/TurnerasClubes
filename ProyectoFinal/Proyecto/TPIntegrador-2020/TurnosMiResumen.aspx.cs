using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TPIntegrador_2020
{
    public partial class TurnosMiResumen : System.Web.UI.Page
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

            NegocioUsuario d = new NegocioUsuario();
            
            Label2.Text = d.consultar("turnosTotalesDe", user);
            Label3.Text = d.consultar("TurnosActivosDe", user);
            Label4.Text = d.consultar("fechaUltimaCuotaDe", user);
            lblEstado.Text = d.consultar("buscarestadode", user);

            lblCursosActivos.Text = d.consultar("cursosActivosDe", user);
            lblCursosTotales.Text = d.consultar("cursosTotalesDe", user);
        }
    }
}