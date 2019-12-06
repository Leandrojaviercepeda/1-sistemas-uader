program TP5E16;
uses crt;
var caracter:char;
    resultado:string[30];

    procedure voc(c:char;var res:string[30]);
    begin
         if (c='a')or(c='e')or(c='i')or(c='o')or(c='u')then
         begin
              res:=('El caracter es una Vocal.');
         end
         else
         begin
               res:=('El caracter no es una Vocal.');
         end;

    end;

begin
     writeln('Ingrese un caracter');
     readln(caracter);
     voc(caracter,resultado);
     writeln(resultado);

readkey;
end.
