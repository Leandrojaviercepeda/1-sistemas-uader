Program TP5EJ4;
uses crt;
var i, num, numrep: integer;
begin
     writeln ('Ingrese un nro');
     readln (num);
     writeln ('Ingrese cuantas veces quiere mostrar el nro');
     readln (numrep);
     for i:= 1 to numrep do
     begin
         writeln (num);
     end;
     readkey;
end.
