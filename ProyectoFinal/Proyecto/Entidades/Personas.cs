using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    class Personas
    {
        private String Id_persona;
        private String Dni_persona;
        private String Nombre_persona;
        private String Apellido_persona;
        private String Direccion_persona;
        private String Telefono_persona;

        public Personas()
        {

        }

        public String Id_persona1 { get => Id_persona; set => Id_persona = value; }
        public String Dni_persona1 { get => Dni_persona; set => Dni_persona = value; }
        public String Nombre_persona1 { get => Nombre_persona; set => Nombre_persona = value; }
        public String Apellido_persona1 { get => Apellido_persona; set => Apellido_persona = value; }
        public String Direccion_persona1 { get => Direccion_persona; set => Direccion_persona = value; }
        public String Telefono_persona1 { get => Telefono_persona; set => Telefono_persona = value; }
    }
}
