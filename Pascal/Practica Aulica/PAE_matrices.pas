{Dada una matriz calcular el maximo y determinar si es absoluto.}

program Algoritmo_Maximo;
uses crt;
const n=4;
type t_matriz=array[1..n,1..n] of integer;
var	matriz:t_matriz;
	suma_dp,mayor,contador_m:integer;
	
	
	procedure inicializar_matriz (var m:t_matriz);
	var	f,c:byte;
	begin
		for f:=1 to n do
		begin
			for c:=1 to f do
			m[f,c]:=0;
		end;
	end;
	
	procedure cargar_matriz (var m:t_matriz);
	var	f,c:byte;
		num:integer;
	begin
		for f:=1 to n do
		begin
			for c:=1 to n do
			begin
				write('Ingrese un numero: ');
				readln(num);
				m[f,c]:=num;
			end;
		end;
	end;
			
	procedure max_matriz (var m:t_matriz;var may:integer);
	var	f,c:byte;
	begin
		mayor:=m[1,1];
		for f:=1 to n do
		begin
			for c:=1 to n do
			begin
				if mayor<m[f,c] then
				mayor:=m[f,c];
			end;
		end;
	end;
	
	procedure max_absoluto_matriz (var m:t_matriz;mayor:integer;var cont:integer);
	var	f,c:byte;
	begin
		c:=0;
		for f:=1 to n do
		begin
			for c:=1 to n do
			begin
				if mayor=m[f,c] then
				inc(cont);
			end;
		end;
	end;			
		
	procedure suma_diagonal_principal(var m:t_matriz;var sdp:integer);
	var f,c:byte;
	begin
		for f:=1 to n do
		begin
			for c:=1 to n do
			begin
				if f=c then
				sdp:=sdp+m[f,c];
			end;
		end;
	end;			
		
begin
	contador_m:=0;
	inicializar_matriz(matriz);
	cargar_matriz(matriz);
	max_matriz(matriz,mayor);
	writeln('El maximo es: ',mayor);
	max_absoluto_matriz(matriz,mayor,contador_m);
	if contador_m=1 then
	begin
		writeln('El maximo absoluto es: ',mayor);
	end
	else
	begin
		writeln('Hay mas de un maximo.');
	end;
	suma_diagonal_principal(matriz,suma_dp);
	writeln('La suma de los elementos de la diagonal principal es: ',suma_dp);
readkey;
end.	
