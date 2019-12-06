Program Vectores_Metodos_de_ordenamiento;
uses crt;
const n=1000;
type t_vector=array[1..n] of integer;
var vector:t_vector;
    buscado,lim:integer;

    Procedure inicializar (var v:t_vector);
    var i:integer;
    begin
         i:=0;
         for i:=1 to n do
         begin
              v[i]:=0;
         end;
    end;

    procedure cargar (var v:t_vector;var l:integer);
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

    function pos_busqueda(var v:t_vector;l:integer;busc:integer):byte;
    var aux:byte;
    begin
         aux:=0;
         pos_busqueda:=0;
         while (aux<lim) and (pos_busqueda=0);
         begin
              aux:=aux+1;
              if v[aux]=busc then
              begin
                   pos_busqueda:=aux;
              end;
          end;
    end;


begin
     inicializar(vector);
     cargar(vector,lim);
     read(buscado);
     pos_busqueda(vector,lim,buscado);
     if pos_busqueda<>0 then
     begin
          writeln(pos_busqueda);
     end
     else
     writeln('No esta en el vector.');
     end;
end.
