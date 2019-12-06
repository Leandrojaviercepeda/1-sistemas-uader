//Generar y emitir el vector A = (1,0,1,0,1,0, ... ) de N elementos.

program TP7E4;
uses crt;
const n=100;
type t_vector=array[1..n] of integer;
var vector:t_vector;

    procedure inicializar(var v:t_vector);
    var i:integer;
    begin
         for i:=1 to n do
         begin
               v[i]:=0;
         end;
    end;

    procedure cargar(var v:t_vector);
    var i:integer;
    begin
         for i:=1 to n do
         begin
              if i mod 2=0 then
              begin
                   v[i]:=0;
              end
              else
              begin
                   v[i]:=1;
              end;
         writeln(v[i]);
         end;
    end;

begin
     inicializar(vector);
     cargar(vector);

readkey;
end.
