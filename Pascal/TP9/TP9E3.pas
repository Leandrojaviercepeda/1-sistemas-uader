{
Se desea realizar un programa que lea una lista de letras minúsculas y:
que las visualice
que las ordene en modo decreciente
que visualice la lista ordenada
que busque si la ‘z’ está en la lista.
}
Program T9PE3;
uses crt;
const n=250;
type t_vector=array[1..n] of char;
var vector:t_vector;
    lim:byte;
    buscado,r_buscado:char;

    Procedure inicializar (var v:t_vector);
    var i:byte;
    begin
         i:=0;
         for i:=1 to n do
         begin
              v[i]:=' ';
         end;
    end;

    procedure cargar (var v:t_vector;var l:byte);
    var  aux:byte;
         letra:char;
    begin
         aux:=1;
         while ((aux<>0) and (l<=n)) do
         begin
              writeln('Ingrese una letra.');
              readln(letra);
              l:=l+1;
              v[l]:=letra;
              writeln('Para finalizar presione "0".');
              readln(aux);
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

    procedure decrementar(var v:t_vector;l:byte);
    var i,j:byte;
        aux:char;
    begin
         for i:=2 to l do
         begin
              j:=i-1;
              aux:=v[i];
              while ((j>0) and (v[j]>aux)) do
              begin
                   v[j+1]:=v[j];
                   j:=j-1;
              end;
              v[j+1]:=aux;
         end;
    end;


    procedure invertir(var v:t_vector;l:integer);
    var i:integer;
        aux:char;
    begin
         i:=1;
         while (i<l) do
         begin
              aux:=v[l];
              v[l]:=v[i];
              v[i]:=aux;
              i:=i+1;
              l:=l-1;
         end;
    end;

    procedure pos_busqueda(var v:t_vector;l:byte;busc:char;var r_busc:char);
    var aux:byte;
    begin
         aux:=0;
         r_busc:=' ';
         while (aux<l) and (r_busc=' ') do
         begin
              aux:=aux+1;
              if v[aux]=busc then
              r_busc:=v[aux];
         end;
    end;

begin
     lim:=0;
     buscado:='z';
     inicializar(vector);
     cargar(vector,lim);
     write('Lista de letras ingresadas: ');
     lista(vector,lim);
     decrementar(vector,lim);
     invertir(vector,lim);
     writeln(' ');
     write('Lista de letras decrementada: ');
     lista(vector,lim);
     writeln(' ');
     pos_busqueda(vector,lim,buscado,r_buscado);

     if (r_buscado=buscado)then
     begin
          write('La letra "z" es parte de la lista.');
     end
     else
     begin
          write('La letra "z" no es parte de la lista.');
     end;




readkey;
end.
