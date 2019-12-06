{Documentos:
* Apellido y nombre
* dni
* Tipo de documento: Nota de credito, nota de debito
* Saldo
* Sucursal

* Clientes:
* Apellido y nombre
* dni
* Sucursal: 1..3
* Saldo

Se pide:
* Procesar vector facturas de la siguiente forma: tomar c/documento, buscar cliente en un vector clientes,
  si existe, actualizar, sino cargarlo.
* Listado ordenado por sucursal de todos los clientes.
* Dada una sucursal mostrar todos los clientes c/todos sus datos, ordenados alfabeticamente.}

Program PAE_Notas_de_credito;
uses crt;
const n=200;
type t_documentos=record
	Apellido_y_nombre_doc:string;
	dni_doc:real;
	Tipo_de_documento_doc:string;
	Saldo_doc:real;
	Sucursal_doc:string;
	end;

	t_clientes=record
	Apellido_y_nombre_cli:string;
	dni_cli:real;
	Sucursal_cli:string;
	Saldo_cli:real;
	end;
	
	t_vectorc=array[1..n]of t_clientes;
	t_vectord=array[1..n]of t_documentos;
	
var
	vectorc:t_vectorc;
	vectord:t_vectord;
	eleccion_sucursal:string;
	posicion,posicion2,limc,limd:byte;
	buscado:real;
	
	
	procedure inicializar_clientes(var vc:t_vectorc;var lc:byte);
	var i:byte;
	begin
		for i:=1 to n do
		begin
			with vc[i] do
			begin
				Apellido_y_nombre_cli:='';
				dni_cli:=0;
				Sucursal_cli:='';
				Saldo_cli:=0;
			end;
		end;
		lc:=0;	
	end;
	
	procedure inicializar_documentos(var vd:t_vectord;var ld:byte);
	var i:byte;
	begin
		for i:=1 to n do
		begin
			with vd[i] do
			begin
				Apellido_y_nombre_doc:='';
				dni_doc:=0;
				Tipo_de_documento_doc:='';
				Saldo_doc:=0;
				Sucursal_doc:='';
			end;
		end;
		ld:=0;
	end;
	
	procedure cargar_clientes(var vc:t_vectorc;var lc:byte);
	var aux:char;
	begin
		write('¿Desea comenzar a cargar el Registo de Clientes? "s/n": ');
		readln(aux);
		clrscr;
		while (aux<>'n') and (lc<=n) do
		begin
			inc(lc);
			with vc[lc] do
			begin
				write('Ingrese apellido y nombre del cliente: ');
				readln(Apellido_y_nombre_cli);
				write('Ingrese DNI: ');
				readln(dni_cli);
				write('Ingrese numero de sucursal: ');
				readln(Sucursal_cli);
				write('Ingrese el saldo: $');
				readln(Saldo_cli);
				clrscr;
			end;
		write('¿Desea Continuar? "s/n": ');
		readln(aux);
		clrscr;
		end;
	end;
	
	procedure cargar_documentos(var vd:t_vectord;var ld:byte);
	var aux:char;
	begin
		write('¿Desea Comenzar a cargar el Registro de Documentos? "s/n": ');
		readln(aux);
		clrscr;
		while (aux<>'n') and (ld<=n) do
		begin
					inc(ld);
			with vd[ld] do
			begin
				write('Ingrese Apellido y nombre: ');
				readln(Apellido_y_nombre_doc);
				write('Ingrese DNI: ');
				readln(dni_doc);
				write('Ingrese tipo de documento: ');
				readln(Tipo_de_documento_doc);
				write('Ingrese saldo: $');
				readln(Saldo_doc);
				write('Ingrese numero de sucursal: ');
				readln(Sucursal_doc);
				clrscr;
			end;	
			write('¿Desea continuar? "s/n": ');
			readln(aux);
			clrscr;
		end;
	end;
	
	Procedure burbuja_mejorado_vc_xdni(var vc:t_vectorc;lc:byte);
	var	orden:boolean;
			i:byte;
			aux:t_clientes;
	begin
				orden:=false;
				while not(orden)do
				begin
							orden:=true;
							for i:=1 to lc-1 do
							begin
										if ((vc[i].dni_cli)>(vc[i+1].dni_cli)) then
										begin
										orden:=false;
										aux:=vc[i];
										vc[i]:=vc[i+1];
										vc[i+1]:=aux;
										end;
							end;
				end;
	end;									
	
	Procedure burbuja_mejorado_vd_xdni(var vd:t_vectord;ld:byte);
	var	orden:boolean;
			i:byte;
			aux:t_documentos;
	begin
				orden:=false;
				while not(orden)do
				begin
							orden:=true;
							for i:=1 to ld-1 do
							begin
										if ((vd[i].dni_doc)>(vd[i+1].dni_doc)) then
										begin
										orden:=false;
										aux:=vd[i];
										vd[i]:=vd[i+1];
										vd[i+1]:=aux;
										end;
							end;
				end;
	end;	
	

	Procedure busqueda_binaria_vd (var vd:t_vectord;ld:byte;busc:real;var pos:byte);
	Var pri,ult,med:byte;
	Begin
		Pri:=1;
		Ult:=ld;
		Pos:=0;
		While (pri<=ult) and (pos=0) do
		Begin
			Med:=(pri+ult)div 2;
			If ((vd[med].dni_doc)=busc) then
			begin
				Pos:=med;
			end
			Else if ((vd[med].dni_doc)>busc) then
			begin
				Ult:=med-1;
			end
			Else
			begin
				Pri:=med+1;
			End;
		End;
	End;
	
	procedure busqueda_binaria_vc(var vc:t_vectorc;var vd:t_vectord;lc:byte;ld:byte;busc:real;pos:byte;var pos2:byte);
	var	pri,ult,med:byte;
	begin
				pri:=1;
				ult:=lc;
				pos2:=0;
				while(pri<=ult) and (pos2=0)do
				begin
							med:=(pri+ult)div 2;
							if ((vc[med].dni_cli)=busc)then
							begin
										pos2:=med;
										if ((vd[pos].Tipo_de_documento_doc)='nota de credito')then
										begin	
													(vc[pos2].Saldo_cli):=(vc[pos2].Saldo_cli)-(vd[pos].Saldo_doc);
										end
										else if((vd[pos].Tipo_de_documento_doc)='nota de debito')then
										begin
													(vc[pos2].Saldo_cli):=(vc[pos2].Saldo_cli)+(vd[pos].Saldo_doc);
										end	
										else if((vc[med].dni_cli)>busc)then
										begin
													ult:=med-1;
										end	
										else
										begin
													pri:=med+1;
										end;
							end;			
				end;
	end;			
	
	procedure crear_cliente(var vc:t_vectorc;var vd:t_vectord;var lc:byte;pos:byte;var pos2:byte);
	begin
				if lc<n then
				begin
							inc(lc);
							pos2:=lc;
							writeln('Es necesario crear el cliente, cargue los siguientes datos:  ');
							writeln;	
							(vc[pos2].apellido_y_nombre_cli):=(vd[pos].apellido_y_nombre_doc);
							(vc[pos2].dni_cli):=(vd[pos].dni_doc);
							(vc[pos2].sucursal_cli):=(vd[pos].sucursal_doc);
							with vc[pos2] do
							begin
										writeln('Apellido y nombre: ',apellido_y_nombre_cli);
										writeln('DNI: ',dni_cli:2:0);
										writeln('Numero de sucursal: ',sucursal_cli);
										write('Ingrese el saldo: $');
										readln(Saldo_cli);
										writeln;
							end;
							if ((vd[pos].Tipo_de_documento_doc)='nota de credito')then
							begin	
										(vc[pos2].Saldo_cli):=(vc[pos2].Saldo_cli)-(vd[pos].Saldo_doc);
							end
							else if((vd[pos].Tipo_de_documento_doc)='nota de debito')then
							begin
										(vc[pos2].Saldo_cli):=(vc[pos2].Saldo_cli)+(vd[pos].Saldo_doc);
							end	
				end
				else
				begin 
							writeln('No hay espacio suficiente para crear el Cliente.');
				end;
	end;
	
	procedure mostrar_cliente_actualizado(var vc:t_vectorc;pos2:byte);
	begin
				with vc[pos2] do
				begin
							writeln('Apellido y nombre del cliente: ',Apellido_y_nombre_cli);
							writeln('DNI: ',dni_cli:2:0);
							writeln('Numero de sucursal: ',Sucursal_cli);
							writeln('Saldo: $',Saldo_cli:2:2);
							writeln;
				end;
	end;						
		
	procedure mostrar_cliente_creado(var vc:t_vectorc;pos2:byte);
	begin
			with vc[pos2] do
			begin
						writeln('Apellido y nombre del cliente: ',Apellido_y_nombre_cli);
						writeln('DNI: ',dni_cli:2:0);
						writeln('Numero de sucursal: ',Sucursal_cli);
						writeln('Saldo: $',Saldo_cli:2:2);
						writeln;
			end;	
	end;
				
	procedure mostrar_vc_ops(var vc:t_vectorc;lc:byte);
	var i:byte;
	begin
				for i:=1 to lc do
				begin
							with vc[i] do
							begin
										writeln('Apellido y nombre del cliente: ',Apellido_y_nombre_cli);
										writeln('DNI: ',dni_cli:2:0);
										writeln('Numero de sucursal: ',Sucursal_cli);
										writeln('Saldo: $',Saldo_cli:2:2);
										writeln;
							end;
			end;
	end;
	
	
	procedure burbuja_mejorado_vc_xs_xapyn(var vc:t_vectorc;lc:byte);
	var	i:byte;
		aux:t_clientes;
		orden:boolean;
	begin
		orden:=false;
		while not(orden) do
		begin
			orden:=true;
			for i:=1 to lc-1 do
			begin
				if ((vc[i].sucursal_cli+vc[i].Apellido_y_nombre_cli)>(vc[i+1].sucursal_cli+vc[i].Apellido_y_nombre_cli)) then
				begin
				orden:=false;
				aux:=vc[i];
				vc[i]:=vc[i+1];
				vc[i+1]:=aux;
				end;
			end;	
		end;
	end;
	
	Procedure mostrar_eleccion_sucursal(var vc:t_vectorc;lc:byte;elec_suc:string);
	var i:byte;
	begin
				i:=0;
				for i:=1 to lc do
				begin
							if (elec_suc='1')and((vc[i].sucursal_cli)='1') then
							begin
										with vc[i] do
										begin
													writeln('Apellido y nombre del cliente: ',Apellido_y_nombre_cli);
													writeln('DNI: ',dni_cli:2:0);
													writeln('Numero de sucursal: ',Sucursal_cli);
													writeln('Saldo: $',Saldo_cli:2:2);
													writeln;
										end; 
							end			 
							else if (elec_suc='2')and((vc[i].sucursal_cli)='2') then
							begin
										with vc[i] do
										begin
													writeln('Apellido y nombre del cliente: ',Apellido_y_nombre_cli);
													writeln('DNI: ',dni_cli:2:0);
													writeln('Numero de sucursal: ',Sucursal_cli);
													writeln('Saldo: $',Saldo_cli:2:2);
													writeln;
										end; 
							end		
							else if(elec_suc='3')and((vc[i].sucursal_cli)='3') then
							begin
										with vc[i] do
										begin
													writeln('Apellido y nombre del cliente: ',Apellido_y_nombre_cli);
													writeln('DNI: ',dni_cli:2:0);
													writeln('Numero de sucursal: ',Sucursal_cli);
													writeln('Saldo: $',Saldo_cli:2:2);
													writeln;
										end;
							end			
							else
							begin
										writeln('No existen clientes registrados en la sucursal ingresada.');
							end;
				end;
	end;	
	
									
begin
	buscado:=0;
	posicion:=0;
	posicion2:=0;
	eleccion_sucursal:='';
	inicializar_clientes(vectorc,limc);
	inicializar_documentos(vectord,limd);
	cargar_clientes(vectorc,limc);
	burbuja_mejorado_vc_xdni(vectorc,limc);
	
	cargar_documentos(vectord,limd);
	burbuja_mejorado_vd_xdni(vectord,limd);
	
	
	write('Ingrese el numero de DNI del cliente que desea buscar en el registro de documentos:  ');
	readln(buscado);
	busqueda_binaria_vd(vectord,limd,buscado,posicion);
	writeln;
	
	busqueda_binaria_vc(vectorc,vectord,limc,limd,buscado,posicion,posicion2);
	if (posicion2<>0)then
	begin
				writeln('El saldo del cliente ha sido actualizado con exito.');
				mostrar_cliente_actualizado(vectorc,posicion2);
	end			
	else
	begin
				crear_cliente(vectorc,vectord,limc,posicion,posicion2);
				writeln;
				writeln('¡El cliente ha sido creado con exito!');
				readkey;
				clrscr;
				writeln('Datos Actualizados del Cliente:');
				writeln;
				mostrar_cliente_creado(vectorc,posicion2);;
				readkey;
				clrscr;
	end;
	
	burbuja_mejorado_vc_xs_xapyn(vectorc,limc);
	writeln('Listado ordenado por sucursal de todos los clientes:');
	writeln;
	mostrar_vc_ops(vectorc,limc);
	readkey;
	clrscr;

	write('Ingrese la sucursal que desea visualizar: ');
	readln(eleccion_sucursal);
	writeln;
	mostrar_eleccion_sucursal(vectorc,limc,eleccion_sucursal);
	

readkey;
end.
