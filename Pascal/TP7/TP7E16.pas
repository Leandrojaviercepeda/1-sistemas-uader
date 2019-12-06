//16. Dado un texto que finaliza en punto, se pide:
//? la posición inicial de la palabra más larga.
//? la longitud del texto.
//? cuantas palabras con una longitud entre 8 y 16 caracteres poseen más de tres veces la vocal “a”.
//Nota:
//- Las palabras pueden estar separadas por uno o más espacios en blanco.
//- Pueden haber varios espacios en blanco antes de la primera palabra y también después de la última.
//- Se considera que una palabra finaliza cuando se encuentra un espacio en blanco o un signo de puntuación. 

Program TP7E16;
uses crt;
const n=1000;
type t_vector=array[1..n] of char;
var vector:t_vector;
    posi,long_texto,contpala,lim:integer;
    texto:string;

    
    Procedure inicializar (var v:t_vector);
    var i:integer;
    begin
         i:=0;
         for i:=1 to n do
         begin
              v[i]:=' ';
         end;
    end;

    procedure cargar(var v:t_vector;var l:integer);
    var i:integer;
        texto:string;
    begin
         writeln('Ingrese un texto.');
         readln(texto);
         for i:=1 to length(texto) do
         begin
              v[i]:=v[i];
              l:=l+1;
         end;
    end;

    procedure pal_l(var v:t_vector;l:integer;var pi:integer;var longt:integer;var cp:integer);
    var i,cc,ca:integer;
    begin
         cc:=0;
         pi:=0;
         longt:=0;
         cp:=0;
         longt:=l;
         for i:=1 to l-1 do
         begin
              if (v[i]<>' ') then
              begin
                   if cc=0 then
              begin
                   pi:=i;
                   cc:=cc+1;
              end;
              if (v[i]='a') or (v[i]='A') then
              begin
                   ca:=ca+1;
              end;
              if cc>=8 and cc<=16 then
              begin
                  if ca>3 then
              begin
                   cp:=cp+1;
              end;
         end;
    end;

begin
     inicializar(vector);
     lim:=0;
     Cargar(vector,lim);
     pal_l(vector,l,posi,long_texto,contpala);
     writeln('La posición inicial de la palabra más larga es: ',posi);
     writeln('La longitud del texto es de: ',long_texto,' caracteres.');
     writeln('La cantidad de palabras con una longitud entre 8 y 16 caracteres poseen más de tres veces la vocal “a” es de: ',contpala,'.');
readkey;
end.
