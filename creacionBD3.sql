-- Crear tabla Rol
CREATE TABLE Rol (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(50) NOT NULL
);

-- Insertar valores predefinidos
INSERT INTO Rol (Nombre) VALUES ('Alumno'), ('Maestro');

-- Crear tabla Usuarios
CREATE TABLE Usuario (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    IdRol INT NOT NULL,
    FOREIGN KEY (RolId) REFERENCES Rol(Id)
);


-- Verificar si ya existen antes de insertar
IF NOT EXISTS (SELECT 1 FROM Usuario WHERE Email = 'juan.perez@email.com')
BEGIN
    INSERT INTO Usuario (Nombre, Email, RolId) VALUES
    ('Juan Pérez', 'juan.perez@email.com', 1),
    ('María López', 'maria.lopez@email.com', 2),
    ('Carlos Gómez', 'carlos.gomez@email.com', 1),
    ('Ana Torres', 'ana.torres@email.com', 2);
END