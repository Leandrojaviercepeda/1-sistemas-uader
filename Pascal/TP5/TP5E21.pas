Program TP5_E21;
uses crt;
Var num,c_num,suma:integer;
tecla:char;
begin
readln(tecla);
c_num:=0;
suma:=0;
        while(tecla<>N)or(tecla<>n)do
        begin
          writeln('Ingrese el numero');
          readln(num);
                     c_num:=c_num+1;
                     suma:=suma+num;
          writeln('Para finalizar presione "n" o "N"');
          readln (tecla);
        end;
writeln('La cantidad de numeros ingresados es: ',c_num);
writeln('La suma de los numeros ingresados es: ',suma);
readkey;
end.
