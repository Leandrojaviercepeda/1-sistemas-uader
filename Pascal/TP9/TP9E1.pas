{
Leandro Javier Cepeda.
1° Sistemas.
Fundamentos de programacion.

Hacer un algoritmo que:
? Lea una lista de números de teclado que culmina con uno negativo.
? Los ordene en forma creciente y Visualice la lista ordenada.
? Buscar si existe el Nº 27 en la lista.
}
Program TP9E1;
uses crt;
const n=100;
type t_vector=array[1..n] of integer;
var vector:t_vector;
    r_busqueda,buscado,lim:integer;

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
    var  num:integer;
    begin
         num:=0;
         writeln('Ingrese una lista de numeros que finaliza con un numero negativo.');
         readln(num);
         v[l]:=num;
         while ((num>=0) and (l<=n)) do
         begin
              l:=l+1;
              v[l]:=num;
              readln(num);
         end;
    end;

    procedure insercion(var v:t_vector;l:integer);
    var i,j,aux:integer;
    begin
         for i:=2 to l do
         begin
              j:=i-1;
              aux:=v[i];
              while ((j>0) and (v[j]>aux)) do
              begin
                   v[j+1]:=v[j];
                   j:=j-1;
              end;
              v[j+1]:=aux;
         end;
    end;

    procedure listado(var v:t_vector;l:integer);
    var i:integer;
    begin
         for i:=1 to l do
         begin
              write(' ');
              write(v[i]);
         end;
    end;

    procedure pos_busqueda(var v:t_vector;l:integer;busc:integer;var resbuscado:integer);
    var aux:integer;
    begin
         aux:=0;
         resbuscado:=0;
         while (aux<l) and (resbuscado=0) do
         begin
              aux:=aux+1;
              if (v[aux]=busc) then
              begin
                   resbuscado:=busc;
              end;
         end;
    end;

begin
     buscado:=27;
     lim:=0;
     inicializar(vector);
     cargar(vector,lim);
     insercion(vector,lim);
     write('Lista ordenada de numeros: ');
     listado(vector,lim);
     pos_busqueda(vector,lim,buscado,r_busqueda);
     writeln(' ');
     if (r_busqueda=27) then
     begin
          writeln('El numero ',r_busqueda,' aparece en la lista de numeros.');
     end
     else
     begin
         writeln('El numero ',buscado,' no aparece en la lista de numeros.');
     end;

readkey;
end.
