program TP6E15;
uses crt;
var digito:integer;
    resultado:string[15];
    procedure digit(d:integer;var res:string[15]);
    begin
         if (d>=0)and(d<=9)then
         begin
              res:=('Es digito.');
         end
            else
                begin
                res:=('No es digito.');
            end;
    end;
begin
     writeln('Ingrese un digito.');
     readln(digito);
     digit(digito,resultado);
     writeln(resultado);
readkey;
end.
