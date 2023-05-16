create trigger Guardar_Guia_En_PP
after insert on Guias
for each row
insert into pagina_principal(
PPNombre,PPSeccion,PPCodigoPub, PPFecha
)
values(
new.GuiNombreGuia,new.GuiSeccion, new.GuiCodigo, now()
);

create trigger Guardar_Noticia_En_PP
after insert on Noticias
for each row
insert into pagina_principal(
PPNombre,PPSeccion,PPCodigoPub, PPFecha
)
values(
new.NotNombreNoticia,new.NotSeccion, new.NotCodigo, now()
);

create trigger Guardar_Publicaion_En_PP
after insert on publicaciones
for each row
insert into pagina_principal(
PPNombre,PPSeccion,PPCodigoPub, PPFecha
)
values(
new.PubEncabezado, new.PubSeccion, new.PubsCodigo, now()
);


drop trigger Guardar_Guia_En_PP;
drop trigger Guardar_Noticia_En_PP;