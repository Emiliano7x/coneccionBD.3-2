﻿namespace coneccionBD._3_2.Models
{
    public class Usuario
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Email { get; set; }

        public int RolId { get; set; }
        public Rol Rol { get; set; }
    }

}
