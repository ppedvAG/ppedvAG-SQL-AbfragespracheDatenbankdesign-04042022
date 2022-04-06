-- Aufgabe 1

SELECT REVERSE(STUFF(REVERSE('1234567890'),1,3,'XXX'))

SELECT Phone
	  ,REVERSE(STUFF(REVERSE(Phone),1,3,'XXX')) AS Secret
FROM Customers









-- Aufgabe 2 
SELECT CONCAT(REPLICATE('X',LEN(Phone)-3),RIGHT(Phone,3))
FROM Customers