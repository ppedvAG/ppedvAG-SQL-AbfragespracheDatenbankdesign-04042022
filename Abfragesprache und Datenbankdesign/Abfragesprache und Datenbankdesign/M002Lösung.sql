-- Aufgabe 1

SELECT REVERSE(STUFF(REVERSE('1234567890'),1,3,'XXX'))

SELECT Phone
	  ,REVERSE(STUFF(REVERSE(Phone),1,3,'XXX')) AS Secret
FROM Customers









