Use ProcedimientoDB

CREATE TABLE ListadoUsuarios(
 NombreDeUsuario VARCHAR(50),
 Descripcion VARCHAR(50),
 Email VARCHAR(50),
 Activo VARCHAR(50),
 Rol VARCHAR(50),
 Autor VARCHAR(50),
 FechaCreacion VARCHAR(50)
 )

 Insert Into ListadoUsuario(NombreDeUsuario, Descripcion, Email, Activo, Rol, Autor, FechaCreacion) 
  Values('Ana','Ana Garcia','anagarcia@gmail.com','1','Administradora','UsuarioAdmin','30-10-2021')

   Insert Into ListadoUsuario(NombreDeUsuario, Descripcion, Email, Activo, Rol, Autor, FechaCreacion) 
  Values('Marcos','Marcos Solis','marcossolis@gmail.com','1','Administrador','UsuarioAdmin','30-10-2021')

GO
CREATE PROCEDURE SP_ListadoUsuarioAgrupado
 @nombreUsuario VARCHAR(50),
 @descripcion VARCHAR(50),
 @email VARCHAR(50),
 @activo VARCHAR(50),
 @rol VARCHAR(50),
 @autor VARCHAR(50),
 @fechaCreacion VARCHAR(50)

AS

Select NombreDeUsuario, Descripcion, Email, Activo, Rol, Autor, FechaCreacion
   from ListadoUsuario

GO

 Select * From ListadoUsuario

Exec SP_ListadoUsuarioAgrupados 'Mario','Mario Lopez','mariolopez@gmail.com','1','Usuario','Usuario','01-10-2021'
