--Creating the database
Create database GL_Acquisitions

use GL_Acquisitions
Set language British



--Formatting GL Jan 2021 Acquisitions table
drop table wipianc
select *
INTO wipianc
from ian21c
where [Nr  crt ]<>''
--(185 rows affected)

--Creating the ready data to export
drop table readyianc
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Furnizor prestator] AS [FURNIZOR],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Baza  impozitare] end AS [ACHI TARA 24 BI],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Valoare T V A ] end AS [ACHI TARA 24 TVA],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 9 BI],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 9 TVA],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 5 BI],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [ACHI TARA SCUTITE],
'0.00' AS [ACHI UE BI],
'0.00' AS [ACHI UE TVA],
'0.00' AS [ACHI UE SCUTITE],
'0.00' AS [ACHI UE NEIMP],
'0.00' AS [BUNURI OBLIG ART 150 BI],
'0.00' AS [BUNURI OBLIG ART 150 TVA],
'0.00' AS [BUNURI OBLIG ART 160 BI],
'0.00' AS [BUNURI OBLIG ART 160 TVA],
'0.00' AS [TVA PROCENT]
into readyianc
from wipianc
--(185 rows affected)




--Formatting GL Feb 2021 Acquisitions table
drop table wipfebc
select *
INTO wipfebc
from feb21c
where [Nr  crt ]<>''
--(81 rows affected)

--Creating the ready data to export
drop table readyfebc
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Furnizor prestator] AS [FURNIZOR],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Baza  impozitare] end AS [ACHI TARA 24 BI],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Valoare T V A ] end AS [ACHI TARA 24 TVA],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 9 BI],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 9 TVA],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 5 BI],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [ACHI TARA SCUTITE],
'0.00' AS [ACHI UE BI],
'0.00' AS [ACHI UE TVA],
'0.00' AS [ACHI UE SCUTITE],
'0.00' AS [ACHI UE NEIMP],
'0.00' AS [BUNURI OBLIG ART 150 BI],
'0.00' AS [BUNURI OBLIG ART 150 TVA],
'0.00' AS [BUNURI OBLIG ART 160 BI],
'0.00' AS [BUNURI OBLIG ART 160 TVA],
'0.00' AS [TVA PROCENT]
into readyfebc
from wipfebc
--(185 rows affected)






--Formatting GL Mar 2021 Acquisitions table
drop table wipmarc
select *
INTO wipmarc
from mar21c
where [Nr  crt ]<>''
--(101 rows affected)

--Creating the ready data to export
drop table readymarc
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Furnizor prestator] AS [FURNIZOR],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Baza  impozitare] end AS [ACHI TARA 24 BI],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Valoare T V A ] end AS [ACHI TARA 24 TVA],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 9 BI],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 9 TVA],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 5 BI],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [ACHI TARA SCUTITE],
'0.00' AS [ACHI UE BI],
'0.00' AS [ACHI UE TVA],
'0.00' AS [ACHI UE SCUTITE],
'0.00' AS [ACHI UE NEIMP],
'0.00' AS [BUNURI OBLIG ART 150 BI],
'0.00' AS [BUNURI OBLIG ART 150 TVA],
'0.00' AS [BUNURI OBLIG ART 160 BI],
'0.00' AS [BUNURI OBLIG ART 160 TVA],
'0.00' AS [TVA PROCENT]
into readymarc
from wipmarc
--(101 rows affected)





--Formatting GL Apr 2021 Acquisitions table
drop table wipaprc
select *
INTO wipaprc
from apr21c
where [Nr  crt ]<>''
--(109 rows affected)

--Creating the ready data to export
drop table readyaprc
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Furnizor prestator] AS [FURNIZOR],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Baza  impozitare] end AS [ACHI TARA 24 BI],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Valoare T V A ] end AS [ACHI TARA 24 TVA],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 9 BI],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 9 TVA],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 5 BI],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [ACHI TARA SCUTITE],
'0.00' AS [ACHI UE BI],
'0.00' AS [ACHI UE TVA],
'0.00' AS [ACHI UE SCUTITE],
'0.00' AS [ACHI UE NEIMP],
'0.00' AS [BUNURI OBLIG ART 150 BI],
'0.00' AS [BUNURI OBLIG ART 150 TVA],
'0.00' AS [BUNURI OBLIG ART 160 BI],
'0.00' AS [BUNURI OBLIG ART 160 TVA],
'0.00' AS [TVA PROCENT]
into readyaprc
from wipaprc
--(109 rows affected)



--Formatting GL May 2021 Acquisitions table
drop table wipmaic
select *
INTO wipmaic
from mai21c
where isnumeric([Nr  crt ]) = 1
--(86 rows affected)

--Creating the ready data to export
drop table readymaic
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Furnizor prestator] AS [FURNIZOR],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Baza  impozitare] end AS [ACHI TARA 24 BI],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Valoare T V A ] end AS [ACHI TARA 24 TVA],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 9 BI],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 9 TVA],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 5 BI],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [ACHI TARA SCUTITE],
'0.00' AS [ACHI UE BI],
'0.00' AS [ACHI UE TVA],
'0.00' AS [ACHI UE SCUTITE],
'0.00' AS [ACHI UE NEIMP],
'0.00' AS [BUNURI OBLIG ART 150 BI],
'0.00' AS [BUNURI OBLIG ART 150 TVA],
'0.00' AS [BUNURI OBLIG ART 160 BI],
'0.00' AS [BUNURI OBLIG ART 160 TVA],
'0.00' AS [TVA PROCENT]
into readymaic
from wipmaic
--(86 rows affected)




--Formatting GL Jun 2021 Acquisitions table
drop table wipiunc
select *
INTO wipiunc
from iun21c
where isnumeric([Nr  crt ]) = 1
--(127 rows affected)

--Creating the ready data to export
drop table readyiunc
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Furnizor prestator] AS [FURNIZOR],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Baza  impozitare] end AS [ACHI TARA 24 BI],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Valoare T V A ] end AS [ACHI TARA 24 TVA],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 9 BI],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 9 TVA],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 5 BI],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [ACHI TARA SCUTITE],
'0.00' AS [ACHI UE BI],
'0.00' AS [ACHI UE TVA],
'0.00' AS [ACHI UE SCUTITE],
'0.00' AS [ACHI UE NEIMP],
'0.00' AS [BUNURI OBLIG ART 150 BI],
'0.00' AS [BUNURI OBLIG ART 150 TVA],
'0.00' AS [BUNURI OBLIG ART 160 BI],
'0.00' AS [BUNURI OBLIG ART 160 TVA],
'0.00' AS [TVA PROCENT]
into readyiunc
from wipiunc
--(127 rows affected)



--Formatting GL Jul 2021 Acquisitions table
drop table wipiulc
select *
INTO wipiulc
from iul21c
where isnumeric([Nr  crt ]) = 1
--(172 rows affected)

--Creating the ready data to export
drop table readyiulc
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Furnizor prestator] AS [FURNIZOR],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Baza  impozitare] end AS [ACHI TARA 24 BI],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Valoare T V A ] end AS [ACHI TARA 24 TVA],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 9 BI],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 9 TVA],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 5 BI],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [ACHI TARA SCUTITE],
'0.00' AS [ACHI UE BI],
'0.00' AS [ACHI UE TVA],
'0.00' AS [ACHI UE SCUTITE],
'0.00' AS [ACHI UE NEIMP],
'0.00' AS [BUNURI OBLIG ART 150 BI],
'0.00' AS [BUNURI OBLIG ART 150 TVA],
'0.00' AS [BUNURI OBLIG ART 160 BI],
'0.00' AS [BUNURI OBLIG ART 160 TVA],
'0.00' AS [TVA PROCENT]
into readyiulc
from wipiulc
--(172 rows affected)



--Formatting GL Aug 2021 Acquisitions table
drop table wipaugc
select *
INTO wipaugc
from aug21c
where isnumeric([Nr  crt ]) = 1
--(162 rows affected)

--Creating the ready data to export
drop table readyaugc
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Furnizor prestator] AS [FURNIZOR],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Baza  impozitare] end AS [ACHI TARA 24 BI],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Valoare T V A ] end AS [ACHI TARA 24 TVA],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 9 BI],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 9 TVA],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 5 BI],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [ACHI TARA SCUTITE],
'0.00' AS [ACHI UE BI],
'0.00' AS [ACHI UE TVA],
'0.00' AS [ACHI UE SCUTITE],
'0.00' AS [ACHI UE NEIMP],
'0.00' AS [BUNURI OBLIG ART 150 BI],
'0.00' AS [BUNURI OBLIG ART 150 TVA],
'0.00' AS [BUNURI OBLIG ART 160 BI],
'0.00' AS [BUNURI OBLIG ART 160 TVA],
'0.00' AS [TVA PROCENT]
into readyaugc
from wipaugc
--(162 rows affected)

SELECT * FROM readyaugc


--Formatting GL Sep 2021 Acquisitions table
drop table wipsepc
select *
INTO wipsepc
from sep21c
where isnumeric([Nr  crt ]) = 1
--(230 rows affected)

--Creating the ready data to export
drop table readysepc
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Furnizor prestator] AS [FURNIZOR],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Baza  impozitare] end AS [ACHI TARA 24 BI],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Valoare T V A ] end AS [ACHI TARA 24 TVA],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 9 BI],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 9 TVA],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 5 BI],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [ACHI TARA SCUTITE],
'0.00' AS [ACHI UE BI],
'0.00' AS [ACHI UE TVA],
'0.00' AS [ACHI UE SCUTITE],
'0.00' AS [ACHI UE NEIMP],
'0.00' AS [BUNURI OBLIG ART 150 BI],
'0.00' AS [BUNURI OBLIG ART 150 TVA],
'0.00' AS [BUNURI OBLIG ART 160 BI],
'0.00' AS [BUNURI OBLIG ART 160 TVA],
'0.00' AS [TVA PROCENT]
into readysepc
from wipsepc
--(230 rows affected)



--Formatting GL Oct 2021 Acquisitions table
drop table wipoctc
select *
INTO wipoctc
from oct21c
where isnumeric([Nr  crt ]) = 1
--(185 rows affected)

--Creating the ready data to export
drop table readyoctc
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Furnizor prestator] AS [FURNIZOR],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Baza  impozitare] end AS [ACHI TARA 24 BI],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Valoare T V A ] end AS [ACHI TARA 24 TVA],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 9 BI],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 9 TVA],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 5 BI],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [ACHI TARA SCUTITE],
'0.00' AS [ACHI UE BI],
'0.00' AS [ACHI UE TVA],
'0.00' AS [ACHI UE SCUTITE],
'0.00' AS [ACHI UE NEIMP],
'0.00' AS [BUNURI OBLIG ART 150 BI],
'0.00' AS [BUNURI OBLIG ART 150 TVA],
'0.00' AS [BUNURI OBLIG ART 160 BI],
'0.00' AS [BUNURI OBLIG ART 160 TVA],
'0.00' AS [TVA PROCENT]
into readyoctc
from wipoctc
--(185 rows affected)



--Formatting GL Nov 2021 Acquisitions table
drop table wipnovc 
select *
INTO wipnovc
from nov21c
where isnumeric([Nr  crt ]) = 1
--(191 rows affected)

--Creating the ready data to export
drop table readynovc
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Furnizor prestator] AS [FURNIZOR],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Baza  impozitare] end AS [ACHI TARA 24 BI],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Valoare T V A ] end AS [ACHI TARA 24 TVA],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 9 BI],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 9 TVA],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 5 BI],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [ACHI TARA SCUTITE],
'0.00' AS [ACHI UE BI],
'0.00' AS [ACHI UE TVA],
'0.00' AS [ACHI UE SCUTITE],
'0.00' AS [ACHI UE NEIMP],
'0.00' AS [BUNURI OBLIG ART 150 BI],
'0.00' AS [BUNURI OBLIG ART 150 TVA],
'0.00' AS [BUNURI OBLIG ART 160 BI],
'0.00' AS [BUNURI OBLIG ART 160 TVA],
'0.00' AS [TVA PROCENT]
into readynovc
from wipnovc
--(191 rows affected)



--Formatting GL Dec 2021 Acquisitions table
drop table wipdecc
select *
INTO wipdecc
from dec21c
where isnumeric([Nr  crt ]) = 1
--(295 rows affected)

--Creating the ready data to export
drop table readydecc
SELECT 
[Nr  crt ] as [NR CRT],
Numar as [DOC NR],
Data as [DOC DATA],
[Furnizor prestator] AS [FURNIZOR],
[Cod fiscal] AS [COD TVA],
[Total document (inclusiv TVA)] AS [TOTAL DOC CU TVA],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Baza  impozitare] end AS [ACHI TARA 24 BI],
case when [Referinta cod *)] not in ('6-7', '15-16', '21-22') then '0.00' else [Valoare T V A ] end AS [ACHI TARA 24 TVA],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 9 BI],
case when [Referinta cod *)] <> '8-9' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 9 TVA],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Baza  impozitare] end AS [ACHI TARA 5 BI],
case when [Referinta cod *)] <> '19-20' then '0.00' else [Valoare T V A ] end AS [ACHI TARA 5 TVA],
case when [Referinta cod *)]<>'10' then '0.00' else [Baza  impozitare] end AS [ACHI TARA SCUTITE],
'0.00' AS [ACHI UE BI],
'0.00' AS [ACHI UE TVA],
'0.00' AS [ACHI UE SCUTITE],
'0.00' AS [ACHI UE NEIMP],
'0.00' AS [BUNURI OBLIG ART 150 BI],
'0.00' AS [BUNURI OBLIG ART 150 TVA],
'0.00' AS [BUNURI OBLIG ART 160 BI],
'0.00' AS [BUNURI OBLIG ART 160 TVA],
'0.00' AS [TVA PROCENT]
into readydecc
from wipdecc
--(295 rows affected)



--Export ready data
SELECT * FROM readyianc
order by [DOC DATA]

SELECT * FROM readyfebc
order by [DOC DATA]

SELECT * FROM readymarc
order by [DOC DATA]

SELECT * FROM readyaprc
order by [DOC DATA]

SELECT * FROM readymaic
order by [DOC DATA]

SELECT * FROM readyiunc
order by [DOC DATA]

SELECT * FROM readyiulc
order by [DOC DATA]

SELECT * FROM readyaugc
order by [DOC DATA]

SELECT * FROM readysepc
order by [DOC DATA]

SELECT * FROM readyoctc
order by [DOC DATA]

SELECT * FROM readynovc
order by [DOC DATA]

SELECT * FROM readydecc
order by [DOC DATA]