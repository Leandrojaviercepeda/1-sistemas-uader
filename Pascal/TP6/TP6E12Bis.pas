
program TP6E12Bis;
uses crt;
 type
 t_cadena=string[30];
var numero:integer;
    resultado:T_cadena;
    res:boolean;

                function poi(num:integer):boolean;
                begin
                     if (num mod 2=0) then
                          poi:=true
                     else
                          poi:=false
                end;

begin
     writeln('Ingrese el numero que desea verificar');
     readln(numero);
     res:=poi(numero);
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
