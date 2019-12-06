//Escribir un programa que invierta el contenido de un arreglo de n Nº enteros,
//tal que el primero se vuelve el último, el segundo el penúltimo, y así sucesivamente.

Program TP7E13;
uses crt;
const n=5;
type t_vector=array[1..n] of integer;
var vector:t_vector;
    lim:integer;

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

    procedure mostraro(var v:t_vector;l:integer);
    var i:integer;
    begin
         write('Vector original: ');
         for i:=1 to l do
         begin
              write(v[i]);
         end;
         writeln(' ');
    end;

    procedure invertir(var v:t_vector;l:integer);
    var i,aux:integer;
    begin
         i:=1;
         while (i<l) do
         begin
              aux:=v[l];
              v[l]:=v[i];
              v[i]:=aux;
              i:=i+1;
              l:=l-1;
         end;
    end;

    procedure mostrari(var v:t_vector;l:integer);
    var i:integer;
    begin
         write('Vector invertido: ');
         for i:=1 to l do
         begin
              write(v[i]);
         end;
    end;


begin
     inicializar(vector);
     cargar(vector,lim);
     mostraro(vector,lim);
     invertir(vector,lim);
     mostrari(vector,lim);


readkey;
end.
