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
    public partial class TurnosNuevoTurno : System.Web.UI.Page
    {
        String user = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack != true) { 
                RefreshDDL();
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

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            NegocioUsuario n = new NegocioUsuario();
            DataTable dt = new DataTable();

            String dateStr = GenerarFecha();

            //lblPrueba.Text = dateStr;


            RefreshDDL();

            dt = n.obtenerHorarios(DropDownList1.SelectedValue, dateStr);
            if (dt != null)
            {
                if (dt.Rows.Count > 0)
                {
                    for(int f = 0; f < dt.Rows.Count; f++) {
                        DropDownList2.Items.Remove(dt.Rows[f][0].ToString());
                        //lblPrueba.Text = dt.Rows[f][0].ToString();
                    }
                    //DropDownList2.DataSource = dt;
                    //DropDownList2.DataValueField = "hora";
                    //DropDownList2.DataTextField = "hora";
                    //DropDownList2.DataBind();
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

        protected String GenerarFecha()
        {
            DateTime date = new DateTime();
            date = Calendar1.SelectedDate;
            String dateStr = date.Month.ToString() + "/" + date.Day.ToString() + "/" + date.Year.ToString();
            return dateStr;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            NegocioUsuario n = new NegocioUsuario();
            DataTable dt = new DataTable();
            String dateStr = GenerarFecha();
            //lblPrueba.Text = Calendar1.SelectedDate.ToString();

            dt = n.obtenerHorarios(DropDownList1.SelectedValue, dateStr);
            if (dt != null)
            {
                if (dt.Rows.Count > 0)
                {
                    for (int f = 0; f < dt.Rows.Count; f++)
                    {
                        DropDownList2.Items.Remove(dt.Rows[f][0].ToString());
                        //lblPrueba.Text = dt.Rows[f][0].ToString();
                    }
                }
                else
                {
                    //lblPrueba.Text = "";
                    RefreshDDL();
                }
                //SqlDataSource3.DataBind();
            }
            else
            {
                //lblPrueba.Text = "";
                RefreshDDL();
            }
        }

        protected void RefreshDDL()
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add(new ListItem("12:00:00", "12:00:00"));
            DropDownList2.Items.Add(new ListItem("13:00:00", "13:00:00"));
            DropDownList2.Items.Add(new ListItem("14:00:00", "14:00:00"));
            DropDownList2.Items.Add(new ListItem("15:00:00", "15:00:00"));
            DropDownList2.Items.Add(new ListItem("16:00:00", "16:00:00"));
            DropDownList2.Items.Add(new ListItem("17:00:00", "17:00:00"));
            DropDownList2.Items.Add(new ListItem("18:00:00", "18:00:00"));
            DropDownList2.Items.Add(new ListItem("19:00:00", "19:00:00"));
            DropDownList2.Items.Add(new ListItem("20:00:00", "20:00:00"));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Calendar1.SelectedDate.Year > 2000 && DropDownList2.Items.Count>0) { 
                NegocioUsuario n = new NegocioUsuario();
                DateTime date = Calendar1.SelectedDate;
                String dateStr = date.Month.ToString() + "/" + date.Day.ToString() + "/" + date.Year.ToString() + " " + DropDownList2.SelectedValue.ToString();
                String valorCancha = DropDownList1.SelectedValue.ToString();
                int f = n.registrarTurno(valorCancha, dateStr, user);
                if (f > 0)
                {
                    Response.Redirect("TurnosMisTurnos.aspx");
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

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date <= DateTime.Today)
            {
                e.Day.IsSelectable = false;
            }
        }
    }
}