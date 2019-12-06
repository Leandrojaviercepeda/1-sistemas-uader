{En un centro estadístico se registran datos de personas para conocer distintas características físicas:
(nombre, edad, peso, altura)
Realizar un programa que cargue los datos y  brinde la siguiente información: 
a) Cantidad de personas con más de sesenta años. 
b) Cantidad de mujeres de más de  1,70m. 
c) Porcentaje de personas con menos de 50Kg. de peso.}

Program TP10E5;
uses crt;
const n=100;
type t_centro_estadistico=record
	 nombre,sexo:string;
	 edad:integer;
	 peso,altura:real;
	 end;
	 t_personas=array[1..n]of t_centro_estadistico;
var
	personas:t_personas;
	lim:byte;
	
	procedure inicializar(var p:t_personas;var l:byte);
	var i:byte;
	begin
		for i:=1 to n do
		begin
			with p[i] do
			begin
				nombre:='';
				sexo:='';
				edad:=0;
				peso:=0;
				altura:=0;
			end;
		end;
		l:=0;
	end;
	
	procedure cargar(var p:t_personas;var l:byte);
	var aux:char;
	begin
		write('¿Desea comenzar? "s" o "n": ');
		readln(aux);
		while (aux<>'n') and (l<=n) do
		begin
			inc(l);
			writeln(l,'° persona');
			with p[l] do
			begin
				Write('Ingrese nombre: ');
				readln(nombre);
				write('Ingrese sexo: ');
				readln(sexo);
				Write('Ingrese edad: ');
				readln(edad);
				Write('Ingrese peso: ');
				readln(peso);
				Write('Ingrese altura: ');
				readln(altura);
				writeln;
			end;
			write('¿Desea cntinuar? "s" o "n": ');
			readln(aux);
		end;
	end;
	
	function personas_mayores_a60anios(var p:t_personas;l:byte):integer;
	var	i:byte;
		pm60:integer;
	begin
		personas_mayores_a60anios:=0;
		pm60:=personas_mayores_a60anios;
		for i:=1 to l do
		begin
			if p[i].edad>60 then
			personas_mayores_a60anios:=pm60+1;
		end;
	end;
	
	function mujeres_mayores_a170m(var p:t_personas;l:byte):integer;
	var	i:byte;
		pm170m:integer;
	begin
		mujeres_mayores_a170m:=0;
		pm170m:=mujeres_mayores_a170m;
		for i:=1 to l do
		begin
			if (((p[i].sexo='femenino') or (p[i].sexo='Femenino')) and (p[i].altura>170)) then
			mujeres_mayores_a170m:=pm170m+1;
		end;
	end;
	
	function porcentaje_pcm50kg(var p:t_personas;l:byte):real;
	var	i:byte;
		cp:integer;
		pcm50kg:integer;
	begin
		cp:=0;
		porcentaje_pcm50kg:=0;
		pcm50kg:=0;
		for i:=1 to l do
		cp:=cp+1;	
		
		if p[i].peso>170 then
		pcm50kg:=pcm50kg+1;
		
		porcentaje_pcm50kg:=(cp*100)/pcm50kg;
	end;
	
begin
	inicializar(personas,lim);
	cargar(personas,lim);
	writeln;
	writeln('Cantidad de personas con más de sesenta años: ',personas_mayores_a60anios(personas,lim),'.');
	writeln;
	writeln('Cantidad de mujeres de más de 1,70m: ',mujeres_mayores_a170m(personas,lim),'.');
	writeln;
	writeln('Porcentaje de personas con menos de 50Kg. de peso: ',porcentaje_pcm50kg(personas,lim):2:2,'.');
	
readkey;
end.	
	
	
