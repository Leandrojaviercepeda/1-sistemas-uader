//Leer un vector de N elementos y emitir la posición que ocupa el mayor de ellos. Si hay dos o más valores iguales, se debe emitir la posición menor.

Program TP7E7;
uses crt;
const n=100;
type t_vector=array[1..n] of real;
var vector:t_vector;
    lim:integer;
    posicionmayor:integer;

   procedure inicializar(var v:t_vector);
   var i:integer;
   begin
        for i:=1 to n do
        begin
             v[i]:=0;
        end;
   end;

   procedure cargar(var v:t_vector;var l:integer);
   var aux:char;
       num:real;
   begin
        aux:='s';
        writeln('Ingrese un numero');
        readln(num);
        while ((aux<>'n') and (l<=n)) do
        begin
             l:=l+1;
             v[l]:=num;
             writeln('Para finalizar ingrese "n".');
             readln(aux);
             writeln('Ingrese un numero');
             readln(num);
         end;
    end;

    procedure posicion(var v:t_vector;l:integer;var pmayor:integer);
    var i:integer;
        vmayor:real;
    begin
         pmayor:=0;
         vmayor:=0;
         for i:=1 to l do
         Begin
              if vmayor<v[i] then
              begin
                   vmayor:=v[i];
                   pmayor:=i;
              end;
         end;
    end;



begin
     inicializar(vector);
     cargar(vector,lim);
     posicion(vector,lim,posicionmayor);
     Writeln('La posicion del valor mayor es: ',posicionmayor,'.');


readkey;
end.
