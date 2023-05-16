create PROCEDURE Insertar_Guia(IN Nombre_Guia varchar(50), IN Documento text, IN Multimedia blob, IN Usuario int)
	insert into guias(
	GuiNombreGuia,
	GuiDocumento,
	GuiMultimedia,
    GuiUsuario
	)values(
	Nombre_Guia,
	Documento,
	Multimedia,
    Usuario);

create PROCEDURE Insertar_Noticia(IN Nombre_Noticia varchar(50), IN Documento text, IN Multimedia blob, in Referencia Varchar(200), IN Usuario int)
	insert into Noticias(
	NotNombreNoticia,
	NotDocumento,
	NotMultimedia,
	NotUsuario,
	NotReferencia
	)values(
	Nombre_Noticia,
	Documento,
	Usuario,
	Multimedia,
	Referencia);
	
create PROCEDURE Insertar_Usuario(In nombre varchar(200), In tipo_doc enum("CC","CE","TI"), In Numero_Doc varchar(10), in ciudad enum("Santander","Puerto Tejada"))    
insert into usuario(
UsNombre,
UsTipoDoc,
UsNumDoc,
UsCiudad
)values(
nombre,
tipo_doc,
Numero_Doc,
ciudad
);


drop procedure Insertar_Guia;
drop procedure Insertar_Noticia;
drop PROCEDURE Insertar_Usuario;