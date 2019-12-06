{Se tienen los datos de x jugadores de futbol:
* De c/u se tiene:
* Club en el que juega
* Apellido y nombre del jugador
* Cantidad de goles

*Se pide: 
* a- Maximo goleador.
* b- Listado ordenado alfabeticamente de jugadores x club
* c- Dado un club mostrar todos sus jugadores
* d- Promedio de goles del club de futbol }

Program PAE_Jugadores_de_Futbol;
uses	crt;
const	n=5;
type	t_jugadores=record
			club,apellido_y_nombre:string;
			cantidad_de_goles:integer;
			end;
			
			t_vector=array[1..n] of t_jugadores;

var	
		vector:t_vector;
		lim:integer;
		xclub:string;
		
		procedure inicializar(var v:t_vector;var l:integer);
		var	i:integer;
		begin
					for i:=1 to n do
					begin
								with v[i] do
								begin
											club:='';
											apellido_y_nombre:='';
											cantidad_de_goles:=0;
								end;
					end;
					l:=0;
		end;
		
		procedure cargar(var v:t_vector;var l:integer);
		var	aux:char;
		begin
					aux:='s';
					write('Desea comenzar a cargar el registro de jugadores? "s/n": ');
					readln(aux);
					clrscr;
					while (aux<>'n') and (l<=n) do
					begin
								inc(l);
								writeln('Ingrese los siguientes datos:');
								with v[l] do
								begin
											write('Club: ');
											readln(club);
											write('Apellido y nombre del jugador: ');
											readln(apellido_y_nombre);
											write('Cantidad de goles: ');
											readln(cantidad_de_goles);
											clrscr;
								end;
						write('Desea continuar? "s/n": ');
						readln(aux);
						clrscr;		
					end;
		end;									
	
		function maximo_goleador(var v:t_vector;l:integer):integer;
		var	cg,i:integer;	
		begin
					cg:=v[1].cantidad_de_goles;
					for i:=2 to l do
					begin
								if (v[i].cantidad_de_goles>cg) then
								begin
											cg:=v[i].cantidad_de_goles;
											maximo_goleador:=i;
								end;
					end;
		end;
		
		procedure burbuja_mejorado_vector_x_club(var v:t_vector;l:integer);
		var	orden:boolean;
				i:integer;
				aux:t_jugadores;
		begin
					orden:=false;
					while not(orden) do
					begin
								orden:=true;
								for i:=1 to l-1 do
								begin
											if (v[i].club+v[i].apellido_y_nombre)>(v[i+1].club+v[i+1].apellido_y_nombre) then
											begin
														orden:=false;
														aux:=v[i];
														v[i]:=v[i+1];
														v[i+1]:=aux;
											end;
								end;
					end;
		end;
		
		procedure mostrar_vector_ordenado_x_club(var v:t_vector;l:integer);
		var i:integer;
		begin
					for i:=1 to l do
					begin
								with v[i] do
								begin
											writeln('Club: ',club);
											writeln('Apellido y nombre: ',apellido_y_nombre);
											writeln('Goles: ',cantidad_de_goles);
											writeln;
								end;
					end;						
		end;						
		
		procedure mostrar_xclub(var v:t_vector;l:integer;xc:string);
		var i:integer;
		begin
					for i:=1 to l do
					begin
								if (xc)=(v[i].club) then
								begin
											with v[i] do
											begin
														writeln('Club: ',club);
														writeln('Apellido y nombre: ',apellido_y_nombre);
														writeln('Goles: ',cantidad_de_goles);
														writeln;
											end;
								end;
					end;
		end;
		
		procedure mostrar_maximo_goleador(var v:t_vector;l:integer;maximo_goleador:integer);
		begin
					with v[maximo_goleador] do
					begin
								writeln('Club: ',club);
								writeln('Apellido y nombre: ',apellido_y_nombre);
								writeln('Goles: ',cantidad_de_goles);
					end;
		end;
					
		function promedio_de_goles_club(var v:t_vector;l:integer;xc:string):real;
		var i:integer;
				ctg,cg:real;
		begin
					cg:=0;
					ctg:=0;
					for i:=1 to l do
					begin
								ctg:=ctg+1;
								if (xc)=(v[i].club) then
								begin
											cg:=cg+1;
								end;
					end;
					promedio_de_goles_club:=cg/ctg;
		end;			
									
begin
			xclub:='';
			inicializar(vector,lim);
			cargar(vector,lim);
			readkey;
			clrscr;
			
			writeln('El maximo goleador es:');
			mostrar_maximo_goleador(vector,lim,maximo_goleador(vector,lim));
			readkey;
			clrscr;
			
			
			burbuja_mejorado_vector_x_club(vector,lim);
			writeln('Lista de jugadores ordenados por club:');
			mostrar_vector_ordenado_x_club(vector,lim);
			readkey;
			clrscr;
			
			write('Ingrese el club que desea visualizar: ');
			readln(xclub);
			readkey;
			clrscr;
			mostrar_xclub(vector,lim,xclub);
			readkey;
			clrscr;
			
			writeln('El promedio de goles del club es: ',promedio_de_goles_club(vector,lim,xclub):2:2);
			
end.			
