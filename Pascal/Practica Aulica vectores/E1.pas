{
Cargar dos vectores A y B de 45 elementos cada uno.
a.Sumar el elemento 1 del vector A, con el elemento 1 del vector B y asi sucesivamente, almacenando el resultado en un vector C.
b.Ordenar y mostrar el vector C.
c.Solicitar al usuario que ingrese un buscado y en base a ese le devuelva un mensaje si existe o no en la lista. Mostrar la posicion.
}

program E1PA;
uses crt;
const n=2;
type t_vector=array[1..n] of integer;
var vectora,vectorb,vectorc:t_vector;
    lim,buscado,resultado_buscado,posicion_buscado:integer;


    Procedure inicializar(var v:t_vector);
    var i:integer;
    begin
         i:=0;
         for i:=1 to n do
              v[i]:=0;
    end;

    procedure cargar(var v:t_vector;var l:integer);
    var num,i:integer;
    begin
         l:=n;
         for i:=1 to l do
         begin
              writeln('Ingrese un numero.');
              readln(num);
              v[i]:=num;
         end;
    end;

    procedure suma(var va,vb,vc:t_vector;l:integer);
    var i,j:integer;
    begin
         j:=0;
         for i:=1 to l do
         begin
              inc(j);
              vc[i]:=va[j]+vb[j];
         end;
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

    procedure burbuja(var v:t_vector;l:integer);
    var i,aux:integer;
        orden:boolean;
    begin
         orden:=false;
         while not(orden) do
         begin
              orden:=true;
              for i:=1 to l-1 do
              begin
                   if v[i]<v[i+1] then
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

Begin
     lim:=0;
     buscado:=0;
     inicializar(vectora);
     inicializar(vectorb);
     inicializar(vectorc);

     writeln('Carga de vector A.');
     writeln;
     cargar(vectora,lim);

     writeln('Carga de vector B.');
     writeln;
     cargar(vectorb,lim);

     suma(vectora,vectorb,vectorc,lim);
     burbuja(vectorc,lim);

     write('Vector c:');
     mostrar(vectorc,lim);
     writeln;

     pos_busqueda(vectorc,lim,buscado,resultado_buscado,posicion_buscado);
     writeln('Ingrese el numero que desea buscar');
     readln(buscado);

     if (buscado=resultado_buscado) then
     begin
     writeln('Existe y su posicion es: ',posicion_buscado,'.');
     end
     else
     begin
     writeln('No existe.');
     end;

readkey;
end.
