using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TPIntegrador_2020
{
    public partial class TurnosNuevoCurso : System.Web.UI.Page
    {
        String user;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack != true)
            {
                //lblPrueba.Text = Calendar1.SelectedDate.ToString();
            }
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
            NegocioUsuario n = new NegocioUsuario();
            if (!n.usuarioActivo(user))
            {
                Response.Redirect("ErrorInactivo.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            NegocioUsuario n = new NegocioUsuario();
            int f = n.registrarUsuario(user, DropDownList1.SelectedValue.ToString());
            if (f > 0)
            {
                lblError.Text = "Registrado al curso";
                Response.Redirect("TurnosMisCursos.aspx");
            }
            else
            {
                lblError.Text = "No se pudo registrar";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        { 
            
            refrescarlabels();
        }

        protected void refrescarlabels()
        {
            NegocioUsuario n = new NegocioUsuario();
            lblDeporte.Text = n.consultarDato("deportedelcurso " + DropDownList1.SelectedValue.ToString());
            lblProfesor.Text = n.consultarDato("profesordelcurso " + DropDownList1.SelectedValue);
            lblHorario.Text = n.consultarDato("horariodelcurso " + DropDownList1.SelectedValue);
        }

 
    }
}