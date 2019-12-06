

Program TPE;
uses crt;
const n=255;
type t_vector=array[1..n] of integer;
var vector:t_vector;
    lim,posicion_buscado:byte;
    buscado,resultado_buscado:integer;

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

    procedure busqueda(var v:t_vector;l:byte;b:integer;var rb:integer;var pb:byte);
    var aux:byte;
    begin
         aux:=0;
         rb:=0;
         while (aux<l) and (rb=0) do
         begin
              inc(aux);
              if v[aux]=b then
              begin
                   rb:=v[aux];
                   pb:=aux;
              end;
         end;
    end;

begin
     buscado:=0;
     inicializar(vector);
     cargar(vector,lim);
     busqueda(vector,lim,buscado,resultado_buscado,posicion_buscado);

readkey;
end.
