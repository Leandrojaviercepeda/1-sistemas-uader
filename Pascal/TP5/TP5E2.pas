program TP5E2;
uses crt;
var suma,producto,num,i:integer;
begin
     suma:=0;
     producto:=1;
                 for i:= 20 to 500 do
                  begin
                   readln(num);
                   if (num mod 2=0)then
                    begin
                     suma:=suma+num;
                     producto:=producto*num;
                    end;
                  end;
                  writeln('La suma de los numeros pares comprendidos entre 20 y 500 es: ',suma);
                  writeln('El producto de los numeros pares comprendidos entre 20 y 500 es: ',producto);
readkey;
end.
