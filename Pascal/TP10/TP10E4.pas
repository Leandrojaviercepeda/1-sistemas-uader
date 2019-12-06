{En un edificio se administran sesenta departamentos (6 por piso); 
con el fin de cobrar a cada dueño la cuota de gastos correspondiente al último mes.
Se registran los gastos de: energía eléctrica, gas, guardias, lavandería y conserjería de cada departamento.

Crear la estructura que lo almacene,
el proceso de carga y emitir al final un listado con los importes que por cada concepto debe pagar cada propietario,
además utilizar un vector auxiliar para cargar el importe total que se debe pagar por departamento. }

Program TP10E4;
uses crt;
const m=2;
	 n=1;
	 d=60;
type t_departamentos=record
	energia_electrica,gas,guardias,lavanderia,conserjeria_de_cada_departamento:real;
	end;
	t_edificio=array[1..m,1..n]of t_departamentos;
	t_vector=array[1..d] of real;
var
	edificio:t_edificio;
	vector:t_vector;
	
	procedure inicializar_vector(var v:t_vector);
	var i:integer;
	begin
		 for i:=1 to d do
		 v[i]:=0;
	end;	 
	
	procedure inicializar(var e:t_edificio);
	var f,c:integer;
	begin
		for f:=1 to m do
		begin
			for c:=1 to n do
			begin
				with e[f,c] do
				begin
					energia_electrica:=0;
					gas:=0;
					guardias:=0;
					lavanderia:=0;
					conserjeria_de_cada_departamento:=0;
				end;
			end;		
		end;		
	end;
	
	procedure cargar_vector(var v:t_vector);
	var i:integer;
	begin
		for i:=1 to d do
		begin
			write('Ingrese el importe total a pagar del departamento ',i,': ');
			readln(v[i]);
		end;
	end;		
	
	procedure cargar(var e:t_edificio);
	var f,c:integer;
	begin
		for f:=1 to m do
		begin
			writeln('Piso ',f,'.');
			for c:=1 to n do
			begin
				writeln('Para el departamento ',c,' ingrese los siguientes datos: ');
				with e[f,c] do
				begin
					write('Costo de gasto de energia electrica: $');
					readln(energia_electrica);
					write('Costo de gasto de gas: $');
					readln(gas);
					write('Costo de gasto de guardias: $');
					readln(guardias);
					write('Costo de gasto de lavanderia: $');
					readln(lavanderia);
					write('Costo de gasto de consejeria de cada departamento: $');
					readln(conserjeria_de_cada_departamento);
					writeln;
				end;
			end;
		end;
	end;			
	
	procedure mostrar(var e:t_edificio);
	var f,c:integer;
	begin
		for f:=1 to m do
		begin
			writeln('Piso ',f,'.');
			for c:=1 to n do
			begin
				writeln('Datos del departamento ',c,':');
				with e[f,c] do
				begin
					writeln('Costo de gasto de energia electrica: $',energia_electrica:2:2);
					writeln('Costo de gasto de gas: $',gas:2:2);
					writeln('Costo de gasto de guardias: $',guardias:2:2);
					writeln('Costo de gasto de lavanderia: $',lavanderia:2:2);
					writeln('Costo de gasto de consejeria de cada departamento: $',conserjeria_de_cada_departamento:2:2);
				end;
				writeln;
			end;		
		end;	
	end;
	
	procedure  mostrar_vector(var v:t_vector);
	var i:integer;
	begin
		for i:=1 to d do
		begin
			writeln('Total a pagar por departamento:');
			writeln('Departamento ',i,':',v[i]:2:2);
			writeln;
		end;
	end;
		
begin
	inicializar(edificio);
	inicializar_vector(vector);
	cargar(edificio);
	writeln;
	cargar_vector(vector);
	writeln;
	mostrar(edificio);
	writeln;
	mostrar_vector(vector);
	writeln;
	
readkey;
end.	
