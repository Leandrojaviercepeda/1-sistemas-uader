// Imprimir la media de los elementos que se encuentran en las posiciones pares
//y la media de los elementos que se encuentran en las posiciones impares de un vector numérica.

Program TP7E9;
uses crt;
const n=1000;
type t_vector=array[1..n] of real;
var vector:t_vector;
    lim:integer;

    Procedure inicializar (var v:t_vector);
    var i:integer;
    begin
         i:=0;
         for i:=1 to n do
         begin
              v[i]:=0;
         end;
    end;

    procedure cargar (var v:t_vector;var l:integer);
   var  aux:char;
        num:real;
   begin
        l:=0;
        aux:='s';
        while ((aux<>'n') and (l<=n)) do
        begin
             writeln('ingrese un numero.');
             readln(num);
             l:=l+1;
             v[l]:=num;
             writeln('Para finalizar presione "n".');
             readln(aux);
        end;
   end;

   procedure media(var v:t_vector;l:integer);
   var mp,mi,cp,ci:real;
       i:integer;
   begin
        mp:=0;
        mi:=0;
        ci:=0;
        cp:=0;
        for i:=1 to l do
        begin

             if ((i mod 2)=0) then
             begin
                  mp:=mp+v[i];
                  cp:=cp+1;
             end
             else
             begin
                  mi:=mi+v[i];
                  ci:=ci+1;
             end;
        end;
        writeln('La media de los numeros de posicion par en el vector es: ',(mp/cp):2:2);
        writeln('La media de los numeros de posicion impar en el vector es: ',(mi/ci):2:2);
   end;

begin
      inicializar(vector);
      cargar(vector,lim);
      media(vector,lim);
readkey;
end.
