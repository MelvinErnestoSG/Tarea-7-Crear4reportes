Use ProcedimientoDB

CREATE TABLE ListadoUsuariosAgrupado(
 Codigo VARCHAR(50),
 NombreUsuario VARCHAR(50),
 Descripcion VARCHAR(50),
 Email VARCHAR(50),
 Activo VARCHAR(50),
 Rol VARCHAR(50),
 Autor VARCHAR(50),
 FechaCreacion VARCHAR(50)
 )

 Insert Into ListadoUsuariosAgrupados(Codigo, NombreUsuario, Descripcion, Email, Activo, Rol, Autor, FechaCreacion) 
  Values('1','Berto','Berto Perez','bertoperez@gmail.com','1','Administrador','UsuarioAdmin','01-10-2021')

 Insert Into ListadoUsuariosAgrupados(Codigo, NombreUsuario, Descripcion, Email, Activo, Rol, Autor, FechaCreacion) 
  Values('1','Juana','Juana Veloz','juanaveloz@gmail.com','1','Usuario','Usuario','01-10-2021')

 Insert Into ListadoUsuariosAgrupados(Codigo, NombreUsuario, Descripcion, Email, Activo, Rol, Autor, FechaCreacion) 
  Values('2','Ana','Ana Garcia','anagarcia@gmail.com','1','Administradora','UsuarioAdmin','30-10-2021')

 Insert Into ListadoUsuariosAgrupados(Codigo, NombreUsuario, Descripcion, Email, Activo, Rol, Autor, FechaCreacion) 
  Values('2','Marcos','Marcos Solis','marcossolis@gmail.com','1','Administrador','UsuarioAdmin','30-10-2021')

 Insert Into ListadoUsuariosAgrupados(Codigo, NombreUsuario, Descripcion, Email, Activo, Rol, Autor, FechaCreacion) 
  Values('3','Mario','Mario Lopez','marialopez@gmail.com','1','Usuario','Usuario','31-10-2021')

 Insert Into ListadoUsuariosAgrupados(Codigo, NombreUsuario, Descripcion, Email, Activo, Rol, Autor, FechaCreacion) 
  Values('3','Alex','Alex Cortes','alexcortes@gmail.com','1','Usuario','Usuario','31-10-2021')

GO
CREATE PROCEDURE SP_ListadoUsuariosAgrupado
 @codigo VARCHAR(50),
 @nombreUsuario VARCHAR(50),
 @descripcion VARCHAR(50),
 @email VARCHAR(50),
 @activo VARCHAR(50),
 @rol VARCHAR(50),
 @autor VARCHAR(50),
 @fechaCreacion VARCHAR(50)

AS

Select Codigo, NombreUsuario, Descripcion, Email, Activo, Rol, Autor, FechaCreacion
   from ListadoUsuariosAgrupado

GO

 Select * From ListadoUsuariosAgrupado

Exec SP_ListadoUsuariosAgrupados '4','Maria','Maria Lopez','marialopez@gmail.com','1','Administradora','UsuarioAdmin','01-10-2021'

