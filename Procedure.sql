create PROCEDURE Insertar_Guia(IN Nombre_Guia varchar(50), IN Documento text, IN Multimedia blob)
insert into guias(
GuiNombreGuia,
GuiDocumento,
GuiMultimedia
)values(
Nombre_Guia,
Documento,
Multimedia);

create PROCEDURE Insertar_Noticia(IN Nombre_Noticia varchar(50), IN Documento text, IN Multimedia blob)
insert into Noticias(
NotNombreNoticia,
NotDocumento,
NotMultimedia
)values(
Nombre_Noticia,
Documento,
Multimedia);
	
drop procedure Insertar_Guia;
drop procedure Insertar_Noticia;