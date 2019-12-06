Program TP5E7;
uses crt;
var suma,i:integer;
begin
suma:=0;
       for i:=300 to 1232 do
       begin
         suma:=suma+i;
       end;
       writeln('La suma de los numeros comprendidos entre 300 y 1232 asciende a: ',suma);
readkey;
end.
