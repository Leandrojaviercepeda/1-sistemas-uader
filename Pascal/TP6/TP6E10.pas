program TP5E10;
uses crt;
var cadena1,cadena2:string;
respuesta:integer;

    procedure cad1(c1:string;c2:string;var result:integer);
    begin
         result:=0;

              if (length(c1))>(length(c2)) then
              begin
                   result:=length(c1);
              end
              else
              begin
                   result:=length(c1);
              end;
    end;
begin
     writeln('Ingrese la primer cadena de caracteres.');
     readln(cadena1);
     writeln('Ingrese la segunda cadena de caracteres.');
     readln(cadena2);
     cad1(cadena1,cadena2,respuesta);

     if (respuesta=0) then
     begin
          writeln('Las cadenas son iguales.');
     end
     else
     begin
          writeln('La cadena mas larga es: ',respuesta);
     end;
readkey;
end.

