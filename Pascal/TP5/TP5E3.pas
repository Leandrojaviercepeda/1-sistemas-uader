program TP5E3;
uses crt;
var i,max,orden,num:integer;
begin
max:=0;
orden:=0;
readln(num);
max:=num;
writeln('El Orden de n°',num,' es ',orden);
        for i:= 1 to 10 do
        begin
          readln (num);
          orden:=orden+1;
          writeln('El Orden de n°',num,' es ',orden);
        end;
        writeln('El primer valor maximo del conjunto es: ',max);
readkey;
end.
