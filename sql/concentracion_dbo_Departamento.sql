create table Departamento
(
    DepartamentoID int identity
        constraint PK_Departamento
            primary key,
    Nombre         varchar(100),
    Estado         bit
)
go

INSERT INTO concentracion.dbo.Departamento ( Nombre, Estado) VALUES ( N'Lima', 1);
INSERT INTO concentracion.dbo.Departamento ( Nombre, Estado) VALUES ( N'Amazonas', 1);
INSERT INTO concentracion.dbo.Departamento ( Nombre, Estado) VALUES ( N'Arequipa', 1);
INSERT INTO concentracion.dbo.Departamento (Nombre, Estado) VALUES ( N'Apurimac', 1);
INSERT INTO concentracion.dbo.Departamento ( Nombre, Estado) VALUES ( N'Ayacucho', 1);
INSERT INTO concentracion.dbo.Departamento  (Nombre, Estado) VALUES ( N'Cajamarca', 1);
INSERT INTO concentracion.dbo.Departamento ( Nombre, Estado) VALUES ( N'Cusco', 1);
