{Sumar los elementos que están por encima de la diagonal principal de una matriz dada.}

Program TPE7;
uses crt;
const m=3;//Filas
      n=3;//Columnas

type t_matriz=array[1..m,1..n] of integer;
var matriz:t_matriz;
    suma_ed_principal:integer;

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

    Procedure Suma_edp(var mat:t_matriz;var sedp:integer);
    var f,c:byte;
    begin
         sedp:=0;
         for f:=1 to m do
         begin
              for c:=1 to n do
              begin
                   if ((f=c)and(n>=c)) then
                   begin
                        inc(c);
                        if n>=c then
                        sedp:=sedp+mat[f,c];
                   end;
              end;
         end;
    end;

begin
     suma_ed_principal:=0;
     inicializar(matriz);
     cargar(matriz);
     suma_edp(matriz,suma_ed_principal);
     writeln;
     writeln('La suma de los elementos que estan por encima de la diagonal principal es: ',suma_ed_principal);



readkey;
end.
