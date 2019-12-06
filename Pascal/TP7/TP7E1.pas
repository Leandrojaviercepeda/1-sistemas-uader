Program TP6E7;
uses crt;
const n=100;
type t_vector=array[1..n]of real;
var vector:t_vector;
    sumat:real;

     Procedure inicializar (var v:t_vector);
     var i:integer;
     begin
          i:=0;
          for i:=1 to n do
              v[i]:=0;

     end;

   procedure cargar(var v:t_vector);
   var i:integer;
   begin
        for i:=1 to n do
        begin
             writeln('Ingrese un numero');
             readln(v[i]);
        end;
   end;

        procedure sumatoria(var v:t_vector;var sumat:real);
        var i:integer;
        begin
             for i:=1 to n do
             begin
                  sumat:=sumat+v[i];
             end;
        end;



begin
     inicializar(vector);
     cargar(vector);
     sumat:=0;
     sumatoria(vector,sumat);
     writeln('La sumatoria es: ',sumat);

readkey;
end.
