namespace coneccionBD._3_2.Models
{
    public class Rol
    {
        public int Id { get; set; }
        public string Nombre { get; set; }

        // Relación
        public ICollection<Usuario> Usuarios { get; set; }
    }
}
