//Leer un vector de 10 elementos reales y emitir las siguientes leyendas según, corresponda:
//“El vector tiene todas sus componentes positivas”
//“El vector tiene componentes negativas”
//“El vector tiene algún cero.”

Program TP7E5;
uses crt;
const n=10;
type t_vector=array[1..n] of real;
var vector:t_vector;
    lim:integer;

    Procedure inicializar(var v:t_vector);
    var i:integer;
    begin
         for i:=1 to n do
         begin
              v[i]:=0;
         end;
    end;

    Procedure cargar(var v:t_vector;var l:integer);
    var aux:char;
        num:real;
    begin
         l:=0;
         aux:='s';
         writeln('Ingrese un numero real.');
         readln(num);
         while ((aux<>'n') and (l<n)) do
         begin
              l:=l+1;
              v[l]:=num;
              writeln('Para continuar ingrese "s", de lo contrario "n".');
              readln(aux);
              writeln('Ingrese un numero real.');
              readln(num);
         end;
    end;

    Procedure leyenda(var v:t_vector;l:integer);
    var i,cp,cn,cc:integer;
    begin
         cp:=0;
         cn:=0;
         cc:=0;
         for i:=1 to l do
         begin
              if v[i]>0 then
              begin
                   cp:=cp+1;
              end
              else if v[i]<0 then
              begin
                   cn:=cn+1;
              end
              else if v[i]=0 then
              begin
                   cc:=cc+1;
              end;
         end;
         if (cp>=l) then
         begin
              writeln('El vector tiene todas sus componentes positivas');
         end
         else if (cc>=1) and (cn>=1)  then
         begin
              writeln('El vector tiene componentes negativas.');
              writeln('El vector tiene algun cero.');
         end
         else if (cn>=1) then
         begin
              writeln('El vector tiene componentes negativas.');
         end
         else if (cc>=1) then
         begin
              writeln('El vector tiene algún cero.');
         end;
    end;


begin
     inicializar(vector);
     cargar(vector,lim);
     leyenda(vector,lim);

readkey;
end.
