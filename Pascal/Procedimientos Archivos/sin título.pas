Program Archivos;
uses crt;
const n=2;
type t_registro=record
	campo1:tipo_dato1;
	.
	.
	.
	campo n: tipo_daton;
	end;
	t_archivo=file of t_registro
var
	arch:t_arch;
	
	{operaciones(arch,'c:/...)}
	assign(var logica,var fisica)
	rewrite(arch):={crea un archivo}{Utilizar ioresult}
	reset(arch):={abre un archivo}
	seen(arch,pos):={posiciona el buscador en una determinada posicion dentro del archivo}
	read(arch,reg):={lee un registro de un archivo}
	write(arch,reg):={escribe o graba un registro en un archivo}
	filepos(arch):={devuelve posicion del cursos}
	filesize(arch):={devuelve tamaño}
	eof(arch):={funcion que determina si es fin de archivo}

readkey;
end.	
