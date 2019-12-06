{Calcular la media de una lista de veinticinco alumnos de una clase de informática con notas en cuatro asignaturas. }

Program TP8E1;
uses crt;
const m=2;//filas
      n=4;//Columnas

type t_matriz=array[1..m,1..n] of real;
     t_vector=array[1..m]of real;
var matriz:t_matriz;
    vector:t_vector;

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
              writeln;
              writeln('Notas del alumno: ',f);
              for c:=1 to n do
              begin
                   writeln('Ingrese la nota ',c,'.');
                   readln(mat[f,c]);
              end;
         end;
    end;

    procedure media_alum(var mat:t_matriz;var v:t_vector);
    var f,c:byte;
        an:real;
    begin
         an:=0;
         for f:=1 to m do
         begin
              for c:=1 to n do
              begin
                   an:=an+mat[f,c];
              end;
              v[f]:=an/n;
              an:=0;
         end;
    end;

    procedure mostrar_v (var v:t_vector);
    var i:byte;
    begin
         for i:=1 to m do
         writeln('La media del alumno ',i,' es: ',v[i]:2:2);
    end;

    function media_tot(var mat:t_matriz):real;
    var f,c:byte;
        acnt:real;
    begin
         media_tot:=0;
         acnt:=0;
         for f:=1 to m do
         begin
              for c:=1 to n do
              begin
                   acnt:=acnt+mat[f,c];
              end;
         end;
         media_tot:=(acnt/(m*n));
    end;

begin
     inicializar(matriz);
     cargar(matriz);
     media_alum(matriz,vector);
     writeln;
     mostrar_v(vector);
     writeln;
     writeln('La media de todas las notas es: ',media_tot(matriz):2:2);


readkey;
end.
