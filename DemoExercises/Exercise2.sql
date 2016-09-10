SELECT
	CAST(ProductID AS VARCHAR(5)) + ': ' + Name AS ProductName
FROM
	SalesLT.Product
;

SELECT
	CONVERT(VARCHAR(5), ProductID) + ': ' + Name AS ProductName
FROM
	SalesLT.Product
;

SELECT
	SellStartDate,
	CONVERT(NVARCHAR(50), SellStartDate) AS ConvertedDate,
	CONVERT(NVARCHAR(30), SellStartDate, 126) AS ISO8601FormatDate
FROM
	SalesLT.Product
;

SELECT
	Name,
	TRY_CAST(Size AS INTEGER) AS NumericSize
FROM
	SalesLT.Product
;
