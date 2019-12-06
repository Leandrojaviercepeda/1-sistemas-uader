{Se tiene una clase de 25 estudiantes, para cada uno se almacenan los sig. datos:
nro
Estudiante, nombre y nota.
Se pide: - Listar los alumnos con sus respetivas notas ordenados.
- Nro. Estudiante con mayor nota.
- Cantidad alumnos que la obtuvieron.
- Nota que obtuvo Lorena Correa.}

Program TP9E10;
uses crt;
const n=25;
type  t_alumno=record
      n_est:byte;
      nombre:string;
      nota:real;
      end;

      t_vector=array[1..n] of t_alumno;
      t_cad=string;

var   vector:t_vector;
      lim:byte;

      procedure inicializar_vector(var v:t_vector;var l:byte);
      var i:byte;
      begin
           for i:=1 to n do
           begin
                with v[i] do
                begin
                     n_est:=0;
                     nombre:='';
                     nota:=0;
                end;
           end;
           l:=0;
      end;

      procedure cargar(var v:t_vector;l:byte);
      var aux:string;
      begin
           writeln('Para comenzar ingrese un nombre');
           readln(aux);
           while ((aux<>'')and(l<=n))do
           begin
                inc(l);
                with v[l] do
                begin
                     readln(n_est);
                     nombre:=aux;
                     readln(nota);
                end;
           readln(aux);
           end;
      end;

      procedure burbuja(var v:t_vector;l:byte);
      var i,j:byte;
          aux:t_alumno;
      begin
           for i:=1 to l-1 do
           begin
                for j:=1 to l-1 do
                begin
                     if v[j]nombre>v[j+1]:nombre then
                     begin
                          aux:=v[j];
                          v[j]:=v[j+1];
                          v[j+1]:=aux
                     end;
                end;
           end;
      end;

      procedure bbin(var v:t_vector;l:byte;buscado:t_cad;var pos:byte);
      var pri,ult,med:byte;
      begin
           med:=0;
           pri:=1;
           ult:=0;
           ult:=l;
           while ((pri<=ult)and(pos=0)) then
           begin
                med:=(pri+ult)div2;
                if v[med].nombre=buscado then
                pos:=v[med].nombre;
                else if v[med].nombre>buscado then
                ult:=med-1;
                else
                pri:=med+1;
           end;
      end;


begin
     inicializar(vector,lim);
     cargar(vector,lim);
     burbuja(vector,lim);
     maximo(vector,lim,max);
     buscado(vector,lim,buscado,resultado_buscado);
     bbin(vector,lim,buscado,posicion);
     if pos<>0 then
     writeln('Existe');
     else
     writeln('No existe');



readkey;
end.
