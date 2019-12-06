Program TP5_E22;
uses crt;
var cont_car: word;
carta,carn1:Integer;
palo,palo_cn1: String[10];
begin
cont_car:=1;
writeln('Saque la primera carta y separela');
writeln('Indique el palo de la carta');
readln(palo_cn1);
Writeln('Indique el numero de la carta');
readln(carn1);
Writeln('Saque la siguiente carta para comparar con la primera');
writeln('Ingrese el palo de la carta');
readln (palo);
writeln('Ingrese el numero de la carta');
readln(carta);
               while (carta<carn1)and(palo<>palo_cn1)do;
               begin
               Writeln('Saque la siguiente carta');
               writeln('Ingrese el palo de la carta');
               readln (palo);
               writeln('Ingrese el numero de la carta');
               readln(carta);
               cont_car:=cont_car+1;
               end;
writeln('La cantidad de cartas extraidas del mazo es: ',cont_car);
readkey;
end.
