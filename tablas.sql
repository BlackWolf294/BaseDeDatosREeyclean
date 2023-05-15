create table Guias(
GuiCodigo int auto_increment not null,
GuiNombreGuia varchar(50) not null,
GuiDocumento text not null,
GuiMultimedia blob,
GuiSeccion enum("Guia") not null,
GuiFecha datetime default now(),
primary key(GuiCodigo)
);

create table Noticias(
NotCodigo int auto_increment not null,
NotNombreNoticia varchar(50) not null,
NotDocumento text not null,
NotMultimedia blob,
NotSeccion enum("Noticia") not null,
NotFecha datetime default now(),
primary key(NotCodigo)
);

create table Pagina_Principal(
PPCodigo int auto_increment not null,
PPSeccion enum("Guia","Noticia","Publicacion","PR") not null,
PPNombre Varchar(50),
PPCodigoPub int,
PPFecha datetime not null,
primary key(PPCodigo)
);

drop table Pagina_Principal, Guias, Noticias;
