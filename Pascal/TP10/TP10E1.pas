{Escribir una declaraci�n de tipo registro que almacene la sig. informaci�n sobre un disco de audio:
t�tulo, autor, a�o de publicaci�n y duraci�n en segundos.}

program TP10E1;
uses crt;
type t_registro=record
     autor,titulo:string;
     duracion,aniodp:byte;
     end;

var rdaudio:t_registro;


    procedure inicializar(var rda:t_registro);
    begin
         with rda do
         begin
              titulo:='';
              autor:='';
              aniodp:=0;
              duracion:=0;
         end;
    end;

    procedure cargar(var rda:t_registro);
    begin
         with rda do
         begin
              writeln('Ingrese los siguientes datos segun corresponda: ');
              writeln('Titulo del disco de Audio.');
              readln(titulo);
              writeln;
              writeln('Autor.');
              readln(autor);
              writeln;
              writeln('A�o de publicacion.');
              readln(aniodp);
              writeln;
              writeln('Duracion en segundos.');
              readln(duracion);
              writeln;
         end;
    end;

    procedure mostrar(var rda:t_registro);
    begin
         with rda do
         begin
              writeln('Titulo del disco de Audio: ',titulo);
              writeln('Autor: ',autor);
              writeln('A�o de publicacion: ',aniodp);
              writeln('Duracion en segundos: ',duracion);
         end;
    end;


begin
     inicializar(rdaudio);
     cargar(rdaudio);
     writeln;
     mostrar(rdaudio);


readkey;
end.
