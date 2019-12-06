{
Se lee un vector de Números enteros y se desea saber si entre dichos números se encuentra un valor leído previamente.
En caso afirmativo, visualizar su posición en la lista.
Resolver el problema por: a- Búsqueda secuencial.
}

Program TP9E2;
uses crt;
const n=1000;
type t_vector=array[1..n] of integer;
var vector:t_vector;
    buscado,posicion,lim:integer;

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

    procedure busqueda_secuencial(var v:t_vector;l:integer;busc:integer;var pos:integer);
    var i:integer;
    begin
         for i:=1 to l do
         begin
              if (v[i]=busc) then
              begin
                   pos:=i;
              end;
         end;
    end;

    procedure lista(var v:t_vector;l:integer);
    var i:integer;
    begin
         for i:=1 to l do
         begin
              writeln(v[i]);
         end;
    end;




begin
     inicializar(vector);
     cargar(vector,lim);
     writeln('Ingrese el numero que desea buscar.');
     readln(buscado);
     busqueda_secuencial(vector,lim,buscado,posicion);
     writeln('El numero ',buscado,' se encuentra en la posicion ',posicion,' dentro del vector.');
     writeln('Lista de numeros: ');
     lista(vector,lim);





readkey;
end.
