//Los tipos de datos booleanos no se pueden mostrar.
program TP6E12;
uses crt;
type t_cadena=string[5]
var numero:integer;
    resultado:t_cadena;

    procedure num (n:integer;var res:t_cadena);
    begin
         if (n mod 2=0) then
         begin
              res:=('Par');
         end
         else
         begin
              res:=('Impar');
         end;
    end;
begin
     writeln('Escriba un numero.');
     readln(numero);
     num(numero,resultado);
     writeln('El numero es ',resultado,'.');

                 if res then
                 begin
                        writeln('El numero es par.');
                 end
                 else
                 begin
                      writeln('El numero es Impar.');
                 end;
readkey;
end.
