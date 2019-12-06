Program ProcedimientoBusquedaBinaria;
uses crt;
const n=255;
type t_vector=array[1..n] of integer;
var vector:t_vector;
    posicion,lim:byte;
    buscado:integer;

    Procedure inicializar (var v:t_vector;var l:byte);
    var i:byte;
    begin
         l:=0;
         for i:=1 to n do
         begin
              v[i]:=0;
         end;
    end;

    procedure cargar (var v:t_vector;l:byte);
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
         end;
    end;

    procedure ordenar(var v:t_vector;l:byte);
    var i,aux:byte;
        orden:boolean;
    begin
         orden:=false;
         while not(orden) do
         begin
              orden:=true;
              for i:=1 to l-1 do
              begin
                   if v[i]>v[i+1] then
                   orden:=false;
                   aux:=v[i];
                   v[i]:=v[i+1];
                   v[i+1]:=aux;
              end;
         end;
    end;

    Procedure busqueda_binaria (var v:t_vector;l:integer;busc:integer;var pos:byte);
    Var pri,ult,med:integer;
    Begin
         Pri:=1;
         Ult:=l;
         Pos:=0;
         While (pri<=ult) and (pos=0) do
         Begin
              Med:=(pri+ult)div 2;
              If (v[med]=busc) then
              begin
                   Pos:=med;
              end
              Else if (v[med]>busc) then
              begin
                   Ult:=med-1;
              end
              Else
              begin
                   Pri:=med+1;
              End;
         End;
    End;


begin
     buscado:=0;
     inicializar(vector,lim);
     cargar(vector,lim);
     ordenar(vector,lim);
     busqueda_binaria(vector,lim,buscado,posicion);
     writeln('Ingrese el numero que desea buscar.');
     readln(buscado);
     if posicion<>0 then
     begin
          writeln('El numero ',buscado,' esta la lista en la pospicion ',posicion,'.');
     end
     else
     begin
          writeln('El numero ',buscado,' no esta en la lista.');
     end;
readkey;
end.
