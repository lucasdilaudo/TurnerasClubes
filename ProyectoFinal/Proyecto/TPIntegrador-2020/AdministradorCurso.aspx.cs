using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace TPIntegrador_2020
{
    public partial class AdministradorCurso : System.Web.UI.Page
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

            if (Calendar1.SelectedDate.Year > 2000 && DropDownList2.Items.Count > 0)
            {
                NegocioUsuario n = new NegocioUsuario();
                DateTime date = Calendar1.SelectedDate;
                String dateStr = date.Month.ToString() + "/" + date.Day.ToString() + "/" + date.Year.ToString() + " " + DropDownList3.SelectedValue.ToString();
                String valorCancha = DropDownList4.SelectedValue.ToString();
                //profesor deporte desc
                int f = n.registrarCurso(valorCancha,dateStr,DropDownList1.SelectedValue.ToString(),DropDownList2.SelectedValue.ToString(),TextBox1.Text);
                if (f > 0)
                {
                    lblPrueba.Text = "Curso registrado";
                    //Response.Redirect("Administrador.aspx");
                    TextBox1.Text = "";
                    DataTable dt = new DataTable();
                    RefreshDDL();

                    dt = n.obtenerHorariosCurso(DropDownList4.SelectedValue, dateStr);
                    if (dt != null)
                    {
                        if (dt.Rows.Count > 0)
                        {
                            for (int gh = 0; gh < dt.Rows.Count; gh++)
                            {
                                DropDownList3.Items.Remove(dt.Rows[gh][0].ToString());
                                //lblPrueba.Text = dt.Rows[f][0].ToString();
                            }
                        }
                        else
                        {
                            //lblPrueba.Text = "";
                            RefreshDDL();
                        }
                    }
                    else
                    {
                        //lblPrueba.Text = "";
                        RefreshDDL();
                    }
                    GridView1.DataBind();
                    Calendar1.DataBind();
                }
                else
                {
                    //lblPrueba.Text = DropDownList1.SelectedValue + "," + dateStr;
                    lblPrueba.Text = "Error SQL";
                }
            }
            else
            {
                lblPrueba.Text = "Seleccione valores";
            }


        }

        protected String GenerarFecha()
        {
            DateTime date = new DateTime();
            date = Calendar1.SelectedDate;
            String dateStr = date.Month.ToString() + "/" + date.Day.ToString() + "/" + date.Year.ToString();
            return dateStr;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.Date <= DateTime.Today)
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            NegocioUsuario n = new NegocioUsuario();
            DataTable dt = new DataTable();

            String dateStr = GenerarFecha();

            //lblPrueba.Text = dateStr;


            RefreshDDL();

            dt = n.obtenerHorariosCurso(DropDownList4.SelectedValue, dateStr);
            if (dt != null)
            {
                if (dt.Rows.Count > 0)
                {
                    for (int f = 0; f < dt.Rows.Count; f++)
                    {
                        DropDownList3.Items.Remove(dt.Rows[f][0].ToString());
                        //lblPrueba.Text = dt.Rows[f][0].ToString();
                    }
                }
                else
                {
                    //lblPrueba.Text = "";
                    RefreshDDL();
                }
            }
            else
            {
                //lblPrueba.Text = "";
                RefreshDDL();
            }
        }

        protected void RefreshDDL()
        {
            DropDownList3.Items.Clear();
            DropDownList3.Items.Add(new ListItem("08:00:00", "08:00:00"));
            DropDownList3.Items.Add(new ListItem("09:00:00", "09:00:00"));
            DropDownList3.Items.Add(new ListItem("10:00:00", "10:00:00"));
            DropDownList3.Items.Add(new ListItem("11:00:00", "11:00:00"));
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            NegocioUsuario n = new NegocioUsuario();
            DataTable dt = new DataTable();

            String dateStr = GenerarFecha();

            //lblPrueba.Text = dateStr;


            RefreshDDL();

            dt = n.obtenerHorariosCurso(DropDownList4.SelectedValue, dateStr);
            if (dt != null)
            {
                if (dt.Rows.Count > 0)
                {
                    for (int f = 0; f < dt.Rows.Count; f++)
                    {
                        DropDownList3.Items.Remove(dt.Rows[f][0].ToString());
                        //lblPrueba.Text = dt.Rows[f][0].ToString();
                    }
                }
                else
                {
                    //lblPrueba.Text = "";
                    RefreshDDL();
                }
            }
            else
            {
                //lblPrueba.Text = "";
                RefreshDDL();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //baja curso
            NegocioAdministrador h = new NegocioAdministrador();
            int z = h.bajarCurso(txtBorrar.Text);
            if (z > 0)
            {
                lblPrueba2.Text = "Bajado";
                txtBorrar.Text = "";
                GridView1.DataBind();
            }
            else
            {
                lblPrueba2.Text = "Dato invalido";
            }

        }
    }
}