{Se leen dos listas de Números enteros A y B de 10 y 6 elementos respectivamente. Se desea:
a- Ordenar c/u de las listas.
B- Crear una lista C por intercalación de A y B.
c- Localizar si existe en C, el Nº 255, visualizar el mensaje ‘Existe’ o ‘No existe’ según corresponda.
}

Program T9PE4;
uses crt;
const n=100;
type t_vector=array[1..n] of integer;
var vectora,vectorb,vectorc:t_vector;
    lim1,lim2,lim3:byte;
    buscado,r_busqueda:integer;

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
         num:byte;
    begin
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
    var i,j:byte;
        aux:integer;
    begin
         for i:=2 to l do
         begin
              j:=j-1;
              aux:=v[i];
              while (j>0) and (v[j]>aux) do
              begin
                   v[j+1]:=v[j];
                   j:=j-1;
              end;
              v[j+1]:=aux;
         end;
    end;

    procedure suma_v3 (var va,vb,vc:t_vector;l1,l2:byte;var l3:byte);
    var i,j:byte;
    begin
         l3:=l1+l2;
         i:=1;
         j:=1;
         for i:=1 to l1+l2 do
         begin
              if((i mod 2)<>0)and(j<=l1) then
              begin
                   vc[i]:=va[j];
                   j:=j+1;
              end;
         end;
         i:=1;
         j:=1;
         for i:=1 to l1+l2 do
         begin
              if((i mod 2)=0)and(j<=l2)then
              begin
                   vc[i]:=vb[j];
                   j:=j+1;
              end;
         end;
    end;

    procedure busqueda(var v:t_vector;l3:byte;busc:integer;var r_busc:integer);
    var aux:byte;
    begin
         aux:=0;
         r_busc:=0;
         while (aux<l3) and (r_busc=0) do
         begin
              aux:=aux+1;
              if v[aux]=busc then
              begin
                   r_busc:=v[aux];
              end;
         end;
    end;

    procedure lista(var v:t_vector;l:byte);
    var i:byte;
    begin
         for i:=1 to l do
         begin
              write(v[i]);
              write(' ');
         end;
    end;

begin
     lim1:=0;
     lim2:=0;
     buscado:=255;
     inicializar(vectora);
     inicializar(vectorb);
     inicializar(vectorc);
     writeln('Carga de lista A.');
     cargar(vectora,lim1);
     writeln('Carga de lista B.');
     cargar(vectorb,lim2);
     ordenar(vectora,lim1);
     ordenar(vectorb,lim2);
     writeln;
     writeln('Lista A: ');
     lista(vectora,lim1);
     writeln;
     writeln('Lista B: ');
     lista(vectorb,lim2);

     suma_v3(vectora,vectorb,vectorc,lim1,lim2,lim3);
     writeln;
     writeln('Lista C: ');
     lista(vectorc,lim3);
     writeln;
     busqueda(vectorc,lim3,buscado,r_busqueda);

     if (r_busqueda=buscado) then
     begin
          writeln('Existe.');
     end
     else
     begin
          writeln('No existe.');
     end;


readkey;
end.
