program TP5EFutbol;
uses crt;
var p,mayor,menor,menorcf,h,cgoles,mayordifg,mayorcf,cpenales,cfaltas,cg_ec,goles,penales,faltas,golesec,opc:integer;
eqcont,maximo,e,eq,menorf:String[30];
begin
while opc<>2 do
begin
Textcolor(white);
textbackground(black);
writeln('..........Si desea ejecutar el programa presione 1...........');
Writeln('..........Si desea cerrar el programa presione 2.............');
readln(opc);
clrscr;
       if (opc=1) then
       begin
       mayor:=-1;
       mayordifg:=0;
       mayorcf:=0;
       menorcf:=100;
       menor:=100;
           for h:=1 to 2 do
           begin
                Writeln('Ingrese el nombre de su equipo');
                readln(e);
              for p:=1 to 1 do
              begin
                   cgoles:=0;
                   cpenales:=0;
                   cfaltas:=0;
                   cg_ec:=0;
                   writeln('Ingrese el nombre del Equipo Contrario');
                   readln(eqcont);
                   writeln('Ingrese la cantidad de goles que convirtio el equipo');
                   readln(goles);
                   writeln('Ingrese la cantidad de penales');
                   readln(penales);
                   writeln('Ingrese la cantidad de faltas realizadas por el equipo');
                   readln(faltas);
                   writeln('Ingrese la cantidad de goles del equipo contrario');
                   readln(golesec);
                   cgoles:=cgoles+goles;
                   cpenales:=cpenales+penales;
                   cfaltas:=cfaltas+faltas;
                   cg_ec:=cg_ec+golesec;
                   writeln('El equipo contrario es: ',eqcont);
                   writeln('La catidad que convirtio ',e,' fueron: ',cgoles);
                   writeln('La cantidad de penales fue: ',cpenales);
                   writeln('La cantidad de faltas realizadas es: ',cfaltas);
                   writeln('La cantidad de goles del equipo contrario es: ',cg_ec);
                   Readkey;
                   clrscr;
              end;
               if (mayor<cgoles) then
               begin
                    mayor:=cgoles;
                    maximo:=(e);
               end;
                   if(menor>cgoles)then
                   begin
                        menor:=cgoles;
                   end;
                       if(mayordifg<mayor)then
                       begin
                            mayordifg:=(mayor-menor);
                       end;
                           if(mayorcf<cfaltas)then
                           begin
                                mayorcf:=cfaltas;
                                eq:=e;
                           end;
                               if(menorcf>cfaltas)then
                               begin
                                    menorcf:=cfaltas;
                                    menorf:=e;
                               end;
              
           end;
           Textcolor(7);
           textbackground(4);
           GotoXY(25,1);
           GotoXY(25,1);
           GotoXY(25,1);
           writeln('------>El equipo con mayor cantidad de goles fue ',maximo,' con ',mayor,' goles<--------------');
           GotoXY(25,2);
           GotoXY(25,2);
           GotoXY(25,2);
           writeln('------>El equipo con mayor faltas realizadas fue ',eq,' con ',mayorcf,' faltas<-------------');
           GotoXY(25,3);
           GotoXY(25,3);
           GotoXY(25,3);
           Writeln('------>El equipo ganador de el fair play es ',menorf,' con ',menorcf,' faltas<------------------');
           GotoXY(25,4);
           GotoXY(25,4);
           GotoXY(25,4);
           Writeln('------>El equipo con mayor diferencia de gol fue ',maximo,' con ',mayordifg,' goles a favor<------');
       end
       else
       writeln('Gracias por usar el programa');
       readln;
       end;
readkey;
end.
