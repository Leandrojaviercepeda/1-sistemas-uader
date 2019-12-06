Program Suma;
USES CRT;
Var p,s,n1:Integer;
Begin
     s:=0;
     P:=1;
     Readln(n1);
     while n1<>0 do
     begin
          if n1>5 then
          begin
               s:=s+n1;
               p:=p*n1;
          Writeln ('Para finalizar presione 0')
          end;
      readln(n1);
      end;
      writeln ('La suma es: ',s);
      writeln ('El producto es: ',p);
      readkey;
end.
