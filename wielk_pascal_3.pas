{cybremoon.w.interia.pl}


{
Algorytm dziala dla wszystkich lat !!!!
The date of Easter is computed by an algorithm found in the book of Meeus,
which is valid without exceptions for all years in the Gregorian Calendar (from the year 1583 on)
}



uses wincrt;

var y:word;
    a,c,d,e,f,g,h,i,k,l,m,n,p,b:integer;

begin

write('Podaj Rok : ');readln(y);

a:= y mod 19;
b:= round(int(y/100));
c:= y mod 100;
d:= round(int(b/4));
e:= b mod 4;
f:= round(int((b+8)/25));
g:= round(int((b-f+1)/3));
h:= (19*a+b-d-g+15) mod 30;
i:= round(int(c/4));
k:= c mod 4;
l:= (32+2*e+2*i-h-k) mod 7;
m:= round(int((a+11*h+22*l)/451));
n:= round(int((h+l-7*m+114)/31));{numer miesiaca}
p:= (h+l-7*m+114) mod 31;{dzien miesiaca}

p:= round(p+1);

write('Data Wielkanocy to : ',p,' ');
if n=4 then writeln('Kwiecien ',y,' .') else writeln('Marzec ',y,' .');


readln;

end.


