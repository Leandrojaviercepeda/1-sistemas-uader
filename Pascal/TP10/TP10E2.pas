{Realizar la declaraci�n de tipo registro para un autom�vil:
los campos son marca, modelo, a�o, color, N� de puertas y precio.}

program TP10E2;
uses crt;
type t_registro=record
     marca:string;
     modelo:string;
     anio:integer;
     color:string;
     puertas:byte;
     precio:real;
     end;

var registroa:t_registro;


    procedure inicializar(var ra:t_registro);
    begin
         with ra do
         begin
              marca:='';
              modelo:='';
              anio:=0;
              color:='';
              puertas:=0;
              precio:=0;
         end;
    end;

    procedure cargar(var ra:t_registro);
    begin
         with ra do
         begin
              Writeln('Ingrese los siguientes datos del automovil: ');
              Write('Marca: ');
              readln(marca);
              Write('Modelo: ');
              readln(modelo);
              Write('A�o: ');
              readln(anio);
              Write('Color: ');
              readln(color);
              Write('Cantidad de puertas: ');
              readln(puertas);
              Write('Precio: ');
              readln(precio);
         end;
    end;

    procedure mostrar(var ra:t_registro);
    begin
         with ra do
         begin
              writeln('Datos del automovil: ');
              Writeln('Marca: ',marca);
              writeln;
              Writeln('Modelo: ',modelo);
              writeln;
              Writeln('A�o: ',anio);
              writeln;
              Writeln('Color: ',color);
              writeln;
              Writeln('Cantidad de puertas: ',puertas);
              writeln;
              Writeln('Precio: ',precio:2:2);
         end;
    end;


begin
     inicializar(registroa);
     cargar(registroa);
     writeln;
     mostrar(registroa);


readkey;
end.
