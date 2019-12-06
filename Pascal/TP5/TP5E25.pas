Program TP5E25;
uses crt;
var colort:string[15];
c_ap,c_ri,cr,numt:integer;
begin
c_ap:=0;
c_ri:=0;
cr:=0;
writeln('Ingrese el color de la Tarjeta');
readln(colort);
              while (colort<>'Blanco')or(colort<>'blanco')do
               begin
                writeln('Ingrese el color de la tarjeta');
                readln(colort);
                writeln('Ingrese el numero de la tarjeta');
                readln(numt);
                    if(colort='rojo')and(numt div 2<>0)then
                     begin
                      c_ri:=c_ri+1
                     end
                    else //(colort='Azul')and(numt div 2=0)
                     begin
                      c_ap:=c_ap+1
                     end
                    else //(cr:=cr+1)
                     end;
                writeln('Para finalizar escriba "Blanco"')
                readln(tarjeta)
               end;
writeln('La cantidad de tarjetas rojas impares es: ',c_ri);
writeln('La cantidad de tarjetas azules pares es: ',c_ap);
writeln('La cantidad de tarjetas restantes es: ',cr);
readkey
end.
