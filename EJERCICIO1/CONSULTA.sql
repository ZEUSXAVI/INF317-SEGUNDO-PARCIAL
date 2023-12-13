USE [Ejercicio1]

/*ELIMINAMOS LAS TABLAS*/
DROP TABLE Person.ContactType;

DROP TABLE Person.PhoneNumberType;


/*CREAMOS LAS TABLAS*/
CREATE TABLE Person.ContactType (
	ContactTypeID int PRIMARY KEY NOT NULL,
	Name nvarchar(100) NOT NULL,
	ModifiedDate datetime NOT NULL,
 
);

CREATE TABLE Person.PhoneNumberType (
	PhoneNumberTypeID int PRIMARY KEY NOT NULL,
	Name nvarchar(100) NOT NULL,
	ModifiedDate datetime NOT NULL,
);


/*INSERTAMOS DATOS*/
INSERT INTO Ejercicio1.Person.ContactType SELECT * FROM AdventureWorks2019.Person.ContactType;

INSERT INTO Ejercicio1.Person.PhoneNumberType SELECT * FROM AdventureWorks2019.Person.PhoneNumberType;


/*MOSTRAMOS RESULTADOS*/
SELECT * FROM Ejercicio1.Person.ContactType
SELECT * FROM AdventureWorks2019.Person.ContactType
