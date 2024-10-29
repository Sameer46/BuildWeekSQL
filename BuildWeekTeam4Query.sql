/*
1.	Marca e Colore delle Auto di che costano più di 10.000 € 
*/

SELECT m.Marca, 
    c.Nome AS Colore
FROM auto a
JOIN modello m 
ON a.IDModello = m.IDModello
JOIN colore c
ON a.IDColore = c.IDColore
WHERE a.PrezzoListino > 10000;

/*
2.	Tutti i proprietari di un’auto di colore ROSSO 
*/

SELECT *
FROM vendita v
JOIN auto a 
ON v.IDAuto=a.IDAuto
JOIN colore c
ON a.IDColore=c.IDColore
JOIN anagraficaclienti ac
ON v.IDCliente = ac.IDCliente
WHERE c.Nome='Rosso';


/*
3.	Costo totale di tutte le auto con Cilindrata superiore a 1600
*/
-- USO IL CAST
SELECT SUM(a.PrezzoListino) AS COSTO_TOTALE
FROM auto a
JOIN modello m 
ON a.IDModello = m.IDModello
WHERE CAST(m.Cinlindrata AS UNSIGNED) > 1600;
-- USO CONVERT
SELECT  SUM(a.PrezzoListino) AS COSTO_TOTALE
FROM auto a
JOIN modello m 
ON a.IDModello = m.IDModello
WHERE  CONVERT(m.Cinlindrata, UNSIGNED) > 1600;

/*
4.	Targa e Nome del proprietario delle Auto in una concessionaria della Città di Roma 
*/

SELECT 
a.Targa AS TARGA,
ac.Nome as NOME,
ac.Cognome AS COGNOME,
con.Nome AS NOME_CONCESSIONARIA,
c.Nome AS COMUNE
FROM vendita v
JOIN anagraficaclienti ac
ON v.IDCliente = ac.IDCliente
JOIN auto a
ON v.IDAuto = a.IDAuto
JOIN concessionaria con 
ON a.IDConcessionaria = con.IDConcessionaria
JOIN comune c
ON con.IDComune = c.IDComune
WHERE c.Nome = 'Roma';



/*
5.	Per ogni Concessionaria, il numero di Auto 
*/


SELECT con.Nome AS NomeConcessionaria,
COUNT(a.IDAuto) AS NumeroAuto
FROM auto a
JOIN concessionaria con 
ON a.IDConcessionaria = con.IDConcessionaria
GROUP BY con.Nome;





/*
6.	Il Responsabile di Concessionaria di tutte le auto con Cambio Automatico e Anno Acquisto 2010
*/



/*
7.	Per ciascuna TARGA il colore, il prezzo e la città in cui si trova il veicolo 
*/



/*
8.	Le auto con almeno tre Proprietari 
*/


/*
9.  La targa delle auto vendute nel 2015 
*/



/*
10. La regione con più auto (trovare un modo per associare la Regione) 
*/


/*
11. La Targa delle auto che si trovano a Milano, con cambio automatico, colore rosso, di proprietari residenti a Milano
*/

