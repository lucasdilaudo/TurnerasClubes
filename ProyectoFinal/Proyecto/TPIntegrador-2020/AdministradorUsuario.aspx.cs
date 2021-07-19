using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Security;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TPIntegrador_2020
{
    public partial class AdministradorUsuario : System.Web.UI.Page
    {
        cookies cookie = new cookies();
        protected void Page_Load(object sender, EventArgs e)
        {
            //VEO SI HAY COOKIE DE USUARIO, EN CASO DE HABERLO CARGO SU NOMBRE Y RANGO
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
            if (TextBox1.Text.Length > 0) {
                SqlDataSource1.FilterExpression = "apellido_persona LIKE '%" + TextBox1.Text + "%'";
            }
            else { 
                SqlDataSource1.FilterExpression = null;
            }
            
            cookie.guardarFiltro(TextBox1.Text);
            TextBox1.Text = "";
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            String filtro = cookie.cargarFiltro();
            if (filtro != null)
            {
                SqlDataSource1.FilterExpression = "apellido_persona LIKE '%" + filtro + "%'";
                GridView1.EditIndex = e.NewEditIndex;
                SqlDataSource1.DataBind();
            }
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            cookie.guardarFiltro(null);
        }
    }
}