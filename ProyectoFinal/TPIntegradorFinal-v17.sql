--Creacion de database, y permiso para que cualquier usuario de la computadora la pueda usar.
use master
go
--drop database TPIFinalClubDeportivo
CREATE DATABASE TPIFinalClubDeportivo
go
ALTER AUTHORIZATION ON DATABASE::TPIFinalClubDeportivo TO sa
go
use TPIFinalClubDeportivo
go

-- TABLAS TABLAS TABLAS TABLAS TABLAS TABLAS TABLAS 

create table canchas(
	codigo_cancha int identity(1,1),
	descripcion_cancha nvarchar(20),
	estado_cancha bit DEFAULT 1 CHECK(estado_cancha=0 or estado_cancha=1),
	
constraint pk_canchas primary key (codigo_cancha)
)
go

create table turnos(
	codigo_turno int identity(1,1),
	codigo_cancha_turno int not null CHECK(codigo_cancha_turno>=1),
	fecha_y_horario_turno datetime not null,
	estado_turno bit DEFAULT 1 CHECK(estado_turno=0 or estado_turno=1),
	
constraint pk_turnos primary key (codigo_turno),
constraint fk_turnos_canchas foreign key (codigo_cancha_turno)
	references canchas (codigo_cancha)
)
go

create table deportes(
	codigo_deporte int identity(1,1),
	nombre_deporte nvarchar(25) not null,
constraint pk_deportes primary key (codigo_deporte),
CONSTRAINT AK_deportes UNIQUE(nombre_deporte)   

)
go

create table personas(
	codigo_persona int identity(1,1),
	dni_persona varchar(10) not null,
	nombre_persona nvarchar(25) not null,
	apellido_persona nvarchar(25) not null,
	direccion_persona varchar(25) not null,
	telefono_persona varchar(25) null,
	
	CONSTRAINT AK_personas UNIQUE(dni_persona),  


constraint pk_personas primary key (codigo_persona)
)
go

create table profesores(
	codigo_profesor int identity(1,1),
	codigo_persona_profesor int not null CHECK(codigo_persona_profesor>=1),
	matricula_profesor varchar(30) not null,
	CBU_profesor varchar(30) not null,
	saldo_profesor money not null CHECK(saldo_profesor>0),
	estado_profesor bit DEFAULT 1 CHECK(estado_profesor=0 or estado_profesor=1),

constraint pk_profesores primary key (codigo_profesor),
constraint fk_profesores_personas foreign key(codigo_persona_profesor)
	references personas(codigo_persona),
   CONSTRAINT AK_profesores UNIQUE(matricula_profesor)   

)
go



create table cursos(
	codigo_curso int identity(1,1),
	codigo_profesor_curso int not null CHECK(codigo_profesor_curso>=1),
	codigo_deporte_curso int not null CHECK(codigo_deporte_curso>=1),
	codigo_cancha_curso int not null,
	descripcion_curso nvarchar(40),
	estado_curso bit DEFAULT 1 CHECK(estado_curso=0 or estado_curso=1),
	horario_inicio datetime not null,
constraint pk_cursos primary key (codigo_curso),
constraint fk_cursos_profesores foreign key(codigo_profesor_curso)
	references profesores(codigo_profesor),
constraint fk_cursos_deportes foreign key(codigo_deporte_curso)
	references deportes(codigo_deporte),
constraint fk_cursos_turnos foreign key(codigo_deporte_curso)
	references turnos(codigo_turno),
constraint fk_cursos_canchas foreign key(codigo_cancha_curso)
	references canchas(codigo_cancha)
)
go

create table usuarios(
	codigo_usuario int identity(1,1),
	codigo_persona_usuario int not null CHECK(codigo_persona_usuario>=1),
	codigo_curso_usuario int not null CHECK(codigo_curso_usuario>=0),
	nombre_usuario varchar(20) not null,
	contrasenia_usuario varchar(20) not null,
	email_usuario varchar(80) not null,
	tipo_usuario varchar(10) null,
	estado_usuario bit CHECK(estado_usuario=0 or estado_usuario=1),

constraint pk_usuarios primary key (codigo_usuario),
constraint fk_usuarios_personas foreign key(codigo_persona_usuario)
	references personas(codigo_persona),
	   CONSTRAINT AK_usuarios UNIQUE(nombre_usuario)   

)
go


create table usuariosXturnos(
	idInscripcion_usXtu int identity(1,1),
	codigo_turno_usXtu int not null CHECK(codigo_turno_usXtu>=1),
	codigo_usuario_usXtu int not null CHECK(codigo_usuario_usXtu>=1),
	estado_usXtu bit CHECK (estado_usXtu=0 or estado_usXtu=1),

constraint pk_usuariosXturnos primary key (idInscripcion_usXtu),
constraint fk_usuariosXturnos_turnos foreign key(codigo_turno_usXtu)
	references turnos(codigo_turno),
constraint fk_usuariosXturnos_usuarios foreign key(codigo_usuario_usXtu)
	references usuarios(codigo_usuario)
)
go

create table usuariosXcursos(
	idInscripcionCurso_usXcu int identity(1,1),
	codigo_usuario_usXcu int not null CHECK(codigo_usuario_usXcu>=1),
	codigo_curso_usXcu int not null CHECK(codigo_curso_usXcu>=0),
	estado_usXcu bit DEFAULT 1 CHECK (estado_usXcu=0 or estado_usXcu = 1)

	constraint pk_usuariosXcursos primary key (idInscripcionCurso_usXcu),
	constraint fk_usuariosXcursos_cursos foreign key (codigo_curso_usXcu)
		references cursos(codigo_curso),
	constraint fk_usuariosXcursos_usuario foreign key (codigo_usuario_usXcu)
		references usuarios(codigo_usuario)
	)
	go

create table cuotas(
	codigo_cuota int identity(1,1),
	codigo_usuario_cuota int not null CHECK(codigo_usuario_cuota>=1),
	importe_cuota money not null,
	fecha_cuota date not null,
	metodopago_cuota varchar(30) not null,
	estado_cuota bit DEFAULT 1 CHECK (estado_cuota=0 or estado_cuota=1),

constraint pk_cuotas primary key (codigo_cuota),
constraint fk_cuotas_usuarios foreign key(codigo_usuario_cuota)
	references usuarios(codigo_usuario)
)
go

-- VISTAS VISTAS VISTAS VISTAS VISTAS VISTAS VISTAS VISTAS

CREATE VIEW vw_canchas
	AS
	SELECT codigo_cancha,descripcion_cancha,estado_cancha
	FROM canchas
	GO

CREATE VIEW vw_turnos
	AS
	SELECT codigo_turno, codigo_cancha_turno, fecha_y_horario_turno, estado_turno
	FROM turnos
	GO

CREATE VIEW vw_deportes
	AS
	SELECT codigo_deporte, nombre_deporte 
	FROM deportes
	GO

CREATE VIEW vw_personas
	AS
	SELECT codigo_persona, dni_persona, nombre_persona, apellido_persona, direccion_persona, telefono_persona
	FROM personas
	GO

CREATE VIEW vw_profesores
	AS
	SELECT codigo_profesor, codigo_persona_profesor, matricula_profesor, CBU_profesor, saldo_profesor, estado_profesor
	FROM profesores
	GO

CREATE VIEW vw_cursos
	AS
	SELECT codigo_curso, codigo_profesor_curso, codigo_deporte_curso, descripcion_curso, estado_curso, horario_inicio
	FROM cursos
	GO

CREATE VIEW vw_usuarios
	AS
	SELECT codigo_usuario, codigo_persona_usuario, codigo_curso_usuario, nombre_usuario, contrasenia_usuario, email_usuario, tipo_usuario, estado_usuario
	FROM usuarios
	GO

CREATE VIEW vw_usuariosXturnos
	AS
	SELECT idInscripcion_usXtu, codigo_turno_usXtu, codigo_usuario_usXtu, estado_usXtu
	FROM usuariosXturnos
	GO

CREATE VIEW vw_usuariosXcursos
	AS
	SELECT idInscripcionCurso_usXcu, codigo_usuario_usXcu, codigo_curso_usXcu, estado_usXcu
	FROM usuariosXcursos
	GO


CREATE VIEW vw_cuotas
	AS
	SELECT codigo_cuota, codigo_usuario_cuota, importe_cuota, fecha_cuota, metodopago_cuota
	FROM cuotas
	GO



--DATOS INICIALES DATOS INICIALES DATOS INICIALES DATOS INICIALES 

insert into canchas(descripcion_cancha,estado_cancha)
	select 'Futbol Interior',1 union
	select 'Futbol Cesped',1 union
	select 'Tenis Exterior1',0 union
	select 'Tenis Exterior2',0 union
	select 'Tenis Exterior3',1 
go

insert into turnos(codigo_cancha_turno,fecha_y_horario_turno,estado_turno)
	select 1,'10/11/2020 15:00:00',1 union
	select 1,'11/11/2020 15:00:00',1 union
	select 2,'10/11/2020 16:00:00',0 union
	select 5,'10/11/2020 15:00:00',1 union
	select 5,'10/11/2020 17:00:00',1
go

insert into deportes(nombre_deporte)
	select 'Tennis' union
	select 'Futbol'
go


insert into personas(dni_persona,nombre_persona,apellido_persona,direccion_persona)
	select '10222333','Unde','Lincuente','Quintana 231' union
	select '10222334','Diego','Maradona','Gandolfo 545' union
	select '10222335','Alberto','Enstein','Munich 1879' union
	select '10222336','Espaider','Mann','Forrest Hill 123' union
	select '10222337','Leon','Messi','Bellamar 5' union
	select '10222338','Arquero','Caranta','Bell Ville 16' union
	select '10222339','Else','Cretario','Entre rios 534' union
	select '10222340','Unpro','Fesor','9 de julio 666'
go

insert into profesores(codigo_persona_profesor,matricula_profesor,CBU_profesor,saldo_profesor,estado_profesor)
	select 7,'10202020-mti','800300400',1000.50,1 union
	select 8,'ussr-123456','900200100',2000.25,0
go



insert into cursos(descripcion_curso,codigo_deporte_curso,codigo_profesor_curso,estado_curso, horario_inicio, codigo_cancha_curso)
	select 'Tenis para Todos',1,1,1,'10/11/2020 17:00:00',1 union
	select 'Futbol 101',2,2,1,'10/11/2020 15:00:00',1
go


insert into usuarios(codigo_persona_usuario,codigo_curso_usuario,nombre_usuario,contrasenia_usuario, email_usuario, tipo_usuario,estado_usuario)
	select 1,0,'adminCero','1234','meow@gmail.com','ADMIN',1 union
	select 2,1,'polacoJerez','pitusas1995','pitusas@gmail.com',Null,1 union
	select 3,1,'sebaperez','contraseniaOriginal','emailoriginal@hotmail.com',Null,1 union
	select 4,1,'usrPablo','12345','pablito@gmail.com',Null,0 union
	select 5,0,'futbolero92','12345','futbolparatodes@outlook.com',Null,0 union
	select 6,0,'pancho101','12345','salchichaalemana@gmail.com',Null,0
go

insert into usuariosxturnos(codigo_turno_usXtu,codigo_usuario_usXtu,estado_usXtu)
	select 3,1,1 union
	select 3,3,1 union
	select 3,2,1
go


insert into cuotas(codigo_usuario_cuota,importe_cuota,fecha_cuota,metodopago_cuota)
	select 2,500,'10/10/2020','MercadoPago' union
	select 2,500,'10/11/2020','MercadoPago' union
	select 3,500,'10/10/2020','Efectivo' union
	select 3,500,'12/12/2020','MercadoPago'
go


-- TRIGGERS TRIGGERS TRIGGERS TRIGGERS TRIGGERS TRIGGERS TRIGGERS TRIGGERS TRIGGERS 

--Activa el usuario si paga una cuota

create trigger tr_actualizarEstadoUsuario on cuotas
	after insert
	as
	begin
	set nocount on;
		update usuarios set estado_usuario = 1
		where codigo_usuario = (select codigo_usuario_cuota from inserted)

	end
go

-- TRIGGERS DE SEGURIDAD


--Esto es para que no entre un turno con una fecha anterior a la de hoy en día
-- Probar si funciona
--create trigger tr_rechazarfechainvalida on turnos
--	after insert
--	as
--	begin
--	set nocount on;
--		declare @fecha datetime
--		select @fecha=fecha_y_horario_turno from inserted
--
--		if datediff(day,getdate(),@fecha)<=0
--		begin
--			RAISERROR('La fecha ingresada ya es anterior a la fecha actual', 16, 1)
--			rollback transaction
--		end
--	end
--go


--Para evitar que no se elimine una cancha, turnos,usuarios o demas.. sino, que ponga su estado en 0

create trigger tr_insteaddeeliminarcanchas on canchas
	instead of delete
	as
	begin
	set nocount on;
		
		if (select estado_cancha from deleted) = 1
		update canchas
		set estado_cancha=0 where codigo_cancha= (select codigo_cancha from deleted)
	end	
go

create trigger tr_insteaddeeliminarturnos on turnos
	instead of delete
	as
	begin
	set nocount on;
		
		if (select estado_turno from deleted) = 1 
		begin
			update turnos
			set estado_turno=0 where codigo_turno= (select codigo_turno from deleted)
		end
	end	
go

create trigger tr_insteaddeeliminarprofesores on profesores
	instead of delete
	as
	begin
	set nocount on;
		update profesores
		set estado_profesor=0 where codigo_profesor= (select codigo_profesor from deleted)
	end
go

create trigger tr_insteaddeeliminarcursos on cursos
	instead of delete
	as
	begin
	set nocount on;
		update cursos
		set estado_curso=0 where codigo_curso= (select codigo_curso from deleted)
	end
go

create trigger tr_insteaddeeliminarusuarios on usuarios
	instead of delete
	as
	begin
	set nocount on;
		update usuarios
		set estado_usuario=0 where codigo_usuario= (select codigo_usuario from deleted)
	end
go

create trigger tr_insteaddeeliminarusuariosXturnos on usuariosxTurnos
	instead of delete
	as
	begin
	set nocount on;
		update usuariosXturnos
		set estado_usXtu=0 where codigo_turno_usXtu = (select codigo_turno_usXtu from deleted)
		and codigo_usuario_usXtu= (select codigo_usuario_usXtu from deleted)
	end
go

create trigger tr_versitodaviahayusuarios on usuariosXturnos
	after update
	as
	begin
	set nocount on;
		if not exists (select 1 from usuariosXturnos where estado_usXtu = 1 and codigo_turno_usXtu = (select codigo_turno_usXtu from inserted))
		begin
				update turnos set estado_turno = 0 where codigo_turno = (select codigo_turno_usXtu from inserted)
				update usuariosXturnos set estado_usXtu = 0 where codigo_turno_usXtu = (select codigo_turno_usXtu from inserted)
		end
	end
go


-- Para que no se puedan eliminar o modificar tablas de la base de datos
create trigger tr_seguridad
	on database for drop_table, alter_table
	as
	begin
	set nocount on;
	raiserror ('No esta permitido borrar o modificar tablas', 16, 1)
	rollback transaction
	end
go







-- PROCEDURES PROCEDURES PROCEDURES PROCEDURES PROCEDURES PROCEDURES PROCEDURES


create procedure mostrarUltimas3CuotasDe
	@Codigousuario int
	as
	select top 3 codigo_cuota,metodopago_cuota,importe_cuota,fecha_cuota from vw_cuotas
	where codigo_usuario_cuota = @Codigousuario
	order by fecha_cuota DESC
go


create procedure actualizarUsuarioAdmin
	@codigo int, @curso int,@nombre_usr varchar(20), @tipo varchar(10), @estado bit, @nombre_prs varchar(25), @apellido_prs varchar(25), @dni_prs varchar(10)
	as
	begin
		set nocount on;
		update usuarios set nombre_usuario = @nombre_usr, codigo_curso_usuario = @curso, tipo_usuario = @tipo, estado_usuario = @estado where codigo_usuario = @codigo
		update personas set nombre_persona = @nombre_prs, apellido_persona = @apellido_prs, dni_persona = @dni_prs where codigo_persona = (select codigo_persona_usuario from usuarios where codigo_usuario = @codigo)
	end
go

create procedure actualizarCanchaAdmin
	@codigo int, @descripcion nvarchar(20), @estado bit
	as
	begin
		set nocount on;
		update canchas set descripcion_cancha = @descripcion, estado_cancha = @estado where codigo_cancha = @codigo
	end
go

create procedure nuevoProfesor
	@nombre varchar(25), @apellido varchar(25) ,@DNI varchar(10), @direccion varchar(25), @telefono varchar(25), @cbu varchar(30), @matricula varchar(30)
	as
	begin
		set nocount on;
		insert into personas (nombre_persona,apellido_persona,dni_persona,direccion_persona,telefono_persona)
		values (@nombre, @apellido, @DNI, @direccion, @telefono)

		insert into profesores(codigo_persona_profesor,CBU_profesor, matricula_profesor,saldo_profesor)
		values((SELECT MAX(codigo_persona) FROM personas),@cbu,@matricula,1)
	end
go
 

create procedure nuevaPersona
	@nombre varchar(25), @apellido varchar(25), @DNI varchar(10), @direccion varchar(25)
	as
	begin
		set nocount on;
		insert into personas (nombre_persona, apellido_persona,dni_persona,direccion_persona)
		values (@nombre, @apellido, @DNI, @direccion)
	end
go

create procedure modificarProfesor
	@ID int,@nombre varchar(25), @apellido varchar(25) ,@DNI varchar(10), @cbu varchar(30), @matricula varchar(30), @saldo money, @estado bit
	as
	begin
		set nocount on;
		update profesores set CBU_profesor = @cbu, matricula_profesor = @matricula,saldo_profesor=@saldo , estado_profesor = @estado
			where codigo_profesor = @ID
		update personas set nombre_persona = @nombre, apellido_persona = @apellido,dni_persona = @DNI
			where codigo_persona = (select codigo_persona_profesor from profesores where codigo_profesor = @ID)
	end
go


--create procedure nuevoCurso 
--	@profe int, @deporte int , @desc nvarchar(40), @horaI date, @turno int, @cancha int
--as
--begin
--	insert into cursos(descripcion_curso,codigo_deporte_curso,codigo_profesor_curso,estado_curso, horario_inicio,codigo_cancha_curso)
--	select @desc,@deporte,@profe,1,@horaI,@turno, @cancha
--end
--go

create procedure nuevoUsuario
	@name varchar(20), @pw varchar(20), @mail varchar(80), @dni varchar(10)
	as
	begin
		set nocount on;
		
		IF NOT EXISTS ( SELECT 1 FROM personas WHERE dni_persona = @dni )
		begin
			insert into personas (dni_persona, nombre_persona, apellido_persona, direccion_persona)
			values (@dni, ' ', ' ', ' ')

			insert into usuarios(codigo_persona_usuario, nombre_usuario, contrasenia_usuario,email_usuario, codigo_curso_usuario, estado_usuario)
			values((SELECT MAX(codigo_persona) FROM personas), @name, @pw, @mail , 0, 0)
		end
	end
go
	


create procedure MostrarTurnosDe
	@usuario varchar(20)
	as
	begin
		SELECT vw_turnos.codigo_turno, vw_turnos.fecha_y_horario_turno, vw_canchas.descripcion_cancha FROM vw_turnos 
		INNER JOIN vw_usuariosXturnos ON vw_usuariosXturnos.codigo_turno_usXtu = vw_turnos.codigo_turno and vw_usuariosXturnos.codigo_usuario_usXtu = (select codigo_usuario from usuarios where nombre_usuario = @usuario) and vw_usuariosXturnos.estado_usXtu = 1
		INNER JOIN vw_canchas ON vw_canchas.codigo_cancha = vw_turnos.codigo_cancha_turno
	end
go

create procedure MostrarCursosDe
	@usuario varchar(20)
	as
	begin
		select idInscripcionCurso_usXcu, descripcion_curso, descripcion_cancha, horario_inicio from usuariosXcursos
		inner join cursos on codigo_curso_usXcu = codigo_curso
		inner join canchas on codigo_cancha_curso = codigo_cancha
		where codigo_usuario_usXcu = (select codigo_usuario from usuarios where nombre_usuario = @usuario) and estado_usXcu = 1
	end
go



create procedure CancelarTurnoDe
	@usuario varchar(20), @codigoTurno int
	as
	begin
		IF EXISTS ( SELECT 1 FROM usuariosXturnos WHERE codigo_usuario_usXtu =  (select codigo_usuario from usuarios where nombre_usuario = @usuario) and codigo_turno_usXtu = @codigoTurno and estado_usXtu = 1)
		begin
			update usuariosXturnos set estado_usXtu = 0 where codigo_usuario_usXtu = (select codigo_usuario from usuarios where nombre_usuario = @usuario) and codigo_turno_usXtu = @codigoTurno
			update turnos set estado_turno = 0 where codigo_turno = @codigoTurno
		end
	end
go

create procedure mostrarHorariosDe
	@cancha int, @dia date
	as
	begin
		select cast(fecha_y_horario_turno as time) as hora  from turnos where codigo_cancha_turno = @cancha and day(fecha_y_horario_turno) = day(@dia) and estado_turno = 1
	end
go

create procedure mostrarHorariosDeCurso
	@cancha int, @dia datetime
	as
	begin
		select cast(horario_inicio as time) as hora from cursos where codigo_cancha_curso = @cancha and day(horario_inicio) = day(@dia) and estado_curso = 1
	end
go

create procedure insertarCurso
	@cancha int, @dia datetime, @profe int, @deporte int, @descr nvarchar(40)
	as
	begin
		insert into cursos (codigo_cancha_curso, horario_inicio, codigo_profesor_curso, codigo_deporte_curso, descripcion_curso, estado_curso)
			values (@cancha, @dia, @profe, @deporte, @descr, 1)
	end
go


create procedure bajarCurso
	@id int
	as
	begin
		update cursos set estado_curso = 0 where codigo_curso = @id and estado_curso = 1
		update usuariosXcursos set estado_usXcu = 0 where codigo_curso_usXcu = @id
	end
go

--create table cursos(
	--codigo_curso int identity(1,1),
	--codigo_profesor_curso int not null CHECK(codigo_profesor_curso>=1),
	--codigo_deporte_curso int not null CHECK(codigo_deporte_curso>=1),
	--codigo_cancha_curso int not null,
	--descripcion_curso nvarchar(40),
	--estado_curso bit DEFAULT 1 CHECK(estado_curso=0 or estado_curso=1),
	--horario_inicio date not null,

create procedure insertarTurno 
	@cancha int, @fecha datetime, @usuario varchar(20)
	as
	begin
		insert into turnos (codigo_cancha_turno, fecha_y_horario_turno,estado_turno) values (@cancha, @fecha,1)
		insert into usuariosXturnos ( codigo_turno_usXtu, codigo_usuario_usXtu, estado_usXtu) values ( (SELECT MAX(codigo_turno) FROM turnos), (select codigo_usuario from usuarios where nombre_usuario = @usuario), 1)
	end
go



create procedure turnosTotalesDe 
	@usuario varchar(20)
	as
	begin
		select COUNT(*) from usuariosXturnos where codigo_usuario_usXtu = (select codigo_usuario from usuarios where nombre_usuario = @usuario)
	end
go

create procedure turnosActivosDe
	@usuario varchar(20)
	as
	begin
		select COUNT(*) from usuariosXturnos where codigo_usuario_usXtu = (select codigo_usuario from usuarios where nombre_usuario = @usuario) and estado_usXtu = 1
	end
go

create procedure cursosTotalesDe 
	@usuario varchar(20)
	as
	begin
		select COUNT(*) from usuariosXcursos where codigo_usuario_usXcu = (select codigo_usuario from usuarios where nombre_usuario = @usuario)
	end
go

create procedure cursosActivosDe
	@usuario varchar(20)
	as
	begin
		select COUNT(*) from usuariosXcursos where codigo_usuario_usXcu = (select codigo_usuario from usuarios where nombre_usuario = @usuario) and estado_usXcu = 1
	end
go

create procedure mostrarUltimasTresCuotasDe
	@usuario varchar(20)
	as
	begin
		select top 3 codigo_cuota,metodopago_cuota,importe_cuota,fecha_cuota from vw_cuotas
		where codigo_usuario_cuota = (select codigo_usuario from usuarios where nombre_usuario = @usuario)
		order by fecha_cuota DESC
	end
go

create procedure mostrarUltimasCuotasDe
	@usuario varchar(20)
	as
	begin
		select codigo_cuota,metodopago_cuota,importe_cuota,fecha_cuota from vw_cuotas
		where codigo_usuario_cuota = (select codigo_usuario from usuarios where nombre_usuario = @usuario)
		order by fecha_cuota DESC
	end
go

create procedure pagarCuota
	@usuario varchar(20), @valor money
	as
	begin
		insert into cuotas (codigo_usuario_cuota, fecha_cuota, importe_cuota, metodopago_cuota, estado_cuota)
		values((select codigo_usuario from usuarios where nombre_usuario = @usuario), GETDATE() , @valor, 'Metodo Pagina', 1)
	end
go

create procedure buscarEstadoDe
	@usuario varchar(20)
	as
	begin
		if exists (select estado_usuario from vw_usuarios
		where codigo_usuario = (select codigo_usuario from usuarios where nombre_usuario = @usuario) and estado_usuario = 1)
		select 'Activo'
		select 'No Activo'
	end
go

create procedure fechaUltimaCuotaDe
	@usuario varchar(20)
	as
	begin
		select top 1 CONVERT(VARCHAR(10), fecha_cuota, 111) from cuotas
		where codigo_usuario_cuota = (select codigo_usuario from usuarios where nombre_usuario = @usuario)
	end
go


create procedure inscribirusuarioacurso
	@usuario varchar(20), @curso int
	as
	begin
		if not exists (select 1 from usuariosXcursos where codigo_curso_usXcu = @curso and codigo_usuario_usXcu = (select codigo_usuario from usuarios where nombre_usuario = @usuario) and estado_usXcu = 1)
		insert into usuariosXcursos (codigo_usuario_usXcu, codigo_curso_usXcu,estado_usXcu)
			values ((select codigo_usuario from usuarios where nombre_usuario = @usuario),@curso,1)
	end
go

create procedure bajarusuarioacurso
	@usuario varchar(20), @inscripcion int
	as
	begin
	if not (select estado_usXcu from usuariosXcursos where codigo_usuario_usXcu = (select codigo_usuario from usuarios where nombre_usuario = @usuario) and idInscripcionCurso_usXcu = @inscripcion)= 0
		update usuariosXcursos set  estado_usXcu = 0 where idInscripcionCurso_usXcu = @inscripcion and codigo_usuario_usXcu = (select codigo_usuario from usuarios where nombre_usuario = @usuario)
	end
go


create procedure deportedelcurso 
	@curso int
	as 
	begin
		select nombre_deporte from deportes
		inner join cursos on codigo_deporte_curso = codigo_deporte and codigo_curso = @curso
	end
go


create procedure profesordelcurso 
	@curso int
	as 
	begin
		select apellido_persona from personas
		inner join profesores on codigo_persona = codigo_persona_profesor
		inner join cursos on codigo_profesor = codigo_profesor_curso and codigo_curso = @curso
	end
go

create procedure horariodelcurso 
	@curso int
	as 
	begin
		select horario_inicio from cursos
		where codigo_curso = @curso
	end
go

create procedure sumarCuotasDesdeHasta 
	@anio int, @mes1 int, @mes2 int
	as
	begin
		select sum(importe_cuota), MONTH(fecha_cuota) from cuotas
		where month(fecha_cuota)>= @mes1 and month(fecha_cuota)<= @mes2 and year(fecha_cuota)= @anio
		group by MONTH(fecha_cuota) 
		order by MONTH(fecha_cuota) desc
	end
go
