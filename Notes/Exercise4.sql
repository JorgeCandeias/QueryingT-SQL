SELECT ALL
	ISNULL(Color, 'None') AS Color
FROM
	SalesLT.Product
;

SELECT DISTINCT
	ISNULL(Color, 'None') AS Color
FROM
	SalesLT.Product
;

SELECT DISTINCT
	ISNULL(Color, 'None') AS Color
FROM
	SalesLT.Product
ORDER BY
	Color
;

SELECT DISTINCT
	ISNULL(Color, 'None') AS Color,
	ISNULL(Size, '-') AS Size
FROM
	SalesLT.Product
ORDER BY
	Color
;

SELECT TOP 100
	Name,
	ListPrice
FROM
	SalesLT.Product
ORDER BY
	ListPrice DESC
;

SELECT
	Name,
	ListPrice
FROM
	SalesLT.Product
ORDER BY
	ProductNumber
OFFSET 0 ROWS
FETCH NEXT 10 ROWS ONLY
;

SELECT
	Name,
	ListPrice
FROM
	SalesLT.Product
ORDER BY
	ProductNumber
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY
;
