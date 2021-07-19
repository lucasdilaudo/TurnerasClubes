using MySqlX.XDevAPI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPIntegrador_2020
{
    public class cookies
    {

        public void guardarUsuario(String usr, String rang)
        {
            HttpContext.Current.Session["Usuario"] = usr;
            HttpContext.Current.Session["Rango"] = rang;

        }

        public void guardarFiltro(String filtro)
        {
            HttpContext.Current.Session["Filtro"] = filtro;

        }

        public String cargarFiltro()
        {
            if (HttpContext.Current.Session["Filtro"] == null) return null;
            return HttpContext.Current.Session["Filtro"].ToString();
        }

        public bool existeUsuario()
        {
            if (HttpContext.Current.Session["Usuario"] == null)
            {
                return false;
            }
            return true;
        }

        public String cargarUsuario()
        {
            return HttpContext.Current.Session["Usuario"].ToString();
        }

        public String cargarRango()
        {
            return HttpContext.Current.Session["Rango"].ToString();
        }

        public void borrarUsuario()
        {
            HttpContext.Current.Session["Usuario"] = null;
            HttpContext.Current.Session["Rango"] = null;
        }

    }
}