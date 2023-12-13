
use [AdventureWorks2019]
/*EN ESTE CASO MANEJAMOS 2 BASES DE DATOS*/ 

/*----PRIMERA BASE DE DATOS Person.ContactType-----*/
/*VISUALIZAMOS DATOS*/
SELECT * FROM AdventureWorks2019.Person.ContactType
SELECT * FROM Ejercicio1.Person.ContactType
/*MODIFICAMOS DATOS*/
UPDATE AdventureWorks2019.Person.ContactType SET name='sr negocios manager', ModifiedDate=GETDATE() WHERE ContactTypeID=1;

/*CODIGO QUE ACTUALIZA EN LA SEGUNDA BASE DE DATOS*/
UPDATE Ejercicio1.Person.ContactType
SET Name = adw.Name, ModifiedDate = adw.ModifiedDate
FROM AdventureWorks2019.Person.ContactType AS adw
WHERE Ejercicio1.Person.ContactType.ContactTypeID = adw.ContactTypeID
AND Ejercicio1.Person.ContactType.ModifiedDate < adw.ModifiedDate;

/*VISUALIZAMOS CAMBIOS*/
SELECT * FROM AdventureWorks2019.Person.ContactType
SELECT * FROM Ejercicio1.Person.ContactType



/*-----SEGUNDA BASE DE DATOS Person.PhoneNumberType-----*/
/*VISUALIZAMOS DATOS*/
SELECT * FROM AdventureWorks2019.Person.PhoneNumberType;
SELECT * FROM Ejercicio1.Person.PhoneNumberType;

/*MODIFICAMOS DATOS*/
UPDATE AdventureWorks2019.Person.PhoneNumberType SET name='university', ModifiedDate=GETDATE() WHERE PhoneNumberTypeID=1;

/*CODIGO QUE ACTUALIZA EN LA SEGUNDA BASE DE DATOS*/
UPDATE Ejercicio1.Person.PhoneNumberType
SET Name = adw.Name, ModifiedDate = adw.ModifiedDate
FROM AdventureWorks2019.Person.PhoneNumberType AS adw
WHERE Ejercicio1.Person.PhoneNumberType.PhoneNumberTypeID = adw.PhoneNumberTypeID
AND Ejercicio1.Person.PhoneNumberType.ModifiedDate < adw.ModifiedDate;

/*VISUALIZAMOS CAMBIOS*/
SELECT * FROM AdventureWorks2019.Person.PhoneNumberType;
SELECT * FROM Ejercicio1.Person.PhoneNumberType;