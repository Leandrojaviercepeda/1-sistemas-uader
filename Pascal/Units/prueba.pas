unit prueba;
interface
uses crt;
const n=255;
type t_vector=array[1..n] of integer;


Procedure inicializar (var v:t_vector);
procedure cargar (var v:t_vector;var l:byte);
procedure listado(var v:t_vector;l:byte);

var 
vector:t_vector;
lim:byte;
		
implementation



    Procedure inicializar (var v:t_vector);
    var i:byte;
    begin
         i:=0;
         for i:=1 to n do
         begin
              v[i]:=0;
         end;
    end;

    procedure cargar (var v:t_vector;var l:byte);
    var  aux:char;
         num:integer;
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
              clrscr;
         end;
    end;

   procedure listado(var v:t_vector;l:byte);
   var i:byte;
   begin
        for i:=1 to l do
        begin
             writeln(v[i]);
        end;
   end;

begin
     lim:=0;
     inicializar(vector);
     cargar(vector,lim);
     listado(vector,lim);

readkey
end.

