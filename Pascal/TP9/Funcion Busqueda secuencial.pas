//a:covertir procedure busqueda_secuencial a funcion.

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

    function busqueda_secuencial(var v:t_vector;l:integer;busc:integer):integer;
    var i:integer;
    begin
         for i:=1 to l do
         begin
              if v[i]=busc then
              busqueda_secuencial:=i;
         end;
    end;


begin
     inicializar(vector);
     cargar(vector,lim);
     buscado:=0;
     busqueda_secuencial(vector,lim,buscado);


end.
