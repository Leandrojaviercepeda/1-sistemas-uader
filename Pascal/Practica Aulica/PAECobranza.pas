{Un plus realiza la cobranza de sus socios mediante tres cobradores, cada socio posee los siguientes datos:
* DNI
* apellido y nombre
* domicilio
* cuota
* cobrador
* zona
* se pide:
* Listado ordenado por zona y apellido.
* total general cobrado.
* realizar un procedimiento que se llame pago por dni y que permita imputar el pago de cuotas a un socio.(actualizar el campo cuota).
* verificar si el socio x,y existe(pueden ser varios, contarlos).}

Program PAECobranza;
uses crt;
const n=100;
type t_socios=record
	cuota,dni:real;
	zona,cobrador,domicilio,apellido,nombre:string
	end;
	
	t_vectors=array[1..n]of t_socios;
	
var
	vectors:t_vectors;
	posicion,lims:byte;
	contador_socios_x,contador_socios_y:integer;
	buscado:real;
	actualizar:char;
	
	procedure inicializar_socios(var vs:t_vectors;var ls:byte);
	var i:byte;
	begin
		for i:=1 to n do
		begin
			with vs[i] do
			begin
				dni:=0;
				apellido:='';
				nombre:='';
				domicilio:='';
				cuota:=0;
				cobrador:='';
				zona:='';
			end;
		end;
		ls:=0;
	end;
	
	procedure cargar_socios(var vs:t_vectors;var ls:byte);
	var aux:char;
	begin			
		write('¿Desea comenzar? "s" o "n": ');
		readln(aux);
		while (aux<>'n')and(ls<=n)do
		begin
			inc(ls);
			with vs[ls] do
			begin
				writeln('Ingrese los siguientes datos para cada socio: ');
				write('Ingrese DNI: ');
				readln(dni);
				write('Ingrese Apellido: ');
				readln(apellido);
				write('Ingrese Nombre: ');
				readln(nombre);
				write('Ingrese domicilio: ');
				readln(domicilio);
				write('Ingrese cuota: ');
				readln(cuota);
				write('Ingrese cobrador: ');
				readln(cobrador);
				write('Ingrese zona: ');
				readln(zona);
				writeln;
			end;
			write('¿Desea continuar? "s" o "n": ');
			readln(aux);
			writeln;
		end;	
	end;
	
	procedure burbuja_mejorado_zona_apellido (var vs:t_vectors;ls:byte);
	var	orden:boolean;
		aux:t_socios;
		i:byte;
	begin
		orden:=false;
		while (orden=false) do
		begin
			orden:=true;
			for i:=1 to ls-1 do
			begin
				if((vs[i].zona+vs[i].apellido)>(vs[i+1].zona+vs[i+1].apellido))then
				begin
				orden:=false;
				aux:=vs[i];
				vs[i]:=vs[i+1];
				vs[i+1]:=aux;
				end;
			end;
		end;
	end;
	
	function total_general_cobrado(var vs:t_vectors;ls:byte):real;
	var	i:byte;
		aux:real;
	begin
		total_general_cobrado:=0;
		aux:=0;
		for i:=1 to ls do
		begin
			aux:=total_general_cobrado;
			total_general_cobrado:=aux+vs[i].cuota;
		end;		
	end;
	
	procedure burbuja_mejorado_xdni(var vs:t_vectors;ls:byte);
	var	orden:boolean;
			aux:t_socios;
			i:byte;
	begin
		orden:=false;
		while (orden=false) do
		begin
			orden:=true;
			for i:=1 to ls-1 do
			begin
				if ((vs[i].dni)>(vs[i+1].dni)) then
				begin
				orden:=false;
				aux:=vs[i];
				vs[i]:=vs[i+1];
				vs[i+1]:=aux;
				end;
			end;		
		end;
	end;	
	
	procedure pago_x_dni (var vs:t_vectors;ls:byte;busc:real;var pos:byte);
	var	pri,med,ult:byte;
	begin
		pri:=1;
		ult:=ls;
		while(ls<=n)and(busc=0)do
		begin
			med:=(pri+ult)div 2;
			if ((vs[med].dni)=busc) then
			begin
				pos:=med;
			end
			else	if ((vs[med].dni)>busc)then
			begin
				ult:=med-1;	
			end
			else
			begin
				pri:=med+1;
			end;
		end;	
	end;
	
	procedure actualizar_campo_cuota (var vs:t_vectors;ls:byte;pos:byte);
	var	cuota:real;
	begin
			write('Actualice el campo cuota: ');
			readln(cuota);
			vs[pos].cuota:=cuota;
	end;
	
	procedure contadores_socios_xy (var vs:t_vectors;ls:byte;var csx:integer;var csy:integer);
	var	i:byte;
	begin
		csx:=0;
		csy:=0;
		for i:=1 to ls do
		begin
			if ((vs[i].nombre)='x') then
			csx:=csx+1;
			if ((vs[i].nombre)='y') then
			csy:=csy+1;
		end;
	end;		
	
	procedure mostrar_socios (var vs:t_vectors;ls:byte);
	var	i:byte;
	begin
		for i:=1 to ls do
		begin
			with vs[i] do
			begin
				write('DNI: ');
				writeln(dni);
				write('Apellido: ');
				writeln(apellido);
				write('Nombre: ');
				writeln(nombre);
				write('Domicilio: ');
				writeln(domicilio);
				write('Cuota: ');
				writeln(cuota:2:2);
				write('Cobrador: ');
				writeln(cobrador);
				write('Zona: ');
				writeln(zona);
				writeln;
			end;
		end;
	end;			
				
begin
	buscado:=0;
	posicion:=0;
	inicializar_socios(vectors,lims);
	cargar_socios(vectors,lims);
	writeln;

	burbuja_mejorado_zona_apellido(vectors,lims);
	writeln('Lista de socios por zona y apellido:');
	mostrar_socios(vectors,lims);
	writeln;
	
	total_general_cobrado(vectors,lims);
	writeln('El total general cobrado es: $',total_general_cobrado(vectors,lims));
	writeln;
	
	writeln('¿Desea actualizar la cuota de un socio? "s" o "n": ');
	readln(actualizar);
	while actualizar<>'n' do
	begin
		write('Ingrese el DNI de la persona que desea buscar: ');
		readln(buscado);
		burbuja_mejorado_xdni(vectors,lims);
		pago_x_dni(vectors,lims,buscado,posicion);
		if buscado<>0 then
		begin
		actualizar_campo_cuota(vectors,lims,posicion);
		end
		else
		begin
		writeln('El socio ingresado no existe.');
		writeln;
		end;	
	end;
	writeln;
	
	contadores_socios_xy(vectors,lims,contador_socios_x,contador_socios_y);
	writeln('La cantidad de socios "x" es: ',contador_socios_x);
	writeln;
	writeln('La cantidad de socios "y" es: ',contador_socios_y);
	
readkey;
end.	
