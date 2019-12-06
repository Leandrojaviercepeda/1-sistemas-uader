program TP5E10;
uses crt;
var i,serie,n:integer;
begin
serie:=0;
writeln('Ingrese el valor de n');
readln(n);
     for i:=1 to n do
     begin
          serie:=serie+(1/i);
     end;
writeln('El resultado es: ',Serie);
readkey;
end.
