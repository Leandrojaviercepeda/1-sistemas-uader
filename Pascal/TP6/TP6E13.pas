Program TP6E13;
uses crt;
var numero:integer;
    resultado:string;

   procedure num(n:integer;var res:string);
   begin
        if (n<=0) then
        begin
             res:=('N');
        end
        else
        begin
             res:=('P');
        end;
   end;

begin
     writeln('Ingrese un numero.');
     readln(numero);
     num(numero,resultado);
     writeln(resultado);

readkey;
end.
