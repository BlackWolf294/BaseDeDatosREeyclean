create table Guias(
GuiCodigo int auto_increment not null,
GuiNombreGuia varchar(50) not null,
GuiDocumento text not null,
GuiMultimedia blob,
GuiSeccion enum("Guia") not null,
GuiUsuario Int not null,
GuiFecha datetime default now(),
primary key(GuiCodigo),
foreign key(GuiUsuario) references Usuario(UsCodigo)
);

create table Noticias(
NotCodigo int auto_increment not null,
NotNombreNoticia varchar(50) not null,
NotDocumento text not null,
NotMultimedia blob,
NotReferencia varchar(100),
NotSeccion enum("Noticia") not null,
NotUsuario Int not null,
NotFecha datetime default now(),
primary key(NotCodigo),
foreign key(NotUsuario) references Usuario(UsCodigo)
);

create table Pagina_Principal(
PPCodigo int auto_increment not null,
PPSeccion enum("Guia","Noticia","Publicacion","PR") not null,
PPNombre Varchar(50),
PPCodigoPub int,
PPFecha datetime not null,
primary key(PPCodigo)
);

Create table usuario(
UsCodigo int auto_increment not null,
UsNombre varchar(100) not null,
UsTipoDoc enum("CC","CE","TI") not null,
UsNumDoc varchar(10) not null,
UsCiudad enum("Santander","Puerto Tejada") not null,
primary key(UsCodigo)
);

drop table Pagina_Principal, Guias, Noticias;
