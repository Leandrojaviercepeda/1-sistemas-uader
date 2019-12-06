program TP6E11;
uses crt;
var unidades,precio,descuento:real;

    Procedure p_descuento(uni:real;precio:real;var desc:real);
    begin
                 if (uni>=500) then
                 begin
                       desc:=desc-(desc/100*0.25);
                 end;
    end;

begin
        writeln('Ingrese la cantidad del producto que desea comprar.');
        readln(unidades);
        writeln('Ingrese el precio del producto');
        readln(precio);
        p_descuento(unidades,precio,descuento);
        writeln('El total a pagar es: $',descuento:5:2);

readkey;
end.
