Program TP6E4;
uses crt;
var n,r:integer;

    procedure factorial(num:integer;var resultado:integer);
    var i:integer;
    begin
         resultado:=1;
         if (num<>0) then
         begin
              for i:=1 to num do
              begin
                   resultado:=resultado*i;
              end;
         end;
    end;
begin
     writeln('Ingrese un numero.');
     readln(n);
     factorial(n,r);
     writeln('El factorial de ',n,' es: ',r);

readkey;
end.
