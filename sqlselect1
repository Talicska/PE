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

--
--tobb tablas cuccok
--
--select Filmcim, Mufaj from Film, Mufaj; --csak descartes szorzat
--select Filmcim, Mufaj from Film, Mufaj where Film.MufajID=Mufaj.MufajID; 
--ez már jó (n tablanal n-1 szurofeltetel)

--select Filmcim, Mufaj from Film join Mufaj on Film.MufajID=Mufaj.MufajID order by Mufaj, Filmcim;
--select Filmcim, Mufaj from Film f join Mufaj m on f.MufajID=m.MufajID order by Mufaj, Filmcim;

--select Filmcim, Mufaj from Film f right join Mufaj m on f.MufajID=m.MufajID order by Mufaj, Filmcim;
--left, right, full outer, inner(sima join), cross(=descartes szorzat)

--select Mufaj, Film.* 
--from Film join Mufaj on Film.MufajID=Mufaj.MufajID 
--where Mufaj.Mufaj in ('romantikus vígjáték','történelmi kalandfilm') order by Mufaj.Mufaj, Film.Filmcim;

--select Kolcsonzo.*
--from Kolcsonzo left join Kolcsonzes on Kolcsonzo.KolcsonzoID=Kolcsonzes.KolcsonzoID
--where KolcsID is NULL order by Nev;

--select *		--ELOZO BEAGYAZOTT SELECTTEL
--from Kolcsonzo where KolcsonzoID not in (select KolcsonzoID from Kolcsonzes) order by Nev;

--select count(*) as 'Filmek száma' from Film;

--select COUNT(distinct Rendezte) as 'Kulonbozo rendezok' from Film;

--select COUNT(*) as 'Filmek szama' ,AVG(Hossz) as 'Atlaghossz' from Film where Ev<2000;

--select m.Mufaj, COUNT(f.Ssz) as 'Darab'
--from Film f join Mufaj m on f.MufajID=m.MufajID
--group by m.Mufaj order by COUNT(f.Ssz) desc;

--select m.Mufaj, COUNT(f.Ssz) as 'Darab'
--from Film f join Mufaj m on f.MufajID=m.MufajID
--where f.ev<2000		--csak plusz feltetel h mindbol legyen
--group by m.Mufaj	--kiertekeles sorrendje: from where group having order megjelenit
--having COUNT(f.Ssz)>=2
--order by COUNT(f.Ssz) desc;

select ko.Nev, f.Filmcim, COUNT(ks.KolcsonzoID) 
from Kolcsonzo ko join Kolcsonzes ks on ko.KolcsonzoID=ks.KolcsonzoID join Film f on ks.FilmID=f.Ssz
group by ko.Nev, f.Filmcim
order by ko.Nev, f.Filmcim;


















