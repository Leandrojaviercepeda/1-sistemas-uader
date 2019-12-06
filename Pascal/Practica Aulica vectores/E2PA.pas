{
Se desea cargar un vector de numeros y que la carga termine con un 0.
a.Ordenarlo.
b.Verificar si el numero 40 existe en la lista, mostrar su posicion.
c.Promedio de numeros del vector.
d.Cantidad de negativos y de positivos en la lista.
e.Porcentaje que representan los numeros negativos sobre el total.
}
Program E2PA;
uses crt;
const n=1000;
type t_vector=array[1..n] of integer;
var vector:t_vector;
    buscado,resultado_buscado,posicion_buscado,cantidad_negativos,cantidad_positivos,lim:integer;
    promedio,porcentaje_negativos:real;

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
    var  aux:byte;
         num:integer;
    begin
         aux:=1;
         while ((aux<>0) and (l<=n)) do
         begin
              writeln('ingrese un numero.');
              readln(num);
              l:=l+1;
              v[l]:=num;
              writeln('Para finalizar presione "0".');
              readln(aux);
         end;
    end;

    procedure burbuja_mejorado(var v:t_vector;l:integer);
    var i,aux:integer;
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

    procedure pos_busqueda(var v:t_vector;l:integer;busc:integer;var res_busc:integer;var pos_busc:integer);
    var aux:integer;
    begin
         aux:=0;
         res_busc:=0;
         while (aux<l) and (res_busc=0) do
         begin
              inc(aux);
              if v[aux]=busc then
              begin
                   res_busc:=v[aux];
                   pos_busc:=aux;
              end;
         end;
    end;

    procedure Cant_pos_neg(var v:t_vector;l:integer;var cn:integer;var cp:integer);
    var i:integer;
    begin
         i:=0;
         cn:=0;
         cp:=0;
         for i:=1 to l do
         begin
              if v[i]<0 then
              begin
              inc(cn);
              end
              else
              begin
              inc(cp);
              end;
         end;
    end;

    procedure prom(var v:t_vector;l:integer;var pr:real);
    var i,suma,cn:integer;
    begin
         i:=0;
         pr:=0;
         cn:=0;
         for i:=1 to l do
         begin
              inc(cn);
              suma:=suma+v[i];
         end;
         pr:=(suma div cn);
    end;

    procedure porc_neg(var v:t_vector;l:integer;var pn:real);
    var i,cneg,cn:integer;
    begin
         i:=0;
         cn:=0;
         pn:=0;
         cneg:=0;
         for i:=1 to l do
         begin
              inc(cn);
              if v[i]<0 then
              inc(cneg);
         end;
         pn:=((cneg*100)div cn);
    end;

    procedure mostrar(var v:t_vector;l:integer);
    var i:integer;
    begin
         i:=0;
         for i:=1 to l do
         begin
              write(v[i]);
              write(' ');
         end;
    end;


begin
     lim:=0;
     buscado:=0;
     inicializar(vector);
     cargar(vector,lim);
     burbuja_mejorado(vector,lim);
     writeln;
     write('Vector ordenado: ');
     mostrar(vector,lim);
     writeln;

     pos_busqueda(vector,lim,buscado,resultado_buscado,posicion_buscado);

     writeln('Ingrese el numero que desea buscar en la lista.');
     readln(buscado);
     writeln;
     if (buscado<>resultado_buscado)then
     begin
          writeln('El numero no es parte de la lista.');
     end
     else
     begin
          writeln('El numero ',resultado_buscado,' es parte de la lista y se encuentra en la posicion ',posicion_buscado,'.');
     end;

     prom(vector,lim,promedio);
     writeln('El promedio de numeros del vector es: ',promedio:2:2);

     Cant_pos_neg(vector,lim,cantidad_negativos,cantidad_positivos);
     writeln('La cantidad de numeros negativos es: ',cantidad_negativos,'.');
     writeln('La cantidad de numeros positivos es: ',cantidad_positivos,'.');
     writeln;
     porc_neg(vector,lim,porcentaje_negativos);
     writeln('El porcentaje de numeros negativos es: %',porcentaje_negativos:2:2);

readkey;
end.
