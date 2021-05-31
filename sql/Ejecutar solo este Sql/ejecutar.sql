
CREATE DATABASE test1
go

USE test1
go

create table Prospecto
(
    ProspectoID     int identity
        constraint PK_Prospecto
            primary key,
    Nombres         varchar(200),
    Apellidos       varchar(200),
    TipoDocumentoID int,
    NumeroDocumento varchar(20),
    Email           varchar(200),
    NumeroCelular   varchar(20),
    DepartamentoID  int,
    FechaRegistro   datetime,
    Activo          bit
)
go

create table Departamento
(
    DepartamentoID int identity
        constraint PK_Departamento
            primary key,
    Nombre         varchar(100),
    Estado         bit
)
go
SET IDENTITY_INSERT Departamento ON

INSERT INTO test1.dbo.Departamento (DepartamentoID, Nombre, Estado) VALUES (1, N'Lima', 1);
INSERT INTO test1.dbo.Departamento (DepartamentoID, Nombre, Estado) VALUES (2, N'Amazonas', 1);
INSERT INTO test1.dbo.Departamento (DepartamentoID, Nombre, Estado) VALUES (3, N'Arequipa', 1);
INSERT INTO test1.dbo.Departamento (DepartamentoID, Nombre, Estado) VALUES (4, N'Apurimac', 1);
INSERT INTO test1.dbo.Departamento (DepartamentoID, Nombre, Estado) VALUES (5, N'Ayacucho', 1);
INSERT INTO test1.dbo.Departamento (DepartamentoID, Nombre, Estado) VALUES (6, N'Cajamarca', 1);
INSERT INTO test1.dbo.Departamento (DepartamentoID, Nombre, Estado) VALUES (7, N'Cusco', 1);

SET IDENTITY_INSERT Departamento Off
go

create table Opcion
(
    OpcionID    int identity
        constraint PK_Opcion
            primary key,
    Nombre      varchar(100),
    Descripcion varchar(200),
    PathUrl     varchar(200),
    Icono       varchar(100),
    Estado      bit,
    Orden       int
)
go
SET IDENTITY_INSERT Opcion ON
INSERT INTO test1.dbo.Opcion (OpcionID, Nombre, Descripcion, PathUrl, Icono, Estado, Orden) VALUES (1, N'Deposito Plazo', N'Deposito de dinero', N'/deposito-plazo/result', N'fas fa-money-bill', 1, 2);
INSERT INTO test1.dbo.Opcion (OpcionID, Nombre, Descripcion, PathUrl, Icono, Estado, Orden) VALUES (2, N'Prestamos Personales', N'Prestamo de dinero', N'/prestamo/result', N'fas fa-hand-holding-usd', 1, 1);
SET IDENTITY_INSERT OpciOn OFF 

create table Parametro
(
    ParametroID int identity
        constraint PK_Parametro
            primary key,
    CodigoPadre varchar(10),
    CodigoHijo  varchar(10),
    Valor1      varchar(100),
    Valor2      varchar(100),
    Descripcion varchar(200),
    Orden       int,
    Estado      bit
)
go

SET IDENTITY_INSERT Parametro ON

INSERT INTO test1.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (1, N'DOC', null, N'Tipo Documento', null, N'Tipo de Documento', null, 1);
INSERT INTO test1.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (2, null, N'DOC', null, N'DNI', N'Documento Nacional Identidad', 1, 1);
INSERT INTO test1.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (3, null, N'DOC', null, N'RUC', N'Registro Unico Contribuyente', 2, 1);
INSERT INTO test1.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (4, N'MON', null, N'Tipo Moneda', null, N'Tipo de Moneda', null, 1);
INSERT INTO test1.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (5, null, N'MON', null, N'SOLES', N'Soles Peruanos', 1, 1);
INSERT INTO test1.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (6, null, N'MON', null, N'DOLARES', N'Dolares Americanos', 2, 1);
INSERT INTO test1.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (7, N'INS', null, N'Tipo Institucion', null, N'Tipo Institucion', null, 1);
INSERT INTO test1.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (8, null, N'INS', null, N'BANCO', N'Banco - ASBANC', 1, 1);
INSERT INTO test1.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (9, null, N'INS', null, N'CAJA', N'Caja', 2, 1);
INSERT INTO test1.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (10, null, N'INS', null, N'COOPERATIVA', N'Cooperativa', 3, 1);
INSERT INTO test1.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (11, null, N'INS', null, N'OTRO', N'Otro', 4, 1);
INSERT INTO test1.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (12, N'TD', null, N'Tipo Producto', null, N'Tipo de Producto Financiero', null, 1);
INSERT INTO test1.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (13, null, N'TD', null, N'PRESTAMO PERSONAL', N'Prestamo Personal', 1, 1);
INSERT INTO test1.dbo.Parametro (ParametroID, CodigoPadre, CodigoHijo, Valor1, Valor2, Descripcion, Orden, Estado) VALUES (14, null, N'TD', null, N'DEPOSITO', N'Deposito a Plazo', 2, 1);

SET IDENTITY_INSERT Parametro OFF
GO
create table EntidadFinanciera
(
    EntidadFinancieraID int identity
        constraint PK_EntidadFinanciera
            primary key,
    RazonSocial         varchar(200),
    NombreComercial     varchar(200),
    PathImagen          varchar(200),
    TipoInstitucionID   int,
    DepartamentoID      int
        constraint FK_EntidadFinanciera_Departamento
            references Departamento
            on update cascade on delete cascade,
    TipoDocumentoID     int,
    NumeroDocumento     varchar(20),
    Direccion           varchar(200),
    Telefono            varchar(20),
    Correo              varchar(100),
    PaginaWeb           varchar(100),
    UsuarioRegistro     varchar(100),
    FechaRegistro       datetime,
    UsuarioModifica     varchar(100),
    FechaModificacion   datetime,
    Activo              bit
)
go

SET IDENTITY_INSERT EntidadFinanciera ON
INSERT INTO test1.dbo.EntidadFinanciera (EntidadFinancieraID, RazonSocial, NombreComercial, PathImagen, TipoInstitucionID, DepartamentoID, TipoDocumentoID, NumeroDocumento, Direccion, Telefono, Correo, PaginaWeb, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (1, N'BBVA CONTINENTAL', N'BBVA Continental', N'https://enviotodo.pe/wp-content/uploads/2020/01/logobbva.png', 8, 2, 3, N'000292992', N'Av. Mandamiento - 903 ', N'03939393', N'bbva@gmail.com', null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO test1.dbo.EntidadFinanciera (EntidadFinancieraID, RazonSocial, NombreComercial, PathImagen, TipoInstitucionID, DepartamentoID, TipoDocumentoID, NumeroDocumento, Direccion, Telefono, Correo, PaginaWeb, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (2, N'SCOTIABANK', N'Scotiabank', N'https://style.shockvisual.net/wp-content/uploads/2019/05/logo-scotiabank.png', 8, 1, 3, N'39999393933', N'Av. Plaza CC - San Isidro', N'92929202', N'scotiabank@gmail.com', null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO test1.dbo.EntidadFinanciera (EntidadFinancieraID, RazonSocial, NombreComercial, PathImagen, TipoInstitucionID, DepartamentoID, TipoDocumentoID, NumeroDocumento, Direccion, Telefono, Correo, PaginaWeb, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (3, N'INTERBANK', N'Interbank', N'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQaIaVxDUfkWpVFOrqFJQhUMXMwVd7AnX4BJg&usqp=CAU', 8, 3, 3, N'93930303', N'Av. Saenz Peña 90 - Malaga', N'393930302', N'interbank@interbank.pe', null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO test1.dbo.EntidadFinanciera (EntidadFinancieraID, RazonSocial, NombreComercial, PathImagen, TipoInstitucionID, DepartamentoID, TipoDocumentoID, NumeroDocumento, Direccion, Telefono, Correo, PaginaWeb, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (4, N'BCP', N'Banco Credito Peru', N'https://logovtor.com/wp-content/uploads/2020/03/banco-de-credito-del-peru-bcp-logo-vector.png', 8, 1, 3, N'121312322', N'Av. Saenz Peña #428', N'2323390', N'bancocreditoperu@bcp.com.pe', null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO test1.dbo.EntidadFinanciera (EntidadFinancieraID, RazonSocial, NombreComercial, PathImagen, TipoInstitucionID, DepartamentoID, TipoDocumentoID, NumeroDocumento, Direccion, Telefono, Correo, PaginaWeb, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (5, N'MI BANCO ', N'Mi Banco', N'https://www.mibanco.com.pe/repositorioaps/data/1/1/1/zon/zona-logo/images/logo.png', 8, 3, 3, N'393939302', N'AV. Puente Nuevo # 940 - Bellavista', N'22828289', N'mibanco@outlook.pe', null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO test1.dbo.EntidadFinanciera (EntidadFinancieraID, RazonSocial, NombreComercial, PathImagen, TipoInstitucionID, DepartamentoID, TipoDocumentoID, NumeroDocumento, Direccion, Telefono, Correo, PaginaWeb, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (6, N'CAJA SULLANA', N'Sullana', N'https://seeklogo.com/images/C/caja-sullana-logo-B67137F998-seeklogo.com.png', 9, 1, 3, N'233030303', N'Av. Nicolas Pierola #890 - Lince', N'7373738', N'cajasullana@hotmail.com', null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO test1.dbo.EntidadFinanciera (EntidadFinancieraID, RazonSocial, NombreComercial, PathImagen, TipoInstitucionID, DepartamentoID, TipoDocumentoID, NumeroDocumento, Direccion, Telefono, Correo, PaginaWeb, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (7, N'CAJA DEL SANTA', N'Caja Del Santa', N'https://sevend.pe/images/clientes/caja%20del%20santa.png', 9, 2, 3, N'484849302', N'Av. Mesa Redonda 890', N'2311111', N'cajasanta@gmail.com', null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
SET IDENTITY_INSERT EntidadFinanciera OFF
GO

create table ProductoFinanciero
(
    ProductoFinancieroID int identity
        constraint PK_ProductoFinanciero
            primary key,
    TipoProductoID       int,
    EntidadFinancieraID  int
        constraint FK_ProductoFinanciero_EntidadFinanciera
            references EntidadFinanciera
            on update cascade on delete cascade,
    Nombre               varchar(100),
    Descripcion          varchar(200),
    PorcentajeTea        decimal(10, 2),
    PorcentajeComision   decimal(10, 2),
    PorcentajeSeguro     decimal(10, 2),
    Observacion          varchar(500),
    PlazoMinimoMes       int,
    PlazoMaximoMes       int,
    PlazoMinimoDia       int,
    PlazoMaximoDia       int,
    TieneFondoSeguro     bit,
    UsuarioRegistro      varchar(100),
    FechaRegistro        datetime,
    UsuarioModifica      varchar(100),
    FechaModificacion    datetime,
    Activo               bit
)
go
SET IDENTITY_INSERT ProductoFinanciero ON
INSERT INTO test1.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (1, 14, 1, N'Deposito BBVA Continental', N'Deposito BBVA Continental Free', 0.19, 0.23, 0.19, N'Deposito BBVA Continental con multiples beneficios', null, null, 60, 1800, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO test1.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (2, 13, 1, N'Prestamo BBVA Continental', N'Prestamo BBVA Continental Online ', 0.19, 0.19, 1.09, N'Prestamo BBVA Continental con beneficios', 3, 60, null, null, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO test1.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (3, 14, 2, N'Deposito Scotiabank', N'Deposito Scotiabank Free', 1.20, 0.90, 0.82, N'Deposito Scotiabank con beneficios', null, null, 30, 1600, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO test1.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (4, 13, 2, N'Prestamo Scotiabank', N'Prestamo Scotiabank Online', 1.20, 1.45, 1.33, N'Prestamo Scotiabank Online - Cero Mantenimiento', 6, 49, null, null, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO test1.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (5, 13, 3, N'Prestamo Interbank ', N'Prestamo Interbank Online', 0.20, 0.01, 0.02, N'Prestamo Interbank con beneficios clubsueldo', 3, 39, null, null, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO test1.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (6, 14, 3, N'Deposito Interbank', N'Deposito Interbank Free', 1.29, 1.02, 0.23, N'Deposito Interbank con beneficios', null, null, 30, 1300, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO test1.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (7, 13, 4, N'Prestamo BCP', N'Prestamo Trabajadores BCP ', 0.90, 0.45, 0.19, N'Prestamo Trabajadpres BCP  - ClubSueldo', 3, 60, null, null, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO test1.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (8, 14, 4, N'Deposito BCP', N'Deposito BCP', 0.13, 0.34, 0.32, N'Deposito BCP', null, null, 30, 900, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO test1.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (9, 14, 6, N'Deposito mi banco', N'Deposito club beneficiarios', 0.20, 0.19, 1.20, N'Deposito exclusivo para club Mi Banco', null, null, 30, 410, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
INSERT INTO test1.dbo.ProductoFinanciero (ProductoFinancieroID, TipoProductoID, EntidadFinancieraID, Nombre, Descripcion, PorcentajeTea, PorcentajeComision, PorcentajeSeguro, Observacion, PlazoMinimoMes, PlazoMaximoMes, PlazoMinimoDia, PlazoMaximoDia, TieneFondoSeguro, UsuarioRegistro, FechaRegistro, UsuarioModifica, FechaModificacion, Activo) VALUES (10, 13, 6, N'Prestamo Mi Banco', N'Prestamo Mi Banco Online', 0.12, 0.13, 0.43, N'Prestamo Mi Banco con beneficios ', 3, 50, null, null, null, N'Farmacias Peruanas', null, N'Farmacias Peruanas', null, 1);
SET IDENTITY_INSERT ProductoFinanciero OFF
GO

create table DetalleProductoFinanciero
(
    DetalleProductoFinancieroID int identity
        constraint PK_DetalleProductoFinanciero
            primary key,
    ProductoFinancieroID        int
        constraint FK_DetalleProductoFinanciero_ProductoFinanciero
            references ProductoFinanciero
            on update cascade on delete cascade,
    TipoMonedaID                int,
    IngresoPermitido            int,
    MontoMinimoPrestamo         decimal(10, 2),
    MontoMaximoPrestamo         decimal(10, 2),
    MontoMinimoDeposito         decimal(10, 2),
    MontoMaximoDeposito         decimal(10, 2)
)
go

SET IDENTITY_INSERT DetalleProductoFinanciero ON
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (1, 1, 5, null, null, null, 1500.00, 4580.00);
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (2, 1, 6, null, null, null, 1400.00, 4200.00);
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (3, 1, 6, null, null, null, 1100.00, 4500.00);
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (4, 2, 6, 4000, 1000.00, 99001.00, null, null);
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (5, 2, 5, 4000, 1000.00, 10000.00, null, null);
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (6, 3, 6, null, null, null, 1000.00, 79000.00);
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (7, 3, 5, null, null, null, 1000.00, 80000.00);
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (8, 4, 5, 500, 1000.00, 8000.00, null, null);
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (9, 4, 6, 500, 1000.00, 12000.00, null, null);
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (10, 5, 5, 500, 1000.00, 52000.00, null, null);
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (11, 5, 6, 500, 1000.00, 46000.00, null, null);
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (12, 6, 5, null, null, null, 1000.00, 69000.00);
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (13, 6, 6, null, null, null, 1000.00, 69000.00);
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (14, 8, 6, null, null, null, 1000.00, 39000.00);
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (15, 8, 5, null, null, null, 1000.00, 49000.00);
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (16, 9, 5, null, null, null, 1000.00, 20000.00);
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (17, 9, 6, null, null, null, 1000.00, 19000.00);
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (18, 10, 5, 500, 1000.00, 2000.00, null, null);
INSERT INTO test1.dbo.DetalleProductoFinanciero (DetalleProductoFinancieroID, ProductoFinancieroID, TipoMonedaID, IngresoPermitido, MontoMinimoPrestamo, MontoMaximoPrestamo, MontoMinimoDeposito, MontoMaximoDeposito) VALUES (19, 10, 6, 1000, 1000.00, 48000.00, null, null);
SET IDENTITY_INSERT DetalleProductoFinanciero OFF
go

CREATE    VIEW vw_consulta_entidad_producto (ProductoFinancieroId, TipoProductoId, TipoInstitucionId,
    Producto, PathImagen, MonedaId, Moneda, PorcentajeTea, ConsultaEntidadProductoId,
    MontoMinimoDeposito, MontoMaximoDeposito, MontoMinimoPrestamo, MontoMaximoPrestamo, IngresoPermitido,
    PorcentajeComision, PorcentajeSeguro,
    PlazoMinimoDia, PlazoMaximoDia, PlazoMinimoMes, PlazoMaximoMes, Nombre, Descripcion,
    Observacion, DepartamentoId, Ubicacion)
 AS SELECT pf.ProductoFinancieroID,
       pf.TipoProductoID,
       ef.TipoInstitucionID,
       ef.NombreComercial                AS Producto,
       ef.PathImagen,
        pa.ParametroID                    AS MonedaId,
       pa.Valor2                         AS Moneda,
       pf.PorcentajeTea,
       dpf.DetalleProductoFinancieroID AS ConsultaEntidadProductoId,
       dpf.MontoMinimoDeposito,
       dpf.MontoMaximoDeposito,
       dpf.MontoMinimoPrestamo,
       dpf.MontoMaximoPrestamo,
       dpf.IngresoPermitido,
       pf.PorcentajeComision,
       pf.PorcentajeSeguro,
       pf.PlazoMinimoDia,
       pf.PlazoMaximoDia,
       pf.PlazoMinimoMes,
       pf.PlazoMaximoMes,
       pf.nombre,
       pf.descripcion,
       pf.observacion,
       de.DepartamentoID,
       de.nombre                          AS Ubicacion

FROM ProductoFinanciero pf
         JOIN EntidadFinanciera ef ON ef.EntidadFinancieraID = pf.EntidadFinancieraID
         JOIN DetalleProductoFinanciero dpf ON dpf.ProductoFinancieroID = pf.ProductoFinancieroID
         JOIN Parametro pa ON pa.ParametroID = dpf.TipoMonedaID
         JOIN Departamento de ON de.DepartamentoID = ef.DepartamentoID
go

CREATE    VIEW vw_consulta_movimiento(ProductoFinancieroId, Nombre, FechaRegistro, EntidadFinancieraId, NombreComercial, PorcentajeTea,
    Moneda, DetalleId, MontoMaximoDeposito, MontoMaximoPestamo, PlazoMaximoMes, Activo) as
	SELECT pf.ProductoFinancieroID,
       pf.Nombre,
       pf.FechaRegistro,
       ef.EntidadFinancieraID,
       ef.NombreComercial,
       pf.PorcentajeTea,
       p.Valor2                          AS moneda,
       dpf.DetalleProductoFinancieroID AS id_detalle,
       dpf.MontoMaximoDeposito,
       dpf.MontoMaximoPrestamo,
       pf.PlazoMaximoMes,
       pf.activo
FROM ProductoFinanciero pf
         JOIN EntidadFinanciera ef ON ef.EntidadFinancieraID = pf.EntidadFinancieraID
         JOIN DetalleProductoFinanciero dpf ON dpf.ProductoFinancieroID = pf.ProductoFinancieroID
         JOIN Parametro p ON p.ParametroID = dpf.TipoMonedaID
go


