// Dados dos arreglos A y B ordenados alfabéticamente de cardinalidad m y n respectivamente,
//formar un tercer arreglo C = A + B, también ordenado alfabéticamente.

Program TP7E14;
uses crt;
const n=100;
type t_vector=array[1..n] of char;
var vectora,vectorb,vectorc:t_vector;
    i,lim,lim2,lim3:integer;

    Procedure inicializar (var v:t_vector);
    var i:integer;
    begin
         i:=0;
         for i:=1 to n do
         begin
              v[i]:=' ';
         end;
    end;

    procedure cargar (var v:t_vector;var l:integer);
    var  aux:integer;
         caracter:char;
    begin
         l:=0;
         aux:=1;
         while ((aux<>0) and (l<=n)) do
         begin
              writeln('ingrese un caracter.');
              readln(caracter);
              l:=l+1;
              v[l]:=caracter;
              writeln('Para finalizar presione "0".');
              readln(aux);
         end;
    end;

    procedure sumavector(var va,vb,vc:t_vector;l,l2:integer;var l3:integer);
    var i,j:integer;
    begin
         i:=1;
         for i:=1 to (l+l2) do
         begin
              if i<=l then
              begin
                   j:=1;
                   for j:=1 to l do
                   begin
                        if i=j then
                        begin
                             vc[i]:=va[j];
                        end;
                   end;
              end
              else
              begin
                   j:=1;
                   for j:=1 to l2 do
                   begin
                        if (i=j+l) then
                        begin
                             vc[i]:=vb[j];
                        end;
                   end;
              end;
         end;
         l3:=l+l2;
    end;

    procedure ordenar(var vc:t_vector;l3:integer);
    var i,j:integer;
        aux1,aux2:char;
    begin
         i:=1;
         j:=1;
         For i:=1 to l3 DO
         begin
             For j:=1 to l3-1 DO
             begin
                  If (vc[j] > vc[j+1]) then
                  begin
                       aux1:=vc[j];
                       aux2:=vc[j+1];
                       vc[j]:=aux2;
                       vc[j+1]:=aux1;
                  end;
             end;
         end;
    end;

begin
     inicializar(vectora);
     inicializar(vectorb);
     inicializar(vectorc);
     cargar(vectora,lim);
     writeln('Ya cargaste el primer vector.');
     cargar(vectorb,lim2);
     sumavector(vectora,vectorb,vectorc,lim,lim2,lim3);
     write('Vector desordenado: ');
     for i:=1 to lim3 do
     write(vectorc[i]);
     ordenar(vectorc,lim3);
     write('               ');
     write('Vector ordenado: ');
     for i:=1 to lim3 do
     write(vectorc[i]);

readkey;
end.
