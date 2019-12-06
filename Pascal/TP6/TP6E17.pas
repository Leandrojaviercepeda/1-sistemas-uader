program TP5E17;
uses crt;
var  numero,resultado:integer;

     procedure sum(num:integer;var res:integer);
     var s:integer;
     begin
          res:=0;
          for s:=1 to num do
          begin
              res:=res+s;
          end;
     end;

begin
     writeln('Ingrese el numero hasta el que desea realizar la suma.');
     readln(numero);
     sum(numero,resultado);
     writeln('El resultado de la suma es: ',resultado);

readkey;
end.
