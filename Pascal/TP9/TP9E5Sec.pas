{Se lee una lista de Números por teclado, se desea saber si entre dichos Números se encuentra el 333 
en caso afirmativo visualizar su posición en la lista. Resolver por búsqueda binaria y secuencial.} 

program TP9E5;
uses crt;
const n=5;
type t_vector=array[1..n] of integer; 

var	vector:t_vector;
	posicion,lim:byte;
	buscado:integer;
	
	procedure inicializar(var v:t_vector;var l:byte);
	var i:byte;
	begin
		for i:=1 to n do
		v[i]:=0;
		l:=0;
	end;

	procedure cargar(var v:t_vector;var l:byte);
	var	aux:char;
		num:integer;
	begin
		write('¿Desea comenzar? "s" o "n": ');
		readln(aux);
		writeln;
		while (aux<>'n') and (l<=n) do
		begin
			inc(l);
			write('Ingrese un numero: ');
			readln(num);
			v[l]:=num;
			write('¿Desea comenzar? "s" o "n": ');
			readln(aux);
			writeln;
		end;	
	end;

	procedure burbuja_mejorado(var v:t_vector;l:byte);
	var	i,aux:byte;
		orden:boolean;
	begin
		orden:=false;
		while orden=false do
		begin
			orden:=true;
			for i:=1 to l-1 do
			begin
				if v[i]>v[i+1]then
				orden:=false;
				aux:=v[i];
				v[i]:=v[i+1];
				v[i+1]:=aux;
			end;
		end;
	end;			
	
	procedure busqueda_secuencial(var v:t_vector;l:byte;busc:integer;var pos:byte);
	var i:byte;
	begin
		for i:=1 to l do
		begin
			if v[i]=busc then
			pos:=i;
		end;
	end;
	
	procedure mostrar(var v:t_vector;l:byte);
	var i:byte;
	begin
		for i:=1 to l do
		begin
			writeln('Vector ordenado: ');
			writeln(v[i]);
		end;
	end;
			


	
begin
	buscado:=0;
	inicializar(vector,lim);
	cargar(vector,lim);
	writeln;
	burbuja_mejorado(vector,lim);
	writeln('Vector ordenado: ');
	mostrar(vector,lim);
	writeln;
	write('Ingrese el numero que desea buscar: ');
	readln(buscado);
	writeln;
	busqueda_secuencial(vector,lim,buscado,posicion);
	if (vector[posicion]=buscado) then
	writeln('El numero ',buscado,' se encuentra en la posicion ',posicion,' dentro del vector.');
	writeln;
	
readkey;
end.
