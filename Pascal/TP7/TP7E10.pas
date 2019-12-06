//Leer un vector con la edad de un grupo de x cantidad de personas.
//Se pide mostrar la cantidad de jóvenes considerando a una persona joven si su edad esta entre 20 y 40 años.

Program TP7E10;
uses crt;
const n=1000;
type t_vector=array[1..n] of integer;
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
        num:integer;
   begin
        l:=0;
        aux:='s';
        while ((aux<>'n') and (l<=n)) do
        begin
             writeln('Ingrese una edad.');
             readln(num);
             l:=l+1;
             v[l]:=num;
             writeln('Para finalizar presione "n".');
             readln(aux);
        end;
   end;

   procedure edades(var v:t_vector;l:integer);
   var i,cj:integer;
   begin
        cj:=0;
        for i:=1 to l do
        begin
             if ((v[i]>=20) and (v[i]<=40))then
             begin
                  cj:=cj+1;
             end;
        end;
        writeln('La cantidad de personas jovenes es de: ',cj);
   end;



begin
     inicializar(vector);
     cargar(vector,lim);
     edades(vector,lim);

readkey;
end.
