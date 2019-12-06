Program TP5E8;
uses crt;
var r,resp,ac1,ac2,ac3:integer;
begin
     for r:=1 to 1200 do
     begin
          writeln('Elija la marca');
          readln(resp);
          case resp of
               1:ac1:=ac1+1;
               2:ac2:=ac2+1;
               3:ac3:=ac3+1;
          end;
     end;
     if(ac1>ac2)and(ac1>ac3)then
     begin
     writeln('El numero del sistema preferido es: 1.');
     end
     else
     if(ac2>ac1)and(ac2>ac3)then
     begin
     writeln('El numero del sistema preferido es: 2.');
     end
     else
     if(ac3>ac1)and(ac3>ac2)then
     begin
     writeln('El numero del sistema preferido es: 3.');
     end;
readkey;
end.
