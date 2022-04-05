DECLARE @TINYINT AS TINYINT = 255 -- 1 Byte
DECLARE @SMALLINT AS SMALLINT = 32767 -- 2 Byte
DECLARE @INT AS INT = 2147483647 -- 4 Byte
DECLARE @BIT AS BIT = 0 -- 1 Byte

SELECT @TINYINT, @SMALLINT, @INT, @BIT


-- CHAR(1-8000) , VARCHAR(1-8000)  --> Die Anzahl der Zeichen beschreibt die Speichergröße in Bytes bei CHAR; bei VARCHAR + 2 Bytes
-- NCHAR(1-4000), NVARCHAR(1-4000) --> Die Anzahl der Zeichen beschreibt die Speichergröße in Bytes bei NCHAR; bei NVARCHAR + 2 Bytes
-- NCHAR und NVARCHAR erlauben das Benutzen von UNICODE-Zeichen

DECLARE @CHAR AS CHAR(10) = 'Hallo'
DECLARE @VARCHAR AS VARCHAR(10) = 'hALLO'
DECLARE @VARCHAR2 AS VARCHAR(3) = 'Otto'

/*
CHAR(10) = 'Hallo'      --> Hallo-----
VARCHAR(10) = 'Hallo'   --> Hallo
*/

SELECT @CHAR,@VARCHAR,@VARCHAR2
      ,DATALENGTH(@CHAR)
	  ,DATALENGTH(@VARCHAR)

/*
CHAR -> VARCHAR -> NVARCHAR -> TINYINT -> INT -> DECIMAL -> TIME -> DATE -> DATETIME2 -> XML
*/


-- CAST
-- Syntax: CAST(<Spaltenname|Variable|Wert> AS <Datentyp, in dem konvertiert werden soll>)

-- CONVERT
-- Syntax: CONVERT(<Datentypen, in dem konvertiert werden soll>, <Spaltenname|Variable|Wert> (, <Style (Wie soll Datum dargestellt werden)>))
/*
101: mm/dd/yyyy
102: yyyy.mm.dd
103: dd/mm/yyyy
104: dd.mm.yyyy
105: dd-mm-yyyy
*/
DECLARE @Datum AS DATETIME = GETDATE()

SELECT CONVERT(varchar(10),@Datum,101) AS Deutschland
      ,CONVERT(varchar(10),@Datum,102) 
      ,CONVERT(varchar(10),@Datum,104)



-- Deklarieren Sie folgende Variablen:
DECLARE @Datum2 AS DATETIME = '2001-10-24'

-- @Datum2 zu einem VARCHAR konvertieren, der 10 Zeichen annimmt. Das Datum soll in UK, USA und Deutschland gezeigt werden.