SELECT
	ProductID,
	Name,
	Color,
	Size,
	ListPrice + Size AS Style
FROM
	SalesLT.Product;