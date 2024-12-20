
--LISTA 1		
--1)

select * from treina.tbimovel
select * from treina.tblogradouro
select * from treina.tbpessoa
select * from treina.tbpessoacontato
select * from treina.tbpessoaimovel
select * from treina.tbtaxa

--2)

--a)
	select pescodigo,
	      ctpnumero
     from treina.tbpessoacontato
		
--b)
 SELECT imvcodigo,
 		imvlargura,
		imvcomprimento
   from treina.tbimovel

--c)
SELECT pescodigo as "Codigo da pessoa",
 		pesnome,
		pestipo
   FROM treina.tbpessoa

-- 3)
 
-- a)
 SELECT * 
   FROM TREINA.TBPESSOACONTATO
  WHERE CTPDESCRICAO = 'CELULAR'
 
-- b)
SELECT PESCODIGO,
       CTPNUMERO
  FROM TREINA.TBPESSOACONTATO
 WHERE PESCODIGO = 5;
 
 --c)
 SELECT IMVCODIGO,
          IMVLARGURA,
		  IMVCOMPRIMENTO
	 FROM TREINA.TBIMOVEL
    WHERE IMVCOMPRIMENTO > 12;

--4)

--a)
   SELECT * 
     FROM TREINA.TBPESSOA
	WHERE LOGCODIGO IN (1,7,12);
--b)
 SELECT * 
     FROM TREINA.TBPESSOA
	WHERE PESCODIGO BETWEEN 4 AND 8;
--c)
 SELECT * 
     FROM TREINA.TBPESSOA
	WHERE PESNOME LIKE '%PADARIA%';


--LISTA2
--1)

--a)
SELECT *
  FROM TREINA.TBPESSOACONTATO
 WHERE CTPNUMERO 
  LIKE '47%'
   AND CTPDESCRICAO = 'CELULAR';

--b)
SELECT LOGTIPO,
 	   LOGDESCRICAO
  FROM TREINA.TBLOGRADOURO
 WHERE LOGTIPO = 'TRAVESSA'
    OR LOGTIPO = 'RUA';
--c)
SELECT *
  FROM TREINA.TBPESSOACONTATO
 WHERE CTPRAMAL IS NOT NULL;

-- 2)
 
-- a)
 SELECT *
     FROM TREINA.TBPESSOACONTATO
    WHERE CTPDESCRICAO = 'FIXO'
 ORDER BY CTPNUMERO ASC;

-- b)
 SELECT *
     FROM TREINA.TBPESSOA
 ORDER BY IMVCOMPRIMENTO DESC;

-- 3)
           SELECT *
             FROM TREINA.TBPESSOA
   			WHERE PESCODIGO
 		  BETWEEN 8 AND 12 
		      AND PESCODIGO 
	  NOT BETWEEN 4 AND 7;
 
--4)

--a)
SELECT *
  FROM TREINA.TBPESSOA
 LIMIT 5
OFFSET 3;

--b)
SELECT *
     FROM TREINA.TBPESSOA
    WHERE PESNOME NOT LIKE 'P%'
 ORDER BY PESNOME ASC
    LIMIT 3
   OFFSET 3;
   
--5)

--a)
SELECT MAX(IMVLARGURA * IMVCOMPRIMENTO)
    FROM TREINA.TBIMOVEL
--b)
 SELECT COUNT(*)
  	FROM TREINA.TBIMOVEL
   WHERE IMVDESCRICAO LIKE '%MADEIRA%';
--c)
  SELECT SUM(IMVLARGURA)
  	FROM TREINA.TBIMOVEL

--6)

--a)
SELECT IMVCODIGO AS "CODIGO",
  		 IMVDESCRICAO AS "DESCRIÇÃO",
		 IMVLARGURA AS "LARGURA",
		 IMVCOMPRIMENTO AS "COMPRIMENTO"
   	FROM TREINA.TBIMOVEL
ORDER BY IMVCODIGO DESC;

--b)
SELECT PESCODIGO AS "Código da pessoa",
            PESNOME AS "Nome da pessoa"
	   FROM TREINA.TBPESSOA
      WHERE PESSEXO = 2
   ORDER BY PESNOME ASC
      LIMIT 4;

--7)
 SELECT DISTINCT(LOGTIPO)
   FROM TREINA.TBLOGRADOURO
--8)
SELECT COUNT(DISTINCT(CTPDESCRICAO))
	   FROM TREINA.TBPESSOACONTATO


--LISTA 3
--1)

--a)
     SELECT * 
	   FROM TREINA.TBPESSOACONTATO
	  WHERE TBPESSOACONTATO.CTPDESCRICAO = 'FIXO' 
	     OR TBPESSOACONTATO.CTPDESCRICAO = 'CELULAR'
--b)
  SELECT * 
	   FROM TREINA.TBPESSOA
	  WHERE LOGCODIGO = 12
	     OR LOGCODIGO = 4
--c)
	 SELECT * 
	   FROM TREINA.TBTAXA
	  WHERE TAXCODIGO = 1
	     OR TAXCODIGO = 5
	     OR TAXCODIGO = 6
	     OR TAXCODIGO = 7
--d)
     SELECT * 
	   FROM TREINA.TBTAXA
	  WHERE IMVCODIGO = 6
	    AND PESCODIGO = 2;
--2)

--a)

     SELECT * 
	   FROM TREINA.TBIMOVEL
	  WHERE IMVLARGURA BETWEEN 10 AND 13;
--b)
     SELECT * 
	   FROM TREINA.TBPESSOA
	  WHERE PESNOME LIKE 'A%' AND PESNOME LIKE '%A'
--c)
     SELECT * 
	   FROM TREINA.TBIMOVEL
	  WHERE IMVLARGURA BETWEEN 10 AND 12
	    AND IMVCOMPRIMENTO BETWEEN 11 AND 13

--3)

--a)
     SELECT * 
	   FROM TREINA.TBPESSOACONTATO
	  WHERE CTPNUMERO NOT LIKE '47%'
	    AND CTPDESCRICAO = 'CELULAR';
--b)
     SELECT * 
	   FROM TREINA.TBIMOVEL
	  WHERE IMVDESCRICAO NOT LIKE '%ALVENARIA%'
	    AND IMVLARGURA > 10;
--c)
     SELECT * 
	   FROM TREINA.TBIMOVEL
	  WHERE IMVDESCRICAO LIKE '%MISTA%'
	    AND LOGCODIGO != 10;
--4)

--a)
     SELECT * 
	   FROM TREINA.TBPESSOA
	  WHERE PESSEXO = 2
   ORDER BY PESNOME ASC
      LIMIT 2
	 OFFSET 2;
--b)
     SELECT PESCODIGO AS "Código da pessoa",
	 		IMVCODIGO AS "Código do imóvel",
	 		TAXCODIGO AS "Código da taxa",
	 		TAXVALOR AS "Valor da taxa"
	   FROM TREINA.TBTAXA
	  WHERE TAXVALOR > 80.00
   ORDER BY TAXVALOR DESC
     OFFSET 1;

--5)

--a)
     SELECT MIN(IMVLARGURA)
	   FROM TREINA.TBIMOVEL
--b)
     SELECT COUNT(*)
	   FROM TREINA.TBIMOVEL
	  WHERE IMVDESCRICAO ILIKE '%ALVENARIA%'
--c)
     SELECT AVG(IMVCOMPRIMENTO	)
	   FROM TREINA.TBIMOVEL

--LISTA 4
--1)
   SELECT PESNOME,
          LOGTIPO,
		  LOGDESCRICAO
	 FROM TREINA.TBPESSOA
	 JOIN TREINA.TBLOGRADOURO
	   ON TBPESSOA.LOGCODIGO = TBLOGRADOURO.LOGCODIGO;

--2)
   SELECT PESNOME,
          TBIMOVEL.IMVCODIGO,
		  IMVDESCRICAO
	 FROM TREINA.TBPESSOA
LEFT JOIN TREINA.TBPESSOAIMOVEL
	   ON TBPESSOA.PESCODIGO = TBPESSOAIMOVEL.PESCODIGO
LEFT JOIN TREINA.TBIMOVEL
       ON TBPESSOAIMOVEL.IMVCODIGO = TBIMOVEL.IMVCODIGO;

--3)
    SELECT PESNOME,
           CTPDESCRICAO,
		   CTPNUMERO	
	  FROM TREINA.TBPESSOA
	  JOIN TREINA.TBPESSOACONTATO
	    ON TBPESSOA.PESCODIGO = TBPESSOACONTATO.PESCODIGO
	 WHERE TBPESSOACONTATO.CTPNUMERO LIKE '47%'
	   AND TBPESSOACONTATO.CTPDESCRICAO = 'CELULAR'
  ORDER BY PESNOME ASC

--4)

  SELECT PESNOME,
           CTPNUMERO,
		   IMVDESCRICAO,
		   TBIMOVEL.IMVLARGURA* TBIMOVEL.IMVCOMPRIMENTO,
		   LOGTIPO,
		   LOGDESCRICAO
	  FROM TREINA.TBIMOVEL
	  JOIN TREINA.TBLOGRADOURO
	    ON TBIMOVEL.LOGCODIGO = TBLOGRADOURO.LOGCODIGO
	  JOIN TREINA.TBPESSOA
	    ON TBPESSOA.LOGCODIGO = TBLOGRADOURO.LOGCODIGO
	  JOIN TREINA.TBPESSOACONTATO
	    ON TBPESSOA.PESCODIGO = TBPESSOACONTATO.PESCODIGO

--5)
   SELECT PESNOME,
          COUNT(TBPESSOACONTATO.CTPNUMERO)
     FROM TREINA.TBPESSOA
LEFT JOIN TREINA.TBPESSOACONTATO
       ON TBPESSOA.PESCODIGO = TBPESSOACONTATO.PESCODIGO
 GROUP BY PESNOME;


--LISTA 5)
--1)
INSERT INTO TREINA.TBLOGRADOURO (LOGTIPO,LOGDESCRICAO)
  VALUES ('TRAVESSA','CINCO'),
 		 ('AVENIDA','CINCO'),
  		 ('AVENIDA','SEIS'),
  		 ('RUA','CINCO');

--2)
INSERT INTO TREINA.TBPESSOA (PESNOME,PESSEXO,PESTIPO,LOGCODIGO)
  VALUES ('ANTONIO WILSON',1,1,5),
 		 ('ELISANE PORTELA',2,1,5),
  		 ('FERNANDES DE SOUSA',1,1,6),
  		 ('MERCEARIA',3,2,5);

--3)
 INSERT INTO TREINA.TBPESSOACONTATO (PESCODIGO,CTPNUMERO,CTPDESCRICAO,CTPRAMAL)
  VALUES (17, '47-99635-1425', 'CELULAR',NULL),
		 (18, '48-98868-3313', 'CELULAR', NULL),
		 (18, '47-99889-2559', 'CELULAR', NULL),
         (19, '47-3522-136', 'FIXO', 258),
		 (20, '47-3539-3258', 'FIXO', NULL);

--4)
 INSERT INTO TREINA.TBIMOVEL (IMVDESCRICAO,IMVLARGURA,IMVCOMPRIMENTO,LOGCODIGO)
	      VALUES ('CASA DE MADEIRA 5',13,14,5),
				 ('CASA DE ALVENARIA 5',15,19,5),
				 ('CASA DE MADEIRA 6',14,15,6),
				 ('CASA DE ALVENARIA 6',17,14,5),
				 ('CASA DE MADEIRA 7',13,13,6);

--5)

--a)
SELECT PESCODIGO
  FROM TREINA.TBPESSOA
 WHERE PESNOME = 'ANTONIO WILSON'

 --17

 SELECT IMVCODIGO
   FROM TREINA.TBIMOVEL
  WHERE IMVDESCRICAO = 'CASA DE MADEIRA 6'

  --15

  INSERT INTO TREINA.TBPESSOAIMOVEL (PESCODIGO,IMVCODIGO)
       VALUES (17,15)

--B)
SELECT PESCODIGO
  FROM TREINA.TBPESSOA
 WHERE PESNOME = 'ELISANE PORTELA'

-- 18

SELECT IMVCODIGO
  FROM TREINA.TBIMOVEL
 WHERE IMVDESCRICAO = 'CASA DE MADEIRA 7'

 --17

 INSERT INTO TREINA.TBPESSOAIMOVEL (PESCODIGO,IMVCODIGO)
      VALUES (18, 17)
--C)
SELECT PESCODIGO
  FROM TREINA.TBPESSOA
 WHERE PESNOME = 'MERCEARIA'

-- 20

SELECT IMVCODIGO
  FROM TREINA.TBIMOVEL
 WHERE IMVDESCRICAO = 'CASA DE MADEIRA 6'

 --15

 INSERT INTO TREINA.TBPESSOAIMOVEL (PESCODIGO,IMVCODIGO)
      VALUES (20, 15)
--D)
SELECT PESCODIGO
  FROM TREINA.TBPESSOA
 WHERE PESNOME = 'MERCEARIA'

-- 20

SELECT IMVCODIGO
  FROM TREINA.TBIMOVEL
 WHERE IMVDESCRICAO = 'CASA DE ALVENARIA 5'

 --14

 INSERT INTO TREINA.TBPESSOAIMOVEL (PESCODIGO,IMVCODIGO)
      VALUES (20, 14)
	  
--6)

--A)
SELECT PESCODIGO
  FROM TREINA.TBPESSOA
 WHERE PESNOME = 'ANTONIO WILSON'

 SELECT IMVCODIGO
  FROM TREINA.TBIMOVEL
 WHERE IMVDESCRICAO = 'CASA DE MADEIRA 6'

 INSERT INTO TREINA.TBTAXA (PESCODIGO, IMVCODIGO, TAXVALOR)
      VALUES (17,15,321.00)
	  
--B)
SELECT PESCODIGO
  FROM TREINA.TBPESSOA
 WHERE PESNOME = 'ELISANE PORTELA'

 SELECT IMVCODIGO
  FROM TREINA.TBIMOVEL
 WHERE IMVDESCRICAO = 'CASA DE MADEIRA 7'

 INSERT INTO TREINA.TBTAXA (PESCODIGO, IMVCODIGO, TAXVALOR)
      VALUES (18,17,1000.00)

--C)
SELECT PESCODIGO
  FROM TREINA.TBPESSOA
 WHERE PESNOME = 'MERCEARIA'

 SELECT IMVCODIGO
  FROM TREINA.TBIMOVEL
 WHERE IMVDESCRICAO = 'CASA DE MADEIRA 6'

 INSERT INTO TREINA.TBTAXA (PESCODIGO, IMVCODIGO, TAXVALOR)
      VALUES (20,15,173.80)
	  
--D)
SELECT PESCODIGO
  FROM TREINA.TBPESSOA
 WHERE PESNOME = 'MERCEARIA'

 SELECT IMVCODIGO
  FROM TREINA.TBIMOVEL
 WHERE IMVDESCRICAO = 'CASA DE ALVENARIA 5'

 INSERT INTO TREINA.TBTAXA (PESCODIGO, IMVCODIGO, TAXVALOR)
      VALUES (20,14,0.00)

--7)

--A)

UPDATE TREINA.TBPESSOA
   SET LOGCODIGO = '7'
 WHERE PESCODIGO = '3'
 
--b)

UPDATE TREINA.TBPESSOA
   SET LOGCODIGO = '8'
 WHERE PESCODIGO = '5' OR PESCODIGO = '7'


--c)

UPDATE TREINA.TBPESSOACONTATO
   SET CTPDESCRICAO = 'TELEFONE FIXO'
 WHERE CTPDESCRICAO ='FIXO'

 
--d)
UPDATE TREINA.TBIMOVEL
   SET IMVLARGURA = 14, IMVCOMPRIMENTO = 14
 WHERE IMVCODIGO = 8
 
--8)
--a)
  DELETE 
     FROM TREINA.TBIMOVEL
    WHERE IMVDESCRICAO ILIKE '%MADEIRA%' AND IMVLARGURA > 15
	
--b)

DELETE FROM TREINA.TBPESSOACONTATO
 WHERE CTPRAMAL = 1537
   



