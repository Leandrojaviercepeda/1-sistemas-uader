//Se tienen los datos de los consumos de un restaurante por mesa de un determinado dia, para cada mesa se lee:
//n° de mesa, mozo, cantidad Articulos, descripcion, precio unitario, subtotal.
//Se pide:
//mozo con mayor recaudación (total x mozo).
//total recaudado x mesa.
//Total recaudado x restaurante en el día.
//Emitir ticket por mesa que incluya:
//Total
//precio unitario
//subtotal por articulo.
//mostrar cantidad de gaseosas que se vendieron por dia.
Program Restaurante;
uses crt;
Var mozo,articulo,nmozo_cmr:string;
tecla_dia,tecla_mesa,tecla_ticket,anio,dia,mes,mesa,c_articulo,precioart,tot_gaseosa,tot_xmozo,mozo_cmr,precio_subtotal,tot_xmesa,tot_xdia:integer;

begin

writeln('Para iniciar la facturacion del dia presione "1" de lo contrario presione "0"');
readln(tecla_dia);
Clrscr;
while(tecla_dia<>0)do
begin
     tot_xdia:=0;
     tot_gaseosa:=0;

     writeln('Ingrese el n° del día.');
     readln(dia);
     writeln('Ingrese el mes.');
     readln(mes);
     writeln('Ingrese el año.');
     readln(anio);
     Clrscr;
     writeln('Para iniciar la facturacion de lo vendido por mesa presione "1".');
     readln(tecla_mesa);
     Clrscr;
     while(tecla_mesa<>0)do
     begin
          tot_xmesa:=0;
          tot_xmozo:=0;
          mozo_cmr:=0;

          Writeln('Ingrese el Numero de la mesa.');
          readln(mesa);
          Writeln('Ingrese el nombre de el mozo.');
          readln(mozo);
          Clrscr;
          writeln('Para iniciar un ticket presione "1".');
          readln(tecla_ticket);
          Clrscr;
               while(tecla_ticket<>0)do
               begin
                    writeln('Ingrese el articulo que se vendió.');
                    readln(articulo);
                    writeln('Ingrese la cantidad de dicho articulo.');
                    readln(c_articulo);
                    writeln('Ingrese el precio unitario del Articulo.');
                    readln(precioart);

                    precio_subtotal:=c_articulo*precioart;
                    tot_xmozo:=tot_xmozo+precio_subtotal;
                    tot_xmesa:=tot_xmesa+precio_subtotal;

                    if(articulo='gaseosa')or(articulo='Gaseosa')then
                    begin
                         tot_gaseosa:=tot_gaseosa+c_articulo;
                    end;

                    writeln('Ticket:');
                    writeln('Articulo: ',articulo,' Cantidad: ',c_articulo,' precio unitario: $',precioart,' Subtotal: $',precio_subtotal);
                    writeln('Total: $',tot_xmesa);

                    writeln('Para seguir ingresando articulos presione "1", de lo contrario presione "0".');
                    readln(tecla_ticket);

               end;
               tot_xdia:=tot_xdia+tot_xmesa;

               if(mozo_cmr<tot_xmozo)then
               begin
                    mozo_cmr:=tot_xmozo;
                    nmozo_cmr:=mozo;
               end;

               writeln('El total recaudado en la mesa ',mesa,' es de: $',tot_xmesa);
               Clrscr;
               writeln('Para finalizar la facturacion de lo vendido en esta mesa, y continuar con otra presione "1", de lo contrario presione "0".');
               readln(tecla_mesa);
               Clrscr;
     end;
     writeln('El mozo con mayor recaudacion es: ',nmozo_cmr,' con un total recaudado de: $',mozo_cmr,'.');
     writeln('La cantidad de Gaseosas vendidas en el dia es: ',tot_gaseosa,'.');
     writeln('El total recaudado al dia de la fecha: ',dia,'/',mes,'/',anio,' es de: $',tot_xdia,'.');
     writeln('Para finalizar la facturacion del dia presione "0" de lo contrario presione "1".');
     readln(tecla_dia);
end;

readkey;
end.
