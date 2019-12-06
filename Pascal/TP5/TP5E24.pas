program TP5E24;
uses crt;
var num,factorial,may_mil,i:integer;
begin
     writeln('Ingrese un numero');
     readln(num);
     may_mil:=0;
     factorial:=1;
while(num>0)do
 begin
   if(num>1000)then
    begin
     may_mil:=may_mil+1;
    end;
  writeln('Para finalizar ingrese 0');
  readln(num);
 end;
 writeln('La cantidad es: ',may_mil);
   if (may_mil<20)then
    begin
     for i:=1 to may_mil do
     begin
      factorial:=factorial*i;
     end;
   end;
     writeln('El Factorial es: ',factorial);
readkey;
end.
