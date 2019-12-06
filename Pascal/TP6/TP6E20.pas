program TP6E20;
uses crt;
var numero1,numero2,resultado:real;

    procedure porcentaje(n1:real;n2:real;var res:real);
    begin
         res:=((n1*100)/n2);
    end;

begin
     writeln('Ingrese un numero.');
     readln(numero1);
     writeln('Ingrese un numero.');
     readln(numero2);
     porcentaje(numero1,numero2,resultado);
     writeln('El porcentaje que representa el primer numero respecto del segundo es: %',resultado:2:2);
readkey;
end.
