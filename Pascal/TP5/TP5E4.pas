program TP5E4;
uses crt;
var i,num:integer;
caracter:char;
begin
writeln('Ingrese un caracter');
readln(caracter);
writeln('Ingrese un numero');
readln(num);
     for i:=1 to num do
        begin
         writeln(caracter);
        end;
readkey;
end.
