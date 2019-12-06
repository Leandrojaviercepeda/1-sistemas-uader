Program Procedimiento_inicializar;
uses crt;
const m=5;//Filas
      n=5;//Columnas

type t_matriz=array[1..m,1..n] of integer;
var matriz:t_matriz;

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

    procedure mostrar(var mat:t_matriz);
    var f,c:byte;
    begin
         for f:=1 to m do
         begin
              for c:=1 to n do
              begin
                   writeln(mat[f,c]);
              end;
         end;
    end;


begin
     inicializar(matriz);
     cargar(matriz);
     mostrar(matriz);

readkey;
end.
