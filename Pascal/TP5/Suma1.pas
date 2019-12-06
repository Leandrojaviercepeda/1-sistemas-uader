Program Suma;
USES crt;
Var num1,i,s:integer;
Begin
     For i:=1 to 4 do
     Begin
          writln('Ingrese un número');
          readln (Num1);
          s:=(s+num1);
     End;
     writeln('El resultado de la suma es: ',s);
     readkey;
End

