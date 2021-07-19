using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;

namespace Negocio
{
    public class NegocioLogin
    {
        AccesoAdatos Ad = new AccesoAdatos();

        public String BuscarContrasenia(String username)
        {
            try
            {
                String resultado = Ad.ConsultarDato("select contrasenia_usuario from usuarios where nombre_usuario = '" + username + "'");
                return resultado;
            }
            catch (Exception ex)
            {
                return null;
            }

        }

        public String BuscarRango(String username)
        {
            String resultado = Ad.ConsultarDato("select tipo_usuario from usuarios where nombre_usuario = '" + username + "'");
            return resultado;
        }

        public int nuevoUsuario(String name, String pw, String mail, String dni)
        {
            //create procedure nuevoUsuario
            //@name varchar(20), @pw varchar(20), @mail varchar(80), @dni varchar(10)
            int modificados = Ad.RealizarConsulta("nuevoUsuario '" + name + "', '" + pw + "', '" + mail + "', '" + dni + "'");
            return modificados;
           
        }

    }
}
