namespace coneccionBD._3_2.Data
{
    using coneccionBD._3_2.Models;
    using Microsoft.EntityFrameworkCore;


    public class UsuariosDbContext : DbContext
    {
        public UsuariosDbContext(DbContextOptions<UsuariosDbContext> options)
            : base(options)
        {
        }

        public DbSet<Usuario> Usuario { get; set; }   //estos son los nombres de las tablas que se usan dentro de la base de datos
        public DbSet<Rol> Rol { get; set; }
    }
}
