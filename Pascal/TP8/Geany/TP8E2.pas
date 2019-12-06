{Una empresa con 20 sucursales que vende distintos tipos de artículos (30). Se desea acumular cantidad de ventas por sucursal y por artículo.}
Program TP8E2;
uses crt;
const m=2;//Filas
      n=3;//Columnas

type t_matriz=array[1..m,1..n] of integer;
     t_articulos=array[1..n]of integer;
     t_sucursal=array[1..m]of integer;

var matriz:t_matriz;
    vectora:t_articulos;
    vectors:t_sucursal;
    i:byte;

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

    procedure inicializar(var va:t_articulos);
    var i:byte;
    begin
         for i:=1 to n do
         va[i]:=0;
    end;

    procedure inicializar(var vs:t_sucursal);
    var i:byte;
    begin
         for i:=1 to m do
         vs[i]:=0;
    end;

    procedure cargar(var mat:t_matriz);
    var f,c:byte;
    begin
         for f:=1 to m do
         begin
              writeln('Sucursal: ',f);
              for c:=1 to n do
              begin
                   writeln('Ingrese la cantidad para el producto ',c,'.');
                   readln(mat[f,c]);
              end;
              writeln;
         end;
    end;

    procedure ventas_suc(var mat:t_matriz;var vs:t_sucursal);
    var f,c:byte;
    begin
         for f:=1 to m do
         begin
              for c:=1 to n do
              vs[f]:=vs[f]+mat[f,c];
         end;
    end;

    procedure ventas_art(var mat:t_matriz;var va:t_articulos);
    var f,c:byte;
    begin
         for c:=1 to n do
         begin
              for f:=1 to m do
              va[c]:=va[c]+mat[c,f];
         end;
    end;

begin
     i:=0;
     inicializar(matriz);
     inicializar(vectors);
     inicializar(vectora);
     cargar(matriz);
     writeln;

     ventas_suc(matriz,vectors);
     writeln('Lista de ventas por sucursal:');
     for i:=1 to m do
     writeln('La cantidad de ventas de articulos de la sucursal ',i,' es: ',vectora[i]);
     writeln;

     ventas_art(matriz,vectora);
     writeln('Lista de ventas por articulo:');
     for i:=1 to n do
     writeln('La cantidad de ventas del articulo ',i,' es: ',vectors[i]);



readkey;
end.

