SELECT
	*
FROM
	SalesLT.Customer
;

SELECT
	Title,
	FirstName,
	MiddleName,
	LastName,
	Suffix
FROM
	SalesLT.Customer
;

SELECT
	SalesPerson,
	CustomerName = ISNULL(Title + ' ', '') + FirstName,
	Phone
FROM
	SalesLT.Customer
;

SELECT
	CustomerCompany = CAST(CustomerID AS VARCHAR(10)) + ': ' + CompanyName
FROM
	SalesLT.Customer
;

SELECT
	SalesRevision = CAST(SalesOrderNumber AS VARCHAR(10)) + ' (' + CAST(RevisionNumber AS VARCHAR(10)) + ')',
	CONVERT(VARCHAR(10), OrderDate, 102)
FROM
	SalesLT.SalesOrderHeader
;

SELECT
	Option1 = LTRIM(RTRIM(REPLACE(CONCAT(FirstName, ' ', MiddleName, ' ', LastName), '  ', ' '))),
	Option2 = FirstName + ISNULL(' ' + MiddleName, '') + ' ' + LastName
FROM
	SalesLT.Customer
;

/*
UPDATE SalesLT.Customer SET EmailAddress = NULL WHERE CustomerID % 7 = 1;
*/

SELECT
	CustomerId,
	PrimaryContact = COALESCE(EmailAddress, Phone)
FROM
	SalesLT.Customer
;

/*
UPDATE SalesLT.SalesOrderHeader SET ShipDate = NULL WHERE SalesOrderID > 71899;
*/

SELECT
	SalesOrderID,
	OrderDate,
	ShippingStatus = CASE WHEN ShipDate IS NULL THEN 'Awaiting Shipment' ELSE 'Shipped' END
FROM
	SalesLT.SalesOrderHeader
;

