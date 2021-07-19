using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace Datos
{
    public class AccesoAdatos
    {
        String rutaTurnos = "Data Source=localhost\\sqlexpress;Initial Catalog = TPIFinalClubDeportivo; Integrated Security = True";

        public AccesoAdatos(){

        }

        private SqlConnection ObtenerConexion()
        {
            SqlConnection cn = new SqlConnection(rutaTurnos);
            try
            {
                cn.Open();
                return cn;
            }
            catch (Exception ex)
            {
                return null;
            }
        }


        public SqlDataAdapter ObtenerAdaptador(String consultaSql)
        {
            SqlDataAdapter adaptador;
            try
            {
                SqlConnection Conexion = ObtenerConexion();
                adaptador = new SqlDataAdapter(consultaSql, Conexion);
                return adaptador;
            }
            catch (Exception ex)
            {
                return null;
            }
        }


        public int RealizarConsulta(String consulta)
        {
            try
            {
                SqlConnection Conexion = ObtenerConexion();
                var cmd = new SqlCommand(consulta, Conexion);
                int filasModificadas = cmd.ExecuteNonQuery();
                return filasModificadas;
            }
            catch (Exception ex)
            {
                return 0;
            }
        }

        public int RealizarConsulta2(String consulta)
        {

                SqlConnection Conexion = ObtenerConexion();
                var cmd = new SqlCommand(consulta, Conexion);
                int filasModificadas = cmd.ExecuteNonQuery();
                return filasModificadas;
        }



        public String ConsultarDato(String consulta)
        {
            SqlConnection Conexion = ObtenerConexion();
            var cmd = new SqlCommand(consulta, Conexion);
            String valor = null;
            object vvalor = cmd.ExecuteScalar();
            if (vvalor != null){
                valor = vvalor.ToString();
            }
            return valor;
        }

        public DataTable ObtenerTabla(String NombreTabla, String Sql)
        {
            DataSet ds = new DataSet();
            SqlConnection Conexion = ObtenerConexion();
            SqlDataAdapter adp = ObtenerAdaptador(Sql);
            adp.Fill(ds, NombreTabla);
            Conexion.Close();
            return ds.Tables[NombreTabla];
        }


    }
}
