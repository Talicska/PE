--select * from Film;

--select Filmcim,Rendezte,Hossz,Kolcsdij 
--from Film;

--select Filmcim, Rendezte as 'Rendező', cast (Hossz as varchar)+' perc' as 'Hossza', Kolcsdij as 'Kolcsonzesi dij' 
--from Film;

--select Nev, Szuldat, year(getdate())-year(Szuldat) as 'Eletkor (ev)' 
--from Kolcsonzo order by Nev, Szuldat desc;

--select Nev, Szuldat, year(getdate())-year(Szuldat) as 'Eletkor (ev)' 
--from Kolcsonzo order by 'Eletkor (ev)' desc;

--select distinct Rendezte from Film; --distinctben nem lehet 2 azonos sor

--select top 5 * from Film order by Hossz desc;

--select * from Film where Hossz>120 and Feliratos=0;

--select * from Kolcsonzes where Kiido between '2012-01-01' and '2012-01-31';

--select distinct FilmID from Kolcsonzes where Kiido between '2012-01-01' and '2012-01-31';

--select * from Kolcsonzes where Kiido not between '2012-01-01' and '2012-01-31';

--select * from Film where Rendezte is null or Rendezte=''; --null és ures ertek kulonbozo mssqlben

--select * from Film where Rendezte is not null and Rendezte!='';
--select * from Film where len(Rendezte)>0;		--ugyanaz

--update Film set Rendezte=NULL where Rendezte='';

--select * from Kolcsonzo where Lakcim not like '%Veszprém%';

--select * from Kolcsonzo where Szuldat like '1982%';

--select * from Kolcsonzes where KolcsonzoID not in (3,5,2);
