select case 
    when Occupation='Doctor' then concat(concat(concat(Name,'('),'D'),')')
    when Occupation='Actor' then concat(concat(concat(Name,'('),'A'),')') 
    when Occupation='Professor' then concat(concat(concat(Name,'('),'P'),')') 
    when Occupation='Singer' then concat(concat(concat(Name,'('),'S'),')')
    end
from OCCUPATIONS
order by name asc;

select 
concat(concat(concat(concat('There are a total of ',count(Occupation)),' '),lower(Occupation)),'s.')
from OCCUPATIONS
group by Occupation
order by Count(Occupation) asc,lower(Occupation);


output:
Aamina(D) 
Ashley(P) 
Belvet(P) 
Britney(P) 
Christeen(S) 
Eve(A) 
Jane(S) 
Jennifer(A) 
Jenny(S) 
Julia(D) 
Ketty(A) 
Kristeen(S) 
Maria(P) 
Meera(P) 
Naomi(P) 
Priya(D) 
Priyanka(P) 
Samantha(A) 
There are a total of 3 doctors. 
There are a total of 4 actors. 
There are a total of 4 singers. 
There are a total of 7 professors. 
