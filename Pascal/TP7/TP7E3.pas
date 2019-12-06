program TP7E3;
uses crt;
const n=5;
type t_vector=array[1..n] of integer;
var vector:t_vector;
    lim,s:integer;


    Procedure inicializar (var v:t_vector);
    var i:integer;
    begin
          i:=0;
          for i:=1 to n do
          begin
               v[i]:=0;
          end;
     end;

    procedure cargar(var v:t_vector;var l:integer);
    var num:integer;
    begin
         writeln('Ingrese un numero');
         readln(num);
         while num<>0 and l<n do
         begin
              l:=l+1;
              v[l]:=num;
              writeln('Ingrese un numero si desea continuar, de lo contrario ingrese 0.');
              readln(num);
         end;
    end;

    procedure sumatoria(var v:t_vector;var suma:integer;l:integer);
    var i:integer;
    begin
         suma:=0;
         for i:=1 to l do
         begin
              if i mod 2=0 then
              begin
                   suma:=suma+v[i];
              end;
         end;
    end;
begin

     inicializar(vector);
     cargar(vector,lim);
     sumatoria(vector,s);
     writeln('La sumatoria de los numeros en posiciones pares es: ',s);

readkey;
end.
