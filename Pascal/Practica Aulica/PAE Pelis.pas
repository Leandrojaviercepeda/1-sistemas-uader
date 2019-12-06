{se tienen las peliculas candidatas a distintos rubros al oscar:
De cada una se tienen: titulo, genero, protagonistas, origen, duracion en segundos.
se pide:
a- cantidad de peliculas Argentinas
b- mostrar protagonistas de la pelicula el ciudadano ilustre"
c- titulo de la pelicula con menor duracion}

program PAE_Peliculas;
uses crt;
const n=3;
type t_peliculas=record
     titulo:string [50];
     genero:string [50];
     protagonistas:string [100];
     origen:string [50];
     duracion_en_segundos:integer;
     end;
     t_vector=array[1..n]of t_peliculas;

var vector:t_vector;
    lim:integer;
    pelicula_con_menor_duracion:string;
    p_p_el_ciudadano_ilustre:string;
    cantidad_de_paginas_argentinas:integer;


    procedure inicializar(var v:t_vector;var l:integer);
    var i:integer;
    begin
         for i:=1 to n do
         with v[i] do
         begin
              titulo:='';
              genero:='';
              protagonistas:='';
              origen:='';
              duracion_en_segundos:=0;
         end;
         l:=0;
    end;

    procedure cargar(var v:t_vector;var l:integer);
    var aux:char;
    begin
         write('¿Desea comenzar la carga de datos? "s" o "n": ');
         readln(aux);
         while (aux<>'n') and (l<=n) do
         begin
              inc(l);
              with v[l] do
              begin
                   write('Titulo: ');
                   readln(titulo);
                   write('Genero: ');
                   readln(genero);
                   write('Protagonistas: ');
                   readln(protagonistas);
                   write('Origen: ');
                   readln(origen);
                   write('Duracion en segundos: ');
                   readln(duracion_en_segundos);
              end;
              write('¿Desea continuar? "s" o "n": ');
              readln(aux);
         end;
    end;

    procedure cantidad_p_argentinas(var v:t_vector;l:integer;var cpa:integer);
    var i:integer;
    begin
         for i:=1 to l do
         begin
              if ((v[l].origen)='Argentina')or((v[l].origen)='argentina') then
              cpa:=cpa+1;
         end;
    end;

    procedure protagonista_p_eci(var v:t_vector;l:integer;var ppeci:string);
    var i:integer;
    begin
         ppeci:='';
         for i:=1 to l do
         begin
              if ((v[l].titulo)='El ciudadano ilustre')or((v[l].titulo)='el ciudadano ilustre') then
              ppeci:=v[l].protagonistas;
         end;
    end;

    procedure titulo_pcm_duracion(var v:t_vector;l:integer;var pelicula_cmd:string);
    var i:integer;
        pcmd:integer;
    begin
         pcmd:=0;
         for i:=1 to l do
         begin
              if pcmd<v[l].duracion_en_segundos then
              pelicula_cmd:=v[l].titulo;
         end;
    end;

begin

     inicializar(vector,lim);
     cargar(vector,lim);

     writeln;

     cantidad_p_argentinas(vector,lim,cantidad_de_paginas_argentinas);
     writeln('La cantidad de paginas argentinas es: ',cantidad_de_paginas_argentinas);

     writeln;

     protagonista_p_eci(vector,lim,p_p_el_ciudadano_ilustre);
     Writeln('Protagonistas: ',p_p_el_ciudadano_ilustre);

     writeln;

     titulo_pcm_duracion(vector,lim,pelicula_con_menor_duracion);
     writeln('Pelicula con menor duracion: ',pelicula_con_menor_duracion);

readkey;
end.







