--SCHLEIFE
--Kopfgesteuert..vorsicht.. evtl läuft die Schleife einmal zu viel

--Was kann die Schleife
WHILE (BEDINGUNG) = WAHR
	BEGIN
		BREAK --stoppt die Schleife sofort
		CONTINUE --springt zum Schleifeneinstieg
	END

--DEMO

	WHILE 1=0
		BEGIN
			select getdate()
		END

		WHILE 1=1-- vorsicht endlos.: keine gute Idee
		BEGIN
			select getdate()
		END


		--Schleife mit Variable

		declare @i int = 1

		while @i<10
			BEGIN
						select @i
						set @i = @i+1
						IF @i = 5  BREAK --stoppt die Schleife sofort
					--	CONTINUE --springt zum Schleifeneinstieg
					--		CODE...

			END


			--IF

			IF Wert = true Code

			IF 1=1 select getdate()
			IF 1=0 select getdate()

			IF 1=1
			select 100
			else
			select 200
		    select 300--die Zeile ist nicht Bestandteil de IF bzw ELSE

			IF 1=0
				BEGIN  --mit Blöcken (BEGIN ..END) läßt sich das aber gut steuern
					select 100
				END
			ELSE 
				BEGIN
					select 200
					select 300
				END

				--Anwendungsfall

				--Erhöhe die Frachtkosten um 10%, solange bis
				--die Max Frachtkosten einen Wert von  1500  erreicht haben
				--oder die Summe der Frachtkosten  100.000  erreicht hat
				--die Werte drfen uf keinen Fall überstiegen werden

				while (select count(*) from customers) < 100 AND |OR (SELECT 
					begin

					end

					IF (select count(*) from customers) < 100 AND|OR (SELECT 
					begin
						select count(*) from customers
					end

					select max(freight), sum(freight) from orders --1100  66000



				--Erhöhe die Frachtkosten um 10%, solange bis
				--die Max Frachtkosten einen Wert von  1500  erreicht haben
				--oder die Summe der Frachtkosten  100.000  erreicht hat
				--die Werte drfen uf keinen Fall überstiegen werden

--Achtung --KOPFGESTEUERT:: WIR ÜBERSCREIETEN DIE GRENZEN
--evtl zur Sicherheit:  Transktion
--kein Variablen
				
BEGIN TRAN
WHILE				( select  max(freight) from orders) <= 1500	/1.1		AND
						(select sum(freight) from orders) <= 100000 /1.1
BEGIN

          update orders set freight = freight *1.1 
		  IF (	 select  max(freight) from orders) > 1500 
			BEGIN
						update orders set freight = freight / 1.1 
						BREAK
			END
			

END
	select max(freight), sum(freight) from orders --1100  66000

ROLLBACK