Program TP5E27;
uses crt;
Var ac_pre,precio:real;
ac_art:integer;
begin
ac_pre:=0;
ac_art:=0;
writeln('Ingrese el precio del prodcto');
readln(precio);
          while(precio<>0)do
           Begin
             ac_art:=ac_art+1;
             ac_pre:=ac_pre+precio;
             readln(precio);
          end;
writeln('El monto total a pagar es: $',ac_pre);
writeln('la cantidad de articulos comprados es: ',ac_art);
readkey;
end.
