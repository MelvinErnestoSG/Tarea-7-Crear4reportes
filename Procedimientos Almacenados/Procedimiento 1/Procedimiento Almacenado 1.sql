Use ProcedimientoDB

CREATE TABLE ReciboUsuarios(
 Numero VARCHAR(50),
 Recibi VARCHAR(50),
 Fecha VARCHAR(50),
 Suma VARCHAR(50),
 Pesos VARCHAR(50),
 Concepto VARCHAR(50),
 Firma VARCHAR(50)
 )

 Insert Into ReciboUsuarios(Numero, Recibi, Fecha, Suma, Pesos, Concepto, Firma) 
  Values('No.1','Juan Perez','27/10/2021','Mil Pesos','1,000','Por compra de un celular.','Melvin Santana')

GO
Create PROCEDURE SP_ReciboUsuarios	
 @numero VARCHAR(50),
 @recibi VARCHAR(50),
 @fecha VARCHAR(50),
 @suma VARCHAR(50),
 @pesos VARCHAR(50),
 @concepto VARCHAR(50),
 @firma VARCHAR(50)

 AS

 Select Numero, Recibi, Fecha, Suma, Concepto, Firma
   from ReciboUsuarios

GO

 Exec SP_ReciboUsuarios	'No.1','Juan Perez','27/10/2021','Mil Pesos','1,000','Por compra de un celular.','Melvin Santana'

 Select * From ReciboUsuario
  