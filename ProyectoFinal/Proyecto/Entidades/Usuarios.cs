using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    class Usuarios
    {
        private String Codigo_usr;
        private String Id_Persona;
        private String Nombre_usr;
        private String Contrasenia_usr;
        private String Tipo_usr;
        private Boolean Estado_usr;

        public Usuarios()
        {

        }

        public String Codigo_usr1 { get => Codigo_usr; set => Codigo_usr = value; }
        public String Id_Persona1 { get => Id_Persona; set => Id_Persona = value; }
        public String Nombre_usr1 { get => Nombre_usr; set => Nombre_usr = value; }
        public String Contrasenia_usr1 { get => Contrasenia_usr; set => Contrasenia_usr = value; }
        public String Tipo_usr1 { get => Tipo_usr; set => Tipo_usr = value; }
        public Boolean Estado_usr1 { get => Estado_usr; set => Estado_usr = value; }
    }
}
