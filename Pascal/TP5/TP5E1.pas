Program TP5_E1;
uses crt;
Var valor1,valor2,i:Integer;
begin
     For i:=1 to 5 do
     Begin
         writeln('Ingrese valor 1');
         Readln (valor1);
         writeln('Ingrese valor 2');
         readln (valor2);
         Writeln ('Valor1: ',valor1);
         Writeln ('Valor2: ',valor2);
                 if (valor1>0) and (valor2>0) then
                 begin
                 writeln('Su promedio es: ',((valor1+valor2)div 2));
                 end;
         end;
readkey;
end.
