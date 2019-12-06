{
Dado un texto de un telegrama que termina en punto:
contar la cantidad de palabras que posean más de 10 letras y el % que representan estas sobre el total.
informar la cantidad de veces que aparece cada vocal.
informar el porcentaje de espacios en blanco.
Nota: Las palabras están separadas por un espacio en blanco.
}
Program TP7E15;
uses crt;
var texto:string;
    contpm10,conta,conte,conti,conto,contu:integer;
    porcpm10,porceb:real;

    procedure pal_masde10l(t:string;var cpm10:integer;var ppm10:real);
    var i,cl,cp:integer;
        c:char;
    begin
         c:=' ';
         cl:=0;
         cp:=1;
         cpm10:=0;
         ppm10:=0;
         i:=0;
         for i:=1 to length(t) do
         begin
              c:=t[i];
              if(c=' ')then
              cp:=cp+1;
              if (c<>' ')then
              begin
                   cl:=cl+1;
              end;
         end;
         if cl>10 then
         begin
              cpm10:=cpm10+1;
         end;
         ppm10:=((cpm10*100)div cp);
    end;

    procedure vocal(t:string;var ca:integer;var ce:integer;var ci:integer;var co:integer;var cu:integer);
    var c:char;
        i:integer;
    begin
         c:=' ';
         i:=0;
         for i:=1 to length(t)do
         begin
              c:=t[i];
              case (c) of
              'a':ca:=ca+1;
              'e':ce:=ce+1;
              'i':ci:=ci+1;
              'o':co:=co+1;
              'u':cu:=cu+1;
              end;
         end;
    end;

    procedure espaciosbl(t:string;var peb:real);
    var ceb,i:integer;
        c:char;
    begin
         c:=' ';
         ceb:=0;
         i:=0;
         for i:=1 to length(t)do
         begin
              if (c=' ')then
              begin
                   ceb:=ceb+1;
              end;
         end;
         peb:=ceb/0.1;
    end;

begin
     texto:=(' ');
     writeln('Redacte un telegrama que finalice con un punto.');
     readln(texto);
     pal_masde10l(texto,contpm10,porcpm10);
     vocal(texto,conta,conte,conti,conto,contu);
     espaciosbl(texto,porceb);
     writeln('La cantidad de palabras que posean más de 10 letras es ',contpm10,' y el % que representan estas sobre el total es %',porcpm10:2:2,'.');
     writeln;
     writeln('La cantidad de veces que aparece cada vocal es: ');
     writeln;
     writeln('a: ',conta,' e: ',conte,' i: ',conti,' o: ',conto,' u: ',contu);
     writeln;
     writeln('El porcentaje de espacios en blanco es: %',porceb:2:2);
readkey;
end.
