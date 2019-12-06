program TP5E12;
uses crt;
var i,codigo,cal1,cal2,cal3:integer;
begin
     for i:= 1 to 1000 do
     begin
          writeln('Ingrese el codigo correspondiente al alumno.');
          readln(codigo);
          case codigo of
          1:cal1:=cal1+1;
          2:cal2:=cal2+1;
          3:cal3:=cal3+1;
          end;
     end;
     writeln('La cantidad de alumnos con calificacion 1 es: ',cal1);
     writeln('La cantidad de alumnos con calificacion 2 es: ',cal2);
     writeln('La cantidad de alumnos con calificacion 3 es: ',cal3);
readkey;
end.
