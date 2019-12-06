program TP5E26;
uses crt;
var num_neg,ac_numtot,n,num,Ac_npmn,Ac_npmnmuci:Real;
begin
Ac_npmn:=0;
Ac_npmnmuci:=0;
      Writeln('Ingrese un Número Para iniciar la operacion');
      readln(num);
    while(num<>num_neg)and(num<>n)do
     begin
          n:=0;
          num_neg:=0;
          ac_numtot:=ac_numtot+1;
          if((num mod 2=0)<n)then
          begin
               Ac_npmn:=Ac_npmn+1;
          end
          else
              if (num mod 2=0)and (num<n)and(num mod 5=0)then
              begin
                   Ac_npmnmuci:=Ac_npmnmuci+1;
              end;
          writeln('Para continuar ingrese un numero');
          readln(num);
          writeln('Para finalizar ingrese un numero negativo','y un numero');
          readln(num_neg)and(n);
    end;
    writeln ('Los numeros pares menores que',n,'fueron: ',ac_npmn);
    writeln ('Los numeros menores que, ',n,' ,y multiplos de 5 son: ',Ac_npmnmuci);
    writeln ('El porcentaje de los multiplos de 5 sobre el total de numeros pares es:% ',(Ac_npmnmuci*100)/ac_npmn);
    writeln ('El porcentaje de los multiplos de 5 sobre el total de numeros leidos:% ',(Ac_npmnmuci*100)/ac_numtot);
    writeln ('El porcentaje de los numeros pares sobre el total de los leidos es:% ',(ac_npmn*100)/ac_numtot);

readkey;
end.
