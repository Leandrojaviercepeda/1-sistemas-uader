//Leer un vector de N elementos. Emitir el valor mínimo y la cantidad de veces que se repitió ese valor.
Program TP7E8;
uses crt;
const n=10000;
type t_vector=array[1..n]of integer;
var vector:t_vector;
    lim:integer;

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
        num:integer;
    begin
         l:=0;
         aux:='s';
         while ((aux<>'n') and (l<=n)) do
         begin
              writeln('Ingrese un numero.');
              readln(num);
              l:=l+1;
              v[l]:=num;
              writeln('Para finalizar presione "n".');
              readln(aux);
         end;
    end;

    procedure valor_myc(var v:t_vector;l:integer);
    var i,cnum,vmin:integer;
    begin
         vmin:=10000000;
         for i:=1 to l do
         begin
              if(vmin>v[i])then
              begin
                   vmin:=v[i];

                   if (vmin=v[i]) then
                   begin
                        cnum:=cnum+1;
                   end
              end;
         end;
         writeln('El valor minimo dentro del vector es: ',vmin,' y se repite ',cnum,' veces.');
    end;


begin
      inicializar(vector);
      cargar(vector,lim);
      valor_myc(vector,lim);


readkey;
end.
