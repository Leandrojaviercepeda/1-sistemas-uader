{Dada una matriz rectangular realizar un programa que devuelva el mayor de los elementos contenidos en ella,
considerando solamente aquellos en los cuales la suma de sus subíndices es par. Es decir [1,1], [1,3], [1,5]  [2,2], etc.}

Program TP8E4;
uses crt;
const m=2;//Filas
      n=3;//Columnas

type t_matriz=array[1..m,1..n] of integer;
var matriz:t_matriz;
    e_mayor:integer;

    procedure inicializar(var mat:t_matriz);
    var f,c:byte;
    begin
         for f:=1 to m do
         begin
              for c:=1 to n do
              begin
                   mat[f,c]:=0;//El primer indice maneja filas y el segundo Columnas
              end;
         end;
    end;

    procedure cargar(var mat:t_matriz);
    var f,c:byte;
    begin
         for f:=1 to m do
         begin
              for c:=1 to n do
              begin
                   writeln('Ingrese un numero.');
                   readln(mat[f,c]);
              end;
         end;
    end;

    Procedure elemento_mayor(var mat:t_matriz;var em:integer);
    var f,c:byte;
    begin
         em:=0;
         for f:=1 to m do
         begin
              for c:=1 to n do
              begin
                   if (em<mat[f,c]) and ((f+c)mod 2=0) then
                   em:=mat[f,c];
              end;
         end;
    end;


begin
     e_mayor:=0;
     inicializar(matriz);
     cargar(matriz);
     elemento_mayor(matriz,e_mayor);
     writeln('El elemento mayor de la matriz es: ',e_mayor);


readkey;
end.
