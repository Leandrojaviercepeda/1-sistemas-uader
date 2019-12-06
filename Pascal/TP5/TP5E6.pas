Program TP5E6;
uses crt;
var i,ac_a,ac_ast:integer;
carac:char;
begin
ac_a:=0;
ac_ast:=0;
          for i:= 1 to 8 do
          begin
            writeln('Ingrese un caracter');
            readln(carac)
                if(carac = '*')then
                begin
                  ac_ast:=ac_ast+1;
                end
                else
                if(carac=a)then
                begin
                  ac_a:=ac_a+1;
                end;
          end;
          writeln('La cantidad de caracteres "a" es: ',ac_a);
          writeln('La cantidad de caracteres "*" es: ',ac_ast);
readkey;
end.
