Program procedimiento_Busqueda_secuencial;
uses crt;
const n=255;
type t_vector=array[1..n] of integer;
var vector:t_vector;
    lim,pospicion:byte;
    buscado:integer;

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

    procedure busqueda_secuencial(var v:t_vector;l:byte;busc:integer;var pos:byte);
    var i:byte;
    begin
         for i:=1 to l do
         begin
              if v[i]=busc then
              begin
                   pos:=i;
              end;
         end;
    end;


begin
     buscado:=0;
     inicializar(vector);
     cargar(vector,lim);
     busqueda_secuencial(vector,lim,buscado,pospicion);

readkey;
end.
