//Codificar un programa que acepte los valores de ventas de una librería en el año 2016.
//Se pide:
//A- Definir la estructura capaz de almacenar dichas ventas.
//B- Cual fue la venta en el mes 10.
//C- Cual fue el promedio de ventas de ese año.
//D- En que mes se produjo la mayor venta y de cuanto fue. E- Ídem para la menor.

Program TP7E11;
uses crt;
const n=100000;
type t_vector=array[1..n] of integer;
var vector,vectormes:t_vector;
    mesmav,mesmev,lim:integer;
    ventasm10,promediova,menorv,mayorv:real;

    Procedure inicializar (var v:t_vector);
    var i:integer;
    begin
         i:=0;
         for i:=1 to n do
         begin
              v[i]:=0;
         end;
    end;

    Procedure inicializarmes (var vm:t_vector);
    var i:integer;
    begin
         i:=0;
         for i:=1 to 12 do
         begin
              vm[i]:=0;
         end;
    end;

    procedure cargar (var v,vm:t_vector;var l:integer);
    var  aux:char;
         m,num:integer;

    begin
         for m:=1 to 12 do
         begin
              writeln('Ventas mes ',m,'.');
              l:=0;
              aux:='s';
              while ((aux<>'n') and (l<=n)) do
              begin
                   writeln('ingrese un numero.');
                   readln(num);
                   l:=l+1;
                   v[l]:=num;
                   vm[m]:=v[l];
                   writeln('Para finalizar presione "n".');
                   readln(aux);
              end;
         end;
    end;

    procedure promediovanual(var vm:t_vector;var pva:real);
    var m:integer;
    begin
         pva:=0;
         for m:=1 to 12 do
         begin
              pva:=pva+vm[m];
              pva:=(pva/m);
         end;
    end;

    procedure ventamayorymenor(var vm:t_vector;var mev:real;var mav:real;var mmev:integer;var mmav:integer);
    var m:integer;
    begin
         mav:=0;
         mev:=100000000000;
         mmav:=0;
         mmev:=0;
         for m:=1 to 12 do
         begin
              if (mav<vm[m]) then
              begin
                   mav:=vm[m];
                   mmav:=m;
              end;
              if (mev>vm[m]) then
              begin
                   mev:=vm[m];
                   mmev:=m;
              end;
         end;

    end;

    procedure ventasmes10(var vm:t_vector;var vm10:real);
    var m:integer;
    begin
         vm10:=0;
         for m:=1 to 12 do
         begin     
              if m=10 then
              begin
                   vm10:=vm[10];
              end;
         end;
    end;


begin
     inicializar(vector);
     inicializarmes(vectormes);
     cargar(vector,vectormes,lim);
     promediovanual(vectormes,promediova);
     ventamayorymenor(vectormes,menorv,mayorv,mesmev,mesmav);
     ventasmes10(vectormes,ventasm10);
     writeln('La venta en el mes 10 es: ',ventasm10:2:2);
     writeln('El promedio de ventas anual es de: %',promediova:2:2);
     writeln('La mayor venta se produjo en el mes ',mesmav,' y su total es: $',mayorv:2:2);
     writeln('La menor venta se produjo en el mes ',mesmev,' y su total es: $',menorv:2:2);

readkey;
end.
