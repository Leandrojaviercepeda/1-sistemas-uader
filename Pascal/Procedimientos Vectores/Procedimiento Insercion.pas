Program Procedimiento_insercion;
uses crt;
const n=255;
type t_vector=array[1..n] of integer;
var vector:t_vector;
    lim:byte;

    Procedure inicializar (var v:t_vector);
    var i:byte;
    begin
         i:=0;
         for i:=1 to n do
         begin
              v[i]:=0;
         end;
    end;

    procedure cargar (var v:t_vector;var l:byte);
    var  aux:char;
         num:integer;
    begin
         l:=0;
         aux:='s';
         while ((aux<>'n') and (l<=n)) do
         begin
              writeln('ingrese un numero.');
              readln(num);
              l:=l+1;
              v[l]:=num;
              writeln('Para finalizar presione "n".');
              readln(aux);
         end;
    end;

    procedure insercion(var v:t_vector;l:byte);
    var i,j:byte;
        aux:integer;
    begin
         for i:=2 to l do
         begin
              j:=i-1;
              aux:=v[i];
              while (j>0) and (v[j]>aux) do
              begin
                   v[j+1]:=v[j];
                   j:=j-1;
              end;
              v[j+1]:=aux;
         end;
    end;

begin
     lim:=0;
     inicializar(vector);
     cargar(vector,lim);
     insercion(vector,lim);

readkey;
end.
