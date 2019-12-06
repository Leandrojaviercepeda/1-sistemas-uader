Program TP5E11;
uses crt;
var i,numx,numy,cx,cy:integer;
begin
     for i:=1 to 10 do
     begin
          writeln('Ingrese un valor para "x"');
          readln(numx);
          writeln('Ingrese un valor para "y"');
          readln(numy);
                       if(numx>numy)then
                       begin
                            cx:=cx+1;
                       end;
                       if(numy>numx)then
                       begin
                            cy:=cy+1;
                       end;
     end;
writeln('La cantidad de numeros "x" mayores es: ',cx);
writeln('La cantidad de numeros "y" mayores es: ',cy);
readkey;
end.
