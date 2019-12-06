//Leer un arreglo de 20 elementos de tipo carácter. Generar y emitir otro vector B tal que B[i] = A[i]. 
program TP7E6;
uses crt;
const n=5;
type t_vector=array[1..n] of char;
var vectorb,vectora:t_vector;


    procedure inicializarayb(var va,vb:t_vector);
    var i:integer;
    begin
         for i:=1 to n do
         begin
              va[i]:=' ';
              vb[i]:=' ';
         end;
    end;

    procedure cargara(var va:t_vector);
    var i:integer;
    begin
         for i:=1 to n do
         begin
              writeln('Ingrese un caracter.');
              readln(va[i]);
         end;
    end;

    procedure copiar(var vb,va:t_vector);
    begin
         vb:=va;
    end;

    procedure listado(var vb,va:t_vector);
    var i:integer;
    begin
         for i:=1 to n do
         begin
              writeln('Vector A: ',va[i]);
              writeln('Vector B: ',vb[i]);
         end;
    end;


begin
     inicializarayb(vectora,vectorb);
     cargara(vectora);
     copiar(vectorb,vectora);
     clrscr;
     listado(vectorb,vectora);

readkey;
end.
