program TP5E9;
uses crt;
var num,acnmq,acnmc,acncom,n:integer;
begin
acnmq:=0;
acnmc:=0;
acncom:=0;
     for n:=1 to 10 do
     begin
     writeln('Ingrese un numero');
     readln(num);
                 if(num>0)and(num>15)then
                 begin
                      acnmq:=acnmq+1;
                 end;
                     if(num>0)and(num>50)then
                     begin
                          acnmc:=acnmc+1;
                     end;
                         if(num>0)and(num>25)and(num<45)then
                         begin
                              acncom:=acncom+1;
                         end;
     end;
     writeln('Hay ',acnmq,' Numeros mayores a 15.');
     writeln('Hay ',acnmc,' Numeros mayores a 50.');
     writeln('Hay ',acncom,' Numeros comprendidos entre 25 y 45.');
readkey;
end.
