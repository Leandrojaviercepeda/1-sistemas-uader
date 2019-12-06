program TP5E5;
uses crt;
var num,cont_m,i:integer;
begin
cont_m:=0;
            for i:= 1 to 100 do
            begin
             writeln('Ingrese un numero');
             readln(num);
              if((num mod 2)=0)then
              begin
              writeln(num,' es multiplo de dos.');
               cont_m:=cont_m+1;
              end;
            end;
            writeln('Hay ',cont_m,' multiplos de dos');
readkey;
end.
