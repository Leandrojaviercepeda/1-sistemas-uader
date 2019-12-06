program TP5E23;
USES crt;
var num,min,max:integer;
begin
     writeln('Ingrese un numero');
     readln(num);
     min:=num;
     max:=num;
      while(num<>0)do
       begin
         if (num>max) then
         begin
           max:=num;
         end
         else //num<min
         begin
           min:=num;
         end;
        writeln('Para finalizar ingrese 0');
        readln(num);
      end;
      writeln('El rango es: ',max-min);
readkey;
end.
