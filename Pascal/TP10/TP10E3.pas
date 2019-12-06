{Escribir un prg. que cargue y visualice la información de los registros dados en los puntos 1 y 2.}

program TP10E3;
uses crt;
type t_registro=record
     color,modelo,marca,autor,titulo:string;
     puertas:byte;
     precio:real;
     anio,duracion,aniodp:integer;
     end;
var registro1,registro2:t_registro;


    procedure inicializar(var r1,r2:t_registro);
    begin
         with r1 do
         begin
              marca:='';
              modelo:='';
              anio:=0;
              color:='';
              puertas:=0;
              precio:=0;
         end;
         with r2 do
         begin
              titulo:='';
              autor:='';
              aniodp:=0;
              duracion:=0;
         end;
    end;

    procedure cargar(var r1,r2:t_registro);
    begin
         with r1 do
         begin
              Writeln('Ingrese los siguientes datos del automovil: ');
              Write('Marca: ');
              readln(marca);
              Write('Modelo: ');
              readln(modelo);
              Write('Año: ');
              readln(anio);
              Write('Color: ');
              readln(color);
              Write('Cantidad de puertas: ');
              readln(puertas);
              Write('Precio: ');
              readln(precio);
              writeln;
         end;
         with r2 do
         begin
              writeln('Ingrese los siguientes datos segun corresponda: ');
              write('Titulo del disco de Audio: ');
              readln(titulo);
              write('Autor: ');
              readln(autor);
              write('Año de publicacion: ');
              readln(aniodp);
              write('Duracion en segundos: ');
              readln(duracion);
              writeln;
         end;
    end;

    procedure mostrar(var r1,r2:t_registro);
    begin
         with r1 do
         begin
              writeln('Datos del automovil: ');
              Writeln('Marca: ',marca);
              Writeln('Año: ',anio);
              Writeln('Color: ',color);
              Writeln('Cantidad de puertas: ',puertas);
              Writeln('Precio: ',precio:2:2);
              writeln;
         end;
         with r2 do
         begin
              writeln('Titulo del disco de Audio: ',titulo);
              writeln('Autor: ',autor);
              writeln('Año de publicacion: ',aniodp);
              writeln('Duracion en segundos: ',duracion);
              writeln;
         end;
    end;


begin
     inicializar(registro1,registro2);
     cargar(registro1,registro2);
     mostrar(registro1,registro2);


readkey;
end.
