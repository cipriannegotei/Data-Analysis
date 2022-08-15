--Creating the database
create database GL_Sales

use GL_Sales
Set language British


--Formatting GL Jan 2021 Sales table
drop table wipian
select *
INTO wipian
from ian21
where [Nr  crt ]<>''
--(681 rows affected)

--Creating the ready data to export
drop table readyian
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Client beneficiar] AS [DENUM CLIENT],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Baza  impozitare] end AS [TAXABILE 24 BI],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Valoare T V A ] end AS [TAXABILE 24 TVA],
'0.00' [TAXABILE 9 BI],
'0.00' AS [TAXABILE 9 TVA],
'0.00' AS [TAXABILE 5 BI],
'0.00' AS [TAXABILE 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [TAXARE INVERSA BI],
'0.00' AS [TAXARE INVERSA TVA],
'0.00' AS [TAXABILA REG SPEC],
'0.00' AS [BUN EX RO DREPT],
'0.00' AS [BUN EX RO FARA],
case when [Referinta cod *)]<>'12' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143AD],
case when [Referinta cod *)]<>'14' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143BC],
case when [Referinta cod *)]<>'16' then '0.00' else [Baza  impozitare] end AS [SCUT ALTE],
'0.00' AS NEDEDUCTIBILE,
'0.00' AS NEIMPOZABILE,
'0.00' AS [TVA PROCENT]
into readyian
from wipian
--(681 rows affected)




--Formatting GL Feb 2021 Sales table
drop table wipfeb
select *
INTO wipfeb
from feb21
where [Nr  crt ]<>''
--(679 rows affected)

--Creating the ready data to export
drop table readyfeb
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Client beneficiar] AS [DENUM CLIENT],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Baza  impozitare] end AS [TAXABILE 24 BI],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Valoare T V A ] end AS [TAXABILE 24 TVA],
'0.00' [TAXABILE 9 BI],
'0.00' AS [TAXABILE 9 TVA],
'0.00' AS [TAXABILE 5 BI],
'0.00' AS [TAXABILE 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [TAXARE INVERSA BI],
'0.00' AS [TAXARE INVERSA TVA],
'0.00' AS [TAXABILA REG SPEC],
'0.00' AS [BUN EX RO DREPT],
'0.00' AS [BUN EX RO FARA],
case when [Referinta cod *)]<>'12' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143AD],
case when [Referinta cod *)]<>'14' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143BC],
case when [Referinta cod *)]<>'16' then '0.00' else [Baza  impozitare] end AS [SCUT ALTE],
'0.00' AS NEDEDUCTIBILE,
'0.00' AS NEIMPOZABILE,
'0.00' AS [TVA PROCENT]
into readyfeb
from wipfeb
--(681 rows affected)




--Formatting GL Mar 2021 Sales table
drop table wipmar
select *
INTO wipmar
from mar21
where [Nr  crt ]<>''
--(695 rows affected)

--Creating the ready data to export
drop table readymar
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Client beneficiar] AS [DENUM CLIENT],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Baza  impozitare] end AS [TAXABILE 24 BI],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Valoare T V A ] end AS [TAXABILE 24 TVA],
'0.00' [TAXABILE 9 BI],
'0.00' AS [TAXABILE 9 TVA],
'0.00' AS [TAXABILE 5 BI],
'0.00' AS [TAXABILE 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [TAXARE INVERSA BI],
'0.00' AS [TAXARE INVERSA TVA],
'0.00' AS [TAXABILA REG SPEC],
'0.00' AS [BUN EX RO DREPT],
'0.00' AS [BUN EX RO FARA],
case when [Referinta cod *)]<>'12' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143AD],
case when [Referinta cod *)]<>'14' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143BC],
case when [Referinta cod *)]<>'16' then '0.00' else [Baza  impozitare] end AS [SCUT ALTE],
'0.00' AS NEDEDUCTIBILE,
'0.00' AS NEIMPOZABILE,
'0.00' AS [TVA PROCENT]
into readymar
from wipmar
--(695 rows affected)




--Formatting GL Apr 2021 Sales table
drop table wipapr
select *
INTO wipapr
from apr21
where [Nr  crt ]<>''
--(706 rows affected)

--Creating the ready data to export
drop table readyapr
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Client beneficiar] AS [DENUM CLIENT],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Baza  impozitare] end AS [TAXABILE 24 BI],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Valoare T V A ] end AS [TAXABILE 24 TVA],
'0.00' [TAXABILE 9 BI],
'0.00' AS [TAXABILE 9 TVA],
'0.00' AS [TAXABILE 5 BI],
'0.00' AS [TAXABILE 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [TAXARE INVERSA BI],
'0.00' AS [TAXARE INVERSA TVA],
'0.00' AS [TAXABILA REG SPEC],
'0.00' AS [BUN EX RO DREPT],
'0.00' AS [BUN EX RO FARA],
case when [Referinta cod *)]<>'12' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143AD],
case when [Referinta cod *)]<>'14' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143BC],
case when [Referinta cod *)]<>'16' then '0.00' else [Baza  impozitare] end AS [SCUT ALTE],
'0.00' AS NEDEDUCTIBILE,
'0.00' AS NEIMPOZABILE,
'0.00' AS [TVA PROCENT]
into readyapr
from wipapr
--(706 rows affected)



--Formatting GL May 2021 Sales table
drop table wipmai
select *
INTO wipmai
from mai21
where [Nr  crt ]<>''
--(698 rows affected)

--Creating the ready data to export
drop table readymai
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Client beneficiar] AS [DENUM CLIENT],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Baza  impozitare] end AS [TAXABILE 24 BI],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Valoare T V A ] end AS [TAXABILE 24 TVA],
'0.00' [TAXABILE 9 BI],
'0.00' AS [TAXABILE 9 TVA],
'0.00' AS [TAXABILE 5 BI],
'0.00' AS [TAXABILE 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [TAXARE INVERSA BI],
'0.00' AS [TAXARE INVERSA TVA],
'0.00' AS [TAXABILA REG SPEC],
'0.00' AS [BUN EX RO DREPT],
'0.00' AS [BUN EX RO FARA],
case when [Referinta cod *)]<>'12' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143AD],
case when [Referinta cod *)]<>'14' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143BC],
case when [Referinta cod *)]<>'16' then '0.00' else [Baza  impozitare] end AS [SCUT ALTE],
'0.00' AS NEDEDUCTIBILE,
'0.00' AS NEIMPOZABILE,
'0.00' AS [TVA PROCENT]
into readymai
from wipmai
--(681 rows affected)



--Formatting GL Jun 2021 Sales table
drop table wipiun
select *
INTO wipiun
from iun21
where [Nr  crt ]<>''
--(709 rows affected)

--Creating the ready data to export
drop table readyiun
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Client beneficiar] AS [DENUM CLIENT],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Baza  impozitare] end AS [TAXABILE 24 BI],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Valoare T V A ] end AS [TAXABILE 24 TVA],
'0.00' [TAXABILE 9 BI],
'0.00' AS [TAXABILE 9 TVA],
'0.00' AS [TAXABILE 5 BI],
'0.00' AS [TAXABILE 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [TAXARE INVERSA BI],
'0.00' AS [TAXARE INVERSA TVA],
'0.00' AS [TAXABILA REG SPEC],
'0.00' AS [BUN EX RO DREPT],
'0.00' AS [BUN EX RO FARA],
case when [Referinta cod *)]<>'12' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143AD],
case when [Referinta cod *)]<>'14' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143BC],
case when [Referinta cod *)]<>'16' then '0.00' else [Baza  impozitare] end AS [SCUT ALTE],
'0.00' AS NEDEDUCTIBILE,
'0.00' AS NEIMPOZABILE,
'0.00' AS [TVA PROCENT]
into readyiun
from wipiun
--(709 rows affected)



--Formatting GL Jul 2021 Sales table
drop table wipiul
select *
INTO wipiul
from iul21
where [Nr  crt ]<>''
--(715 rows affected)

--Creating the ready data to export
drop table readyiul
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Client beneficiar] AS [DENUM CLIENT],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Baza  impozitare] end AS [TAXABILE 24 BI],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Valoare T V A ] end AS [TAXABILE 24 TVA],
'0.00' [TAXABILE 9 BI],
'0.00' AS [TAXABILE 9 TVA],
'0.00' AS [TAXABILE 5 BI],
'0.00' AS [TAXABILE 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [TAXARE INVERSA BI],
'0.00' AS [TAXARE INVERSA TVA],
'0.00' AS [TAXABILA REG SPEC],
'0.00' AS [BUN EX RO DREPT],
'0.00' AS [BUN EX RO FARA],
case when [Referinta cod *)]<>'12' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143AD],
case when [Referinta cod *)]<>'14' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143BC],
case when [Referinta cod *)]<>'16' then '0.00' else [Baza  impozitare] end AS [SCUT ALTE],
'0.00' AS NEDEDUCTIBILE,
'0.00' AS NEIMPOZABILE,
'0.00' AS [TVA PROCENT]
into readyiul
from wipiul
--(715 rows affected)


--Formatting GL Aug 2021 Sales table
drop table wipaug
select *
INTO wipaug
from aug21
where [Nr  crt ]<>''
--(719 rows affected)

--Creating the ready data to export
drop table readyaug
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Client beneficiar] AS [DENUM CLIENT],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Baza  impozitare] end AS [TAXABILE 24 BI],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Valoare T V A ] end AS [TAXABILE 24 TVA],
'0.00' [TAXABILE 9 BI],
'0.00' AS [TAXABILE 9 TVA],
'0.00' AS [TAXABILE 5 BI],
'0.00' AS [TAXABILE 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [TAXARE INVERSA BI],
'0.00' AS [TAXARE INVERSA TVA],
'0.00' AS [TAXABILA REG SPEC],
'0.00' AS [BUN EX RO DREPT],
'0.00' AS [BUN EX RO FARA],
case when [Referinta cod *)]<>'12' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143AD],
case when [Referinta cod *)]<>'14' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143BC],
case when [Referinta cod *)]<>'16' then '0.00' else [Baza  impozitare] end AS [SCUT ALTE],
'0.00' AS NEDEDUCTIBILE,
'0.00' AS NEIMPOZABILE,
'0.00' AS [TVA PROCENT]
into readyaug
from wipaug
--(719 rows affected)



--Formatting GL Sep 2021 Sales table
drop table wipsep
select *
INTO wipsep
from sep21
where [Nr  crt ]<>''
--(735 rows affected)

--Creating the ready data to export
drop table readysep
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Client beneficiar] AS [DENUM CLIENT],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Baza  impozitare] end AS [TAXABILE 24 BI],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Valoare T V A ] end AS [TAXABILE 24 TVA],
'0.00' [TAXABILE 9 BI],
'0.00' AS [TAXABILE 9 TVA],
'0.00' AS [TAXABILE 5 BI],
'0.00' AS [TAXABILE 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [TAXARE INVERSA BI],
'0.00' AS [TAXARE INVERSA TVA],
'0.00' AS [TAXABILA REG SPEC],
'0.00' AS [BUN EX RO DREPT],
'0.00' AS [BUN EX RO FARA],
case when [Referinta cod *)]<>'12' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143AD],
case when [Referinta cod *)]<>'14' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143BC],
case when [Referinta cod *)]<>'16' then '0.00' else [Baza  impozitare] end AS [SCUT ALTE],
'0.00' AS NEDEDUCTIBILE,
'0.00' AS NEIMPOZABILE,
'0.00' AS [TVA PROCENT]
into readysep
from wipsep
--(681 rows affected)



--Formatting GL Oct 2021 Sales table
drop table wipoct
select *
INTO wipoct
from oct21
where [Nr  crt ]<>''
--(757 rows affected)

--Creating the ready data to export
drop table readyoct
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Client beneficiar] AS [DENUM CLIENT],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Baza  impozitare] end AS [TAXABILE 24 BI],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Valoare T V A ] end AS [TAXABILE 24 TVA],
'0.00' [TAXABILE 9 BI],
'0.00' AS [TAXABILE 9 TVA],
'0.00' AS [TAXABILE 5 BI],
'0.00' AS [TAXABILE 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [TAXARE INVERSA BI],
'0.00' AS [TAXARE INVERSA TVA],
'0.00' AS [TAXABILA REG SPEC],
'0.00' AS [BUN EX RO DREPT],
'0.00' AS [BUN EX RO FARA],
case when [Referinta cod *)]<>'12' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143AD],
case when [Referinta cod *)]<>'14' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143BC],
case when [Referinta cod *)]<>'16' then '0.00' else [Baza  impozitare] end AS [SCUT ALTE],
'0.00' AS NEDEDUCTIBILE,
'0.00' AS NEIMPOZABILE,
'0.00' AS [TVA PROCENT]
into readyoct
from wipoct
--(757 rows affected)




--Formatting GL Nov 2021 Sales table
drop table wipnov
select *
INTO wipnov
from nov21
where [Nr  crt ]<>''
--(744 rows affected)

--Creating the ready data to export
drop table readynov
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Client beneficiar] AS [DENUM CLIENT],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Baza  impozitare] end AS [TAXABILE 24 BI],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Valoare T V A ] end AS [TAXABILE 24 TVA],
'0.00' [TAXABILE 9 BI],
'0.00' AS [TAXABILE 9 TVA],
'0.00' AS [TAXABILE 5 BI],
'0.00' AS [TAXABILE 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [TAXARE INVERSA BI],
'0.00' AS [TAXARE INVERSA TVA],
'0.00' AS [TAXABILA REG SPEC],
'0.00' AS [BUN EX RO DREPT],
'0.00' AS [BUN EX RO FARA],
case when [Referinta cod *)]<>'12' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143AD],
case when [Referinta cod *)]<>'14' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143BC],
case when [Referinta cod *)]<>'16' then '0.00' else [Baza  impozitare] end AS [SCUT ALTE],
'0.00' AS NEDEDUCTIBILE,
'0.00' AS NEIMPOZABILE,
'0.00' AS [TVA PROCENT]
into readynov
from wipnov
--(744 rows affected)




--Formatting GL Dec 2021 Sales table
drop table wipdec
select *
INTO wipdec
from dec21
where [Nr  crt ]<>''
--(777 rows affected)

--Creating the ready data to export
drop table readydec
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Client beneficiar] AS [DENUM CLIENT],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Baza  impozitare] end AS [TAXABILE 24 BI],
case when [Referinta cod *)]<>'6-7' then '0.00' else [Valoare T V A ] end AS [TAXABILE 24 TVA],
'0.00' [TAXABILE 9 BI],
'0.00' AS [TAXABILE 9 TVA],
'0.00' AS [TAXABILE 5 BI],
'0.00' AS [TAXABILE 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [TAXARE INVERSA BI],
'0.00' AS [TAXARE INVERSA TVA],
'0.00' AS [TAXABILA REG SPEC],
'0.00' AS [BUN EX RO DREPT],
'0.00' AS [BUN EX RO FARA],
case when [Referinta cod *)]<>'12' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143AD],
case when [Referinta cod *)]<>'14' then '0.00' else [Baza  impozitare] end AS [SCUTIT INTRA 143BC],
case when [Referinta cod *)]<>'16' then '0.00' else [Baza  impozitare] end AS [SCUT ALTE],
'0.00' AS NEDEDUCTIBILE,
'0.00' AS NEIMPOZABILE,
'0.00' AS [TVA PROCENT]
into readydec
from wipdec
--(778 rows affected)


--Exporting ready data
SELECT * FROM readyian
order by [DOC DATA]

SELECT * FROM readyfeb
order by [DOC DATA]

SELECT * FROM readymar
order by [DOC DATA]

SELECT * FROM readyapr
order by [DOC DATA]

SELECT * FROM readymai
order by [DOC DATA]

SELECT * FROM readyiun
order by [DOC DATA]

SELECT * FROM readyiul
order by [DOC DATA]

SELECT * FROM readyaug
order by [DOC DATA]

SELECT * FROM readysep
order by [DOC DATA]

SELECT * FROM readyoct
order by [DOC DATA]

SELECT * FROM readynov
order by [DOC DATA]

SELECT * FROM readydec
order by [DOC DATA]