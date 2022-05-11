Use ProcedimientoDB

CREATE TABLE ReciboUsuariosAgrupados(
 Grupo VARCHAR(50),
 Marca VARCHAR(50),
 Clave VARCHAR(50),
 Producto VARCHAR(50),
 SubTotal VARCHAR(50),
 Itbis VARCHAR(50),
 Total VARCHAR(50)
 )

 Insert Into ReciboUsuarioAgrupado(Grupo, Marca, Clave, Producto, SubTotal, Itbis, Total) 
  Values('Computos','HP','15040','Computadora CPU','28000.00','5040.00','33040.00')

 Insert Into ReciboUsuarioAgrupado(Grupo, Marca, Clave, Producto, SubTotal, Itbis, Total) 
  Values('Computos','LG','15041','Producto Demo','50.00','9.00','59.00')

 Insert Into ReciboUsuarioAgrupado(Grupo, Marca, Clave, Producto, SubTotal, Itbis, Total) 
  Values('Computos','Dell','15042','Mouse','60.00','10.80','70.80')

Insert Into ReciboUsuarioAgrupado(Grupo, Marca, Clave, Producto, SubTotal, Itbis, Total) 
  Values('Computos','Lenovo','15043','Monitor','200.00','36.00','236.00')

GO
Create PROCEDURE SP_ReciboUsuariosAgrupado
 @grupo VARCHAR(50),
 @marca VARCHAR(50),
 @clave VARCHAR(50),
 @producto VARCHAR(50),
 @subTotal VARCHAR(50),
 @itbis VARCHAR(50),
 @total VARCHAR(50)

 AS

 Select Grupo, Marca, Clave, Producto, SubTotal, Itbis, Total
   from ReciboUsuariosAgrupados

GO

 Exec SP_ReciboUsuariosAgrupados Grupo, Marca, Clave, Producto, SubTotal, Itbis, Total

 Select * From ReciboUsuariosAgrupados
  