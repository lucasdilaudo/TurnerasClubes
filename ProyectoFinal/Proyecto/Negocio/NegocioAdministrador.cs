using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;

namespace Negocio
{
    public class NegocioAdministrador
    {
        AccesoAdatos Ad = new AccesoAdatos();
        public NegocioAdministrador()
        {
        }

        public int BajarUsuario(String id)
        {
            int filasCambiadas = Ad.RealizarConsulta("'update usuarios set estado_usuario = 0 where codigo_usuario = " + id + "'");
            return filasCambiadas;
        }

        public int AltaUsuario(String id)
        {
            int filasCambiadas = Ad.RealizarConsulta("'update usuarios set estado_usuario = 1 where codigo_usuario = " + id + "'");
            return filasCambiadas;
        }

        public String CodigoPersona(String id)
        {
            String idpersona = Ad.ConsultarDato("select codigo_persona_usuario from usuarios where codigo_usuario = '" + id + "'");
            return idpersona;
        }

        public int ActualizarPersona(String id_usuario, String nombre, String apellido)
        {
            String codigoPersona = CodigoPersona(id_usuario);
            int filasMod = Ad.RealizarConsulta("update personas set nombre_persona = '" + nombre + "', apellido_persona = '" + apellido + "' where codigo_persona = '" + codigoPersona + "'");
            return filasMod;
        }

        public int NuevaCancha()
        {
           int s = Ad.RealizarConsulta("insert into canchas (descripcion_cancha, estado_cancha) values ('Desc',0)");
            return s;
        }

        public int bajarCurso(String id)
        {
            int modificados = Ad.RealizarConsulta("bajarCurso " + id);
            return modificados;
        }
        public int NuevoDeporte()
        {
            Random r = new Random();
            int s = Ad.RealizarConsulta("insert into deportes (nombre_deporte) values ('NOMBRE"+ r.Next(1000).ToString() +"')");
            return s;
        }

        public int AltaProfesor(String nombre, String apellido, String DNI, String Direccion, String Telefono, String CBU, String Matricula, string Remuneracion)
        {
            /*
create procedure nuevoProfesor
    @nombre varchar(25), @apellido varchar(25) ,@DNI varchar(10), @direccion varchar(25), @telefono varchar(25), @cbu varchar(30), @matricula varchar(30)
    as
 * */
            int s = Ad.RealizarConsulta("insert into personas (nombre_persona, apellido_persona, dni_persona, direccion_persona, telefono_persona) values ('" + nombre + "', '" + apellido + "', '" + DNI + "', '" + Direccion + "', '" + Telefono + "') insert into profesores(codigo_persona_profesor,CBU_profesor, matricula_profesor,saldo_profesor) values((SELECT MAX(codigo_persona) FROM personas), '" + CBU + "' , '" + Matricula + "', '" + Remuneracion + "')");
            return s;

        }

        public int AltaPersona(string nombre, string apellido, string dni, string direccion)
        {
            int s = Ad.RealizarConsulta("insert into personas (nombre_persona, apellido_persona, dni_persona, direccion_persona) values ('" + nombre + "' , '" + apellido + "', '" + dni + "', '" + direccion + "')");
            return s;
        }
        public int AltaCurso(String v1, String v2, String v3, String v4, String v5)
        {
            //create procedure nuevoCurso 
            //@profe int, @deporte int , @desc nvarchar(40), @horaI time, @capacidad int
            int s = Ad.RealizarConsulta("nuevoCurso " + v1 + ", " + v2 + ", '" + v3 + "', '" + v4 + "', " + v5);
            return s;
        }

        public int BorrarCancha(String code)
        {

                int s = Ad.RealizarConsulta("delete from canchas where codigo_cancha = '" + code +"'");
                return s;

        }

        public int BajarTurno(String id)
        {
            int s = 0;
            s += Ad.RealizarConsulta("delete from turnos where codigo_turno = '" + id + "'");
            s += Ad.RealizarConsulta("delete from usuariosxturnos where codigo_turno_usXtu = '" + id + "'");
            return s;
        }

        public String IngresoCuotasDe(int mes, int anio)
        {
            String dato = null;
            dato = Ad.ConsultarDato("select sum(importe_cuota) from cuotas where month(fecha_cuota) ="+ mes.ToString() + " and year(fecha_cuota) = " + anio.ToString());
            if (dato.Length<2)
            {
                dato = "0";
            }
            return dato;
        }

    }

        
}
