//Sea un lote de Números enteros positivos que finaliza con un cero que no debe ser procesado.
// Generar un vector con dichos valores y calcular la productoria de sus componentes.

Program TP7E2;
uses crt;
const n=100;
type t_vector=array[1..n] of integer;
var vector:t_vector;
    ii,productoria:integer;


    procedure inicializar(var v:t_vector);
    var i:integer;
    begin
         for i:=1 to n do
         begin
              v[i]:=0;
         end;
    end;

    procedure cargar (var v:t_vector;var i:integer;var product:integer);
    var  aux:integer;
    begin
         i:=0;
         product:=1;
         writeln('Ingrese un numero entero distinto de "0".');
         readln(aux);
         while (i<aux) and (aux<>0) do
         begin
              i:=i+1;
              v[i]:=aux;
              if (aux>0) then
              begin
                   product:=product*aux;
              end;
              writeln('Para continuar ingrese un numero entero distinto de "0", de lo contrario ingrese "0".');
              readln(aux);
         end;
    end;

begin
     inicializar(vector);
     productoria:=1;
     cargar(vector,ii,productoria);
     writeln('La productoria de los numeros enteros positivos es: ',productoria);

readkey;
end.
