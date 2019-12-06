{Se tienen los datos de los vuelos de un aeropuerto para un determinado dia. De cada uno se lee:
numero de vuelo, destino, hora de salida, duracion, linea aerea y costo del pasaje.
Se pide:
a- Mostrar todos los vuelos cuyo destino es Amsterdam e indicar si aerolineas argentinas vuela a ese destino.
b- Listado ordenado por linea aerea y por destino.
c- Determinar si el vuelo AA900 tiene como destino a Roma y mostrar todos sus datos.
d- Dado un incremento en el combustible en España, se debe actualizar en un 10%, todos los pasajes de la linea aerea Iberia. }

Program PAE_Vuelos;
uses crt;
const n=100;
type t_vuelos=record
     numero_de_vuelo:string; 
     destino:string; 
     costo_del_pasaje,duracion,hora_de_salida:real; 
     linea_aerea:string; 
     end;
     t_vector=array[1..n]of t_vuelos;
     
var 
     vector_vuelos_amsterdam,vector:t_vector;
     posicion,lim,lim2:integer;
     precio_combustible_espania:real;
     buscado:string;
     vuelo_ams_x_ae_ar:boolean;
     
     procedure inicializar(var v:t_vector;var l:integer);
     var i:integer;
     begin
	  for i:=1 to n do
	  with v[i] do
	  begin
	       numero_de_vuelo:=''; 
	       destino:=''; 
	       costo_del_pasaje:=0;
	       duracion:=0;
	       hora_de_salida:=0; 
	       linea_aerea:='';
	  end;
	  l:=0;     
     end;
     
     procedure cargar(var v:t_vector;var l:integer);
     var aux:char;
     begin
		write('¿Desea comenzar a cargar datos? "s" o "n".');
		readln(aux);
		writeln;
		while (aux<>'n') and (l<=n) do
		begin
			inc(l);
			writeln('Ingrese: ');
			with v[l] do
			begin
				write('Numero de vuelo: ');
				readln(numero_de_vuelo);
				write('Destino: ');
				readln(destino);
				write('Costo del pasaje: $');
				readln(costo_del_pasaje);
				write('Duracion: ');
				readln(duracion);
				write('Hora de salida: ');
				readln(hora_de_salida);
				write('Linea aerea: ');
				readln(linea_aerea);
			end;
			writeln;
			write('¿Desea continuar? "s" o "n".');
			readln(aux);
		end;
     end;
       
	{Vector de vuelos cuyo destino es Amsterdam.}
     procedure vuelos_amsterdam(var va,v:t_vector;var l2:integer;l:integer);
     var i:integer;
     begin
	  l2:=0;
	  for i:=1 to l do
	  begin
	       inc(l2);
	       if((v[i].destino)='Amsterdam')or((v[i].destino)='amsterdam')then
	       va[l2]:=v[i];
	  end;
     end;
     
     {Listado ordenado por linea aerea y por destino del verctor.}
     procedure listado_ordenado_x_linea_aerea(var v:t_vector;l:integer);
     var i:integer;
	 aux:t_vuelos; 
	 orden:boolean;
     begin
	  orden:=false;
	  while not(orden)do
	  begin
	       orden:=true;
	       for i:=1 to l-1 do
	       begin
		    if (v[i].linea_aerea+v[i].destino)<(v[i+1].linea_aerea+v[i+1].destino)then
		    begin
		    orden:=false;
		    aux:=v[i];
		    v[i]:=v[i+1];
		    v[i+1]:=aux;
	       end;
	       end;
	  end;
     end;
     
     {Busqueda en vuelo AA900, destino a Roma.}
     Procedure busqueda_binaria(var v:t_vector;l:integer;busca2:string;var pos:integer);
     Var  pri,ult,med:integer;
     Begin
	  Pri:=1;
	  Ult:=l;
	  Pos:=0;
	  While (pri<=ult) and (pos=0) do
	  Begin
	       Med:=(pri+ult)div 2;
	       If ((v[med].numero_de_vuelo='AA900') and (v[med].destino=busca2)) then
	       begin
		    Pos:=med;
	       end
	       Else if ((v[med].linea_aerea>'AA900')and(v[med].destino>busca2)) then
	       begin
		    Ult:=med-1;
	       end
	       Else
	       begin
		    Pri:=med+1;
	       End;
	  End;
     End;
	
	{Actualizacion de precios en un %10 de la linea Iberia en españa.}
     procedure actualizar_pasajes_iberia(var v:t_vector;l:integer;pce:real);
     var i:integer;
     begin
	  if pce>20.626 then
	  begin
	       for i:=1 to l do
	       begin
		    if ((v[i].linea_aerea)='Iberia')or((v[i].linea_aerea)='iberia')then
		    (v[i].costo_del_pasaje):=(v[i].costo_del_pasaje)+(v[i].costo_del_pasaje*0.10);
	       end;    
	  end;
     end;
     
     {Mostrae precios actualizados}
     procedure mostrar_lapi(var v:t_vector;l:integer);
     var i:integer;
     begin
	  for i:=1 to l do
	  begin
	       if ((v[i].linea_aerea)='Iberia')or((v[i].linea_aerea)='iberia')then
	       begin
		    with v[i] do
		    begin
			 writeln('Numero de vuelo: ',numero_de_vuelo);
			 writeln('Destino: ',destino);
			 writeln('Costo del pasaje: $',costo_del_pasaje:2:2);
			 writeln('Duracion: ',duracion:2:2);
			 writeln('Hora de salida: ',hora_de_salida:2:2);
			 writeln('Linea aerea: ',linea_aerea);
		    end;
	       end;
	  end;
     end;
     
     {Mostrar datos de vuelo AA900 con destino a roma}
     procedure mostrar_vuelo_AA900(var v:t_vector;l:integer;pos:integer);
     begin
	  with v[pos] do
	  begin
	       writeln('Numero de vuelo: ',numero_de_vuelo);
	       writeln('Destino: ',destino);
	       writeln('Costo del pasaje: $',costo_del_pasaje:2:2);
	       writeln('Duracion: ',duracion:2:2);
	       writeln('Hora de salida: ',hora_de_salida:2:2);
	       writeln('Linea aerea: ',linea_aerea);
	  end;
     end;
     
     {Mdostrar datos de vuelos con destino a Amsterdam}
     procedure mostrar_vuelos_amsterdam(var va:t_vector;l2:integer);
     var i:integer;
     begin
	  for i:=1 to l2 do
	  begin
	       with va[i] do
	       begin
		    writeln('Numero de vuelo: ',numero_de_vuelo);
		    writeln('Destino: ',destino);
		    writeln('Costo del pasaje: $',costo_del_pasaje:2:2);
		    writeln('Duracion: ',duracion:2:2);
		    writeln('Hora de salida: ',hora_de_salida:2:2);
		    writeln('Linea aerea: ',linea_aerea);
		    writeln;
		    if ((va[i].linea_aerea)='Aerolineas Argentinas') or ((va[i].linea_aerea)='Aerolineas argentinas')then
		    vuelo_ams_x_ae_ar:=true;
	       end;
	  end;
	  writeln;
	  if vuelo_ams_x_ae_ar=true then
	  writeln('Aerolineas argentinas posee vuelos con destino a Amsterdam.');
     end;
     
     procedure mostrar(var v:t_vector;l:integer);
     var i:integer;
     begin
	  for i:=1 to l do
	  begin
	       with v[i] do
	       begin
		    writeln('Numero de vuelo: ',numero_de_vuelo);
		    writeln('Destino: ',destino);
		    writeln('Costo del pasaje: $',costo_del_pasaje:2:2);
		    writeln('Duracion: ',duracion:2:2);
		    writeln('Hora de salida: ',hora_de_salida:2:2);
		    writeln('Linea aerea: ',linea_aerea);
		    writeln;
		end;
	  end;
     end;
     
     
begin
     buscado:='Roma';
     inicializar(vector,lim);
     inicializar(vector_vuelos_amsterdam,lim2);
     cargar(vector,lim);
     writeln;
       
     vuelos_amsterdam(vector_vuelos_amsterdam,vector,lim2,lim);
     writeln;
     writeln('Vuelos con destino a Amsterdam:');
     writeln;
     mostrar(vector_vuelos_amsterdam,lim2);
     
          
     listado_ordenado_x_linea_aerea(vector,lim);
     writeln;
     writeln('Listado ordenado por linea aerea y destino:');
     writeln;
     mostrar(vector_vuelos_amsterdam,lim2);
     
     writeln;
     buscado:='AA900';
     busqueda_binaria(vector,lim,buscado,posicion);
     writeln('Datos del vuelo AA900: ');
     mostrar_vuelo_AA900(vector,lim,posicion);
     
     
     writeln;
     write('Ingrese el precio actual del combustible en España en pesos: $');
     readln(precio_combustible_espania);
     actualizar_pasajes_iberia(vector,lim,precio_combustible_espania);
     writeln('Lista actualizada de pasajes con destino a Iberia: ' );
     mostrar_lapi(vector,lim);
      
     
readkey;
end.
