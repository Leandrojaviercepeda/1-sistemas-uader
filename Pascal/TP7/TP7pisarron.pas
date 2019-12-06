//dado un vector con numeros reales determinar su mayorcomponente si existe mas de uno mostrar la cantidad de veces que se repite.

program TP7Pizarron;
uses crt;
const n=5;
type t_vector=array[1..n] of real;
var vector:t_vector;
    mayorcomponente,contadormayor:real;


    procedure inicializar(var v:t_vector);
    var i:integer;
    begin
         for i:=1 to n do
         begin
              v[i]:=0;
         end;
    end;

   procedure cargar(var v:t_vector);
    var i:integer;
    begin
         for i:=1 to n do
         begin
              writeln('Ingrese un numero');
              readln(v[i]);
         end;
    end;

    Procedure mayorcomp(v:t_vector;var mayorc:real);
    var i:integer;
    begin
         mayorc:=0;
         for i:=1 to n do
         begin
              if v[i]>mayorc then
              begin
                   mayorc:=v[i];
              end;
         end;
    end;

    Procedure contmayor(v:t_vector;var cmayor:real);
    var i:integer;
    begin
         cmayor:=0;
         for i:=1 to n do
         begin
              if v[i]=cmayor then
              begin
                   cmayor:=cmayor+1;
              end;
         end;
    end;


begin
     inicializar(vector);
     cargar(vector);
     mayorcomp(vector,mayorcomponente);
     contmayor(vector,contadormayor);
     Writeln('El mayor componente dentro del vector es ',mayorcomponente:2:2,' y la cantidad de veces que se repite es ',contadormayor:2:2);
readkey;
end.
