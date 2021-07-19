using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;

namespace Negocio
{
    public class NegocioUsuario
    {
        AccesoAdatos Ad = new AccesoAdatos();
        public int bajarTurno(String user,String codigo)
        {
            //create procedure CancelarTurnoDe
            //@usuario varchar(20), @codigoTurno int
            int mods = Ad.RealizarConsulta("cancelarturnode '" + user + "', '" + codigo + "'");
            return mods;
        }

        public DataTable obtenerHorarios(String cancha, String dia)
        {
            //Ad.ObtenerTabla("[Hora]", "mostrarHorariosDe '" + cancha + "', '" + dia +"'")

            DataTable dt = new DataTable();
            try
            {
                Ad.ObtenerAdaptador("mostrarHorariosDe '" + cancha + "', '" + dia + "'").Fill(dt);
            }
            catch(Exception ex)
            {
                dt = null;
            }

            return dt;
        }

        public DataTable obtenerHorariosCurso(String cancha, String dia)
        {
            //Ad.ObtenerTabla("[Hora]", "mostrarHorariosDe '" + cancha + "', '" + dia +"'")

            DataTable dt = new DataTable();
            try
            {
                Ad.ObtenerAdaptador("mostrarHorariosDeCurso '" + cancha + "', '" + dia + "'").Fill(dt);
            }
            catch (Exception ex)
            {
                dt = null;
            }

            return dt;
        }


        public int registrarTurno(String cancha, String date,String user)
        {
            int modificados = Ad.RealizarConsulta("insertarTurno '"+ cancha +"','" + date +"', '" + user + "'");
            return modificados;
        }

        public int registrarCurso(String cancha, String date, String profesor, String deporte, String desc)
        {
            //create procedure insertarCurso
            //@cancha int, @dia date, @profe int, @deporte int, @descr nvarchar(40)
            int modificados = Ad.RealizarConsulta("insertarCurso '" + cancha + "','" + date + "', '" + profesor + "'," + deporte + " , '" + desc + "'" );
            return modificados;
        }

        public int registrarUsuario(String user, String curso)
        {
            int modificados = Ad.RealizarConsulta("inscribirusuarioacurso '" + user + "'," + curso);
            return modificados;

        }



        public int pagarCuota(String usuario, String valor)
        {
            int mods = Ad.RealizarConsulta("pagarcuota '" + usuario + "', " + valor);
            return mods;
        }

        public String consultar(String consulta, String usuario)
        {
            String xd = "";
            xd = Ad.ConsultarDato(consulta + " " + usuario);
            return xd;
        }

        public int bajarusuariodelcurso(String user, String curso)
        {
            int modificados = Ad.RealizarConsulta("bajarusuarioacurso '" + user + "'," + curso);
            return modificados;
        }

        public String consultarDato(String consulta)
        {
            String xd = "";
            xd = Ad.ConsultarDato(consulta);
            return xd;
        }

        public bool usuarioActivo(String usuario)
        {
            String xd = "";
            xd = Ad.ConsultarDato("select estado_usuario from usuarios where nombre_usuario = '" + usuario + "'");
            if (xd != null) { 
                if (xd.Equals("True")) return true;
            }
            return false;
        }

    }
}
