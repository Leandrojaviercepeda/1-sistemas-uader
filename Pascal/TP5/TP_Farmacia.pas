Program TP_Farmacia;
uses crt;
var
Begin
   for i:=1 to 10 do
       begin
            while(socio<>0)do
            begin
                 writeln('Ingrese el nombre y apellido del socio');
                 readln(nya);
                 wirteln('Ingrese el dni del socio');
                 readln(dni);
                 writeln('Ingrese la edad del socio');
                 readln(edad);
                 cont_soc:=cont_soc+1;
                 ac_edad:=ac_edad+edad;

                 if(menor_edad>edad)then
                 begin
                      menor_edad:=edad;
                      nyamenor:=nya;
                      dnimenor:=dni;
                 end;

                 if(edad>mayor_edad) then
                 begin
                      mayor_edad:=edad;
                      nyamayor:=nya;
                      dnimayor:=dni;
                 end;

                 if (nya='Juan Perez') or (nya='juan perez')then
                 begin
                      juan_perez:=nya;
                 end;

            writeln('El promedio edad de socios de la sucursal ',i,' es de ',(ac_edad)DIV(cont_soc),'.');
            writeln('La cantidad de socios por la sucursal es ',cont_soc,'.');

            cont_totalsocios:=cont_totalsocios+1;
            ac_edad2:=ac_edad2+edad;
            end;
   end;
   if(juan_perez=nya)then
   begin
        writeln('Juan perez es Socio de la farmacia.');
   end
   else
   writeln('Juan Perez no es Socio de la farmacia.');
   end;
   writeln('El promedio de edades de los socios por farmacia es ',(ac_edad2)DIV(cont_totalsocios),'.');
   writeln('El socio mas joven de la farmacia es ',nyamenor,' su edad es ',menor_edad,' y su dni es ',dnimenor,'.');
   writeln('El socio mayor de la farmacia es ',nyamayor,' su edad es ',mayor_edad,' y su dni es ',dnimayor,'.');

end.
