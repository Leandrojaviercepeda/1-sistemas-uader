
//Dada una cadena de caracteres y utilizando distintos procedimientos o funciones se pide:
//A. Mostrar la longitud de la cadena
//B. Determintar si el caracter @ se encuentra contenido en la misma
//C. Si existe deterinar cuantos hay
//D. Determinar si es un palindromo
Program  TP6Eextra;
uses crt;
var c:string;


    function longitud(cad:string):integer;
    begin
         longitud:=length(cad);
    end;


    function cantidad(cad:string):integer;
    var i,cant:integer;
    begin
         for i:=1 to longitud(cad) do
         begin
              if cad[i]='@' then
              begin
                   cant:=cant+1;
              end;
              cantidad:=cant;
    end;


   function palindromo(cad:string):boolean;
   var i:integer;
       p:string;
       begin
            p:='';
            for i:= longitud (cad) downto 1 do
            begin
                 p:=p+cad[i];
            end;

            if (cad=p) then
            begin
                 palindromo:=true;
            end
            else
            begin
                 palindromo:=false;
            end;
       end;
begin

     Writeln('Ingrese una cadena de caracteres.');
     readln(c);
     palindromo(c);
     writeln('La longitud de la cadena es: ',longitud(c));
     writeln('Existen ',cantidad(c),' de caracteres "@" dentro de la cadena de caracteres.');
     if palindromo (c) then
     begin
          writeln('Es un Palindromo');
     end
     else
     begin
          writeln('No es un palindromo');
     end;

readkey;
end.

