// Crear un algoritmo de una calculadora donde puedan realizarse las operaciones de Suma, Resta, Producto y Cociente, donde cada una de ellas este
//dentro de un proceso.
Program Calculator;
uses crt;
var n1,n2,suma,resta,producto,cociente:real;
op:integer;
c:char;


     procedure sum (v1:Real;v2:Real;var resultado:real);
     begin
          resultado:=v1+v2;
     end;

     procedure rest (v1:real;v2:Real;var resultado:real);
     begin
          resultado:=v1-v2;
     end;

     procedure mult (v1:Real;v2:Real;var resultado:real);
     begin
          resultado:=v1*v2;
     end;

     procedure divi (v1:Real;v2:Real;var resultado:real);
     begin
          resultado:=v1+v2;
     end;
begin
     c:='s';
     while c='s' do
     begin
          writeln('**************************************');
          textcolor(23);
          Gotoxy(1,2);
          textcolor(23);
          Writeln('*');
          Gotoxy(38,2);
          textcolor(23);
          Writeln('*');
          Gotoxy(5,2);
          textcolor(27);
          writeln('1: Suma.');
          Gotoxy(1,3);
          textcolor(23);
          Writeln('*');
          Gotoxy(38,3);
          textcolor(23);
          Writeln('*');
          Gotoxy(5,3);
          textcolor(27);
          writeln('2: Resta.');
          Gotoxy(1,4);
          textcolor(23);
          Writeln('*');
          Gotoxy(38,4);
          textcolor(23);
          Writeln('*');
          Gotoxy(5,4);
          textcolor(27);
          writeln('3: Producto.');
          Gotoxy(1,5);
          textcolor(23);
          Writeln('*');
          Gotoxy(38,5);
          textcolor(23);
          Writeln('*');
          Gotoxy(5,5);
          textcolor(27);
          writeln('4: Cociente.');
          Gotoxy(1,6);
          textcolor(23);
          Writeln('*');
          Gotoxy(38,6);
          textcolor(23);
          Writeln('*');
          Gotoxy(5,6);
          textcolor(27);
          writeln('¿Que operacion desea realizar?');
          Gotoxy(1,7);
          textcolor(23);
          Writeln('*');
          Gotoxy(38,7);
          textcolor(23);
          Writeln('*');
          Gotoxy(1,7);
          textcolor(23);
          writeln('**************************************');
          textcolor(27);
          readln(op);
          textcolor(23);
          writeln('Ingrese un primer numero.');
          textcolor(27);
          readln(n1);
          textcolor(23);
          writeln('Ingrese un segundo numero.');
          textcolor(27);
          readln(n2);

textcolor(23);
case (op) of
1: begin
         sum(n1,n2,suma);
         writeln('El resultado de la suma es: ',suma:2:2);
         writeln('¿Desea continuar?');
         readln(c);
   end;

2: begin
        rest (n1,n2,resta);
        writeln('El resultado de la resta es: ',resta:2:2);
        writeln('¿Desea continuar?');
        readln(c);
   end;

3: begin
       mult (n1,n2,producto);
       writeln('El resultado del producto es: ',producto:2:2);
       writeln('¿Desea continuar?');
       readln(c);
   end;

4: begin
       divi (n1,n2,cociente);
       if (n2=0) then
       begin
            writeln('No se puede dividir por cero ¡Zapato!...');
       end

       else
       begin
            writeln('El resultado del producto es: ',cociente:2:2);
       end;
            writeln('¿Desea continuar?');
            readln(c);
   end;
end;
    end;
end.
