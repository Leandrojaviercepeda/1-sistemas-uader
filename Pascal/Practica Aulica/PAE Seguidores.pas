{Se tienen los datos de los seguidores de una red social, de cada uno se ingresa:
edad, pagina que le gusta (suponer una por usuario), ocupacion.
Se pide:
a- determinar cantidad de seguidores por rango etario(Edad: menor a 13, de 13 a 18, 19 a 25) y cual tiene mayor representatividad en la red social.
b- cantidad de seguidores de la pagina pytonizame.com
c- porcentaje de estudiantes.}

Program PAE_Seguidores;
uses crt;
const n=3;
type  t_seguidores=record
      edad:integer;
      pg:string [50];
      ocupacion:string [20];
      end;
      t_vector=array[1..n]of t_seguidores;

var   vector:t_vector;
      lim:byte;
      cant_sp,mayor_rep,menor_13,de_13a18,de_19a25:integer;
      porcentaje_estudiante:real;

      procedure inicializar(var v:t_vector;var l:byte);
      var i:byte;
      begin
           for i:=1 to n do
           begin
                with v[i] do
                begin
                     edad:=0;
                     pg:='';
                     ocupacion:='';
                end;
           end;
           l:=0;
      end;

      procedure cargar(var v:t_vector;var l:byte);
      var aux:char;
      begin
           write('¿Desea comenzar? "s" o "n" : ');
           readln(aux);
           while (aux<>'n')and(l<=n) do
           begin
                inc(l);
                writeln;
                writeln('Seguidor: ',l);
                with v[l] do
                begin
                     write('Edad: ');
                     readln(edad);
                     write('Pagina que le gusta: ');
                     readln(pg);
                     write('Ocupacion: ');
                     readln(ocupacion);
                end;
                writeln;
                write('¿Desea continuar? "s" o "n" : ');
                readln(aux);
                writeln;
           end;
      end;

      procedure rango_etario(var v:t_vector;l:byte;var mr:integer;var me13:integer;var de13a18:integer;var de19a25:integer);
      var i:byte;
      begin
           mr:=0;
           me13:=0;
           de13a18:=0;
           de19a25:=0;
           for i:=1 to l do
           begin
                if ((v[i].edad)<13) then
                begin
					 me13:=me13+1;
                end
                else if((v[i].edad)>=13) and ((v[i].edad)<=18) then
                begin
					 de13a18:=de13a18+1;
                end
                else if ((v[i].edad)>=19) and ((v[i].edad)<=25) then
				begin
					 de19a25:=de19a25+1;
				end;
           end;
           if ((me13>de13a18) and (me13>de19a25)) then
           begin
           mr:=me13;
           end
           else if  ((de13a18>me13) and (de13a18>de19a25))  then
           begin
           mr:=de13a18;
           end
           else
           begin
           mr:=de19a25;
           end;      
      end;

      procedure cs_pytonizame(var v:t_vector;l:byte;var csp:integer);
      var i:byte;
      begin
           csp:=0;
           for i:=1 to l do
           begin
                if (v[i].pg='https://pythoniza.me/') then
                csp:=csp+1;
           end;
      end;

      procedure porc_est(var v:t_vector;l:byte;var pe:real);
      var ce,i:byte;
      begin
           pe:=0;
           ce:=0;
           for i:=1 to l do
           begin
                if v[i].ocupacion='estudiante' then
                ce:=ce+1;
           end;
           pe:=ce*100/i;
      end;


begin
     inicializar(vector,lim);
     writeln;
     writeln('Datos de los seguidores de una red social:');
     cargar(vector,lim);

     rango_etario(vector,lim,mayor_rep,menor_13,de_13a18,de_19a25);
     writeln;
     writeln('La cantidad de seguidores menores a 13 años es: ',menor_13,'.');
     writeln('La cantidad de seguidores de entre 13 y 18 años es: ',de_13a18,'.');
     writeln('La cantidad de seguidores de entre 19 y 25 años es: ',de_19a25,'.');
     if (menor_13>de_13a18) and (menor_13>de_19a25) then
     begin
		writeln('El rango etario de mayor representatividad en la red social es el de personas menores a 13 años con un total de: ',mayor_rep,' personas.');
     end
     else if (de_13a18>menor_13) and (de_13a18>de_19a25) then
     begin
		writeln('El rango etario de mayor representatividad en la red social es el de personas de entre 13 y 18 años con un total de: ',mayor_rep,' personas.');
     end
     else
     begin
		writeln('El rango etario de mayor representatividad en la red social es el de personas de entre 19 y 25 años con un total de: ',mayor_rep,' personas.');
     end;

     cs_pytonizame(vector,lim,cant_sp);
     writeln;
     writeln('La cantidad de seguidores de la pagina "https://pythoniza.me/" es: ',cant_sp);

     porc_est (vector,lim,porcentaje_estudiante);
     writeln;
     writeln('El porcentaje de estudiantes del total de seguidores de la red social es: %',porcentaje_estudiante:2:2);

readkey;
end.
