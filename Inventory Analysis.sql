--Question 1
with inv as
(SELECT SKU, 'Jan' as Month, Jan as Units
FROM inventory
UNION ALL
SELECT SKU, 'Feb', Feb
FROM inventory
UNION ALL
SELECT SKU, 'Mar', Mar
FROM inventory
UNION ALL
SELECT SKU, 'Apr', Apr
FROM inventory
UNION ALL
SELECT SKU, 'May', May
FROM inventory
UNION ALL
SELECT SKU, 'Jun', Jun
FROM inventory
UNION ALL
SELECT SKU, 'Jul', Jul
FROM inventory
UNION ALL
SELECT SKU, 'Aug', Aug
FROM inventory
UNION ALL
SELECT SKU, 'Sep', Sep
FROM inventory
UNION ALL
SELECT SKU, 'Oct', Oct
FROM inventory
UNION ALL
SELECT SKU, 'Nov', Nov
FROM inventory
UNION ALL
SELECT SKU, 'Dec', Dec
FROM inventory),

dem as 
(SELECT SKU, 'Jan' as Month, 
SUM(CASE WHEN Measure = 'Retail' Then Jan Else 0 End) as Retail,
SUM(CASE WHEN Measure = 'GM$' Then Jan Else 0 End) as GM,
SUM(CASE WHEN Measure = 'Units' Then Jan Else 0 End) as Units,
SUM(CASE WHEN Measure = 'Weight' Then Jan Else 0 End) as Weight,
SUM(CASE WHEN Measure = 'Cube' Then Jan Else 0 End) as Cube
FROM demand
GROUP BY SKU,'Jan'
UNION ALL
SELECT SKU, 'Feb', 
SUM(CASE WHEN Measure = 'Retail' Then Feb Else 0 End) as Retail,
SUM(CASE WHEN Measure = 'GM$' Then Feb Else 0 End) as GM,
SUM(CASE WHEN Measure = 'Units' Then Feb Else 0 End) as Units,
SUM(CASE WHEN Measure = 'Weight' Then Feb Else 0 End) as Weight,
SUM(CASE WHEN Measure = 'Cube' Then Feb Else 0 End) as Cube
FROM demand
GROUP BY SKU,'Feb'
UNION ALL
SELECT SKU, 'Mar', 
SUM(CASE WHEN Measure = 'Retail' Then Mar Else 0 End) as Retail,
SUM(CASE WHEN Measure = 'GM$' Then Mar Else 0 End) as GM,
SUM(CASE WHEN Measure = 'Units' Then Mar Else 0 End) as Units,
SUM(CASE WHEN Measure = 'Weight' Then Mar Else 0 End) as Weight,
SUM(CASE WHEN Measure = 'Cube' Then Mar Else 0 End) as Cube
FROM demand
GROUP BY SKU,'Mar'
UNION ALL
SELECT SKU, 'Apr', 
SUM(CASE WHEN Measure = 'Retail' Then Apr Else 0 End) as Retail,
SUM(CASE WHEN Measure = 'GM$' Then Apr Else 0 End) as GM,
SUM(CASE WHEN Measure = 'Units' Then Apr Else 0 End) as Units,
SUM(CASE WHEN Measure = 'Weight' Then Apr Else 0 End) as Weight,
SUM(CASE WHEN Measure = 'Cube' Then Apr Else 0 End) as Cube
FROM demand
GROUP BY SKU,'Apr'
UNION ALL
SELECT SKU, 'May', 
SUM(CASE WHEN Measure = 'Retail' Then May Else 0 End) as Retail,
SUM(CASE WHEN Measure = 'GM$' Then May Else 0 End) as GM,
SUM(CASE WHEN Measure = 'Units' Then May Else 0 End) as Units,
SUM(CASE WHEN Measure = 'Weight' Then May Else 0 End) as Weight,
SUM(CASE WHEN Measure = 'Cube' Then May Else 0 End) as Cube
FROM demand
GROUP BY SKU,'May'
UNION ALL
SELECT SKU, 'Jun', 
SUM(CASE WHEN Measure = 'Retail' Then Jun Else 0 End) as Retail,
SUM(CASE WHEN Measure = 'GM$' Then Jun Else 0 End) as GM,
SUM(CASE WHEN Measure = 'Units' Then Jun Else 0 End) as Units,
SUM(CASE WHEN Measure = 'Weight' Then Jun Else 0 End) as Weight,
SUM(CASE WHEN Measure = 'Cube' Then Jun Else 0 End) as Cube
FROM demand
GROUP BY SKU,'Jun'
UNION ALL
SELECT SKU, 'Jul', 
SUM(CASE WHEN Measure = 'Retail' Then Jul Else 0 End) as Retail,
SUM(CASE WHEN Measure = 'GM$' Then Jul Else 0 End) as GM,
SUM(CASE WHEN Measure = 'Units' Then Jul Else 0 End) as Units,
SUM(CASE WHEN Measure = 'Weight' Then Jul Else 0 End) as Weight,
SUM(CASE WHEN Measure = 'Cube' Then Jul Else 0 End) as Cube
FROM demand
GROUP BY SKU,'Jul'
UNION ALL
SELECT SKU, 'Aug', 
SUM(CASE WHEN Measure = 'Retail' Then Aug Else 0 End) as Retail,
SUM(CASE WHEN Measure = 'GM$' Then Aug Else 0 End) as GM,
SUM(CASE WHEN Measure = 'Units' Then Aug Else 0 End) as Units,
SUM(CASE WHEN Measure = 'Weight' Then Aug Else 0 End) as Weight,
SUM(CASE WHEN Measure = 'Cube' Then Aug Else 0 End) as Cube
FROM demand
GROUP BY SKU,'Aug'
UNION ALL
SELECT SKU, 'Sep', 
SUM(CASE WHEN Measure = 'Retail' Then Sep Else 0 End) as Retail,
SUM(CASE WHEN Measure = 'GM$' Then Sep Else 0 End) as GM,
SUM(CASE WHEN Measure = 'Units' Then Sep Else 0 End) as Units,
SUM(CASE WHEN Measure = 'Weight' Then Sep Else 0 End) as Weight,
SUM(CASE WHEN Measure = 'Cube' Then Sep Else 0 End) as Cube
FROM demand
GROUP BY SKU,'Sep'
UNION ALL
SELECT SKU, 'Oct', 
SUM(CASE WHEN Measure = 'Retail' Then Oct Else 0 End) as Retail,
SUM(CASE WHEN Measure = 'GM$' Then Oct Else 0 End) as GM,
SUM(CASE WHEN Measure = 'Units' Then Oct Else 0 End) as Units,
SUM(CASE WHEN Measure = 'Weight' Then Oct Else 0 End) as Weight,
SUM(CASE WHEN Measure = 'Cube' Then Oct Else 0 End) as Cube
FROM demand
GROUP BY SKU,'Oct'
UNION ALL
SELECT SKU, 'Nov', 
SUM(CASE WHEN Measure = 'Retail' Then Nov Else 0 End) as Retail,
SUM(CASE WHEN Measure = 'GM$' Then Nov Else 0 End) as GM,
SUM(CASE WHEN Measure = 'Units' Then Nov Else 0 End) as Units,
SUM(CASE WHEN Measure = 'Weight' Then Nov Else 0 End) as Weight,
SUM(CASE WHEN Measure = 'Cube' Then Nov Else 0 End) as Cube
FROM demand
GROUP BY SKU,'Nov'
UNION ALL
SELECT SKU, 'Dec', 
SUM(CASE WHEN Measure = 'Retail' Then Dec Else 0 End) as Retail,
SUM(CASE WHEN Measure = 'GM$' Then Dec Else 0 End) as GM,
SUM(CASE WHEN Measure = 'Units' Then Dec Else 0 End) as Units,
SUM(CASE WHEN Measure = 'Weight' Then Dec Else 0 End) as Weight,
SUM(CASE WHEN Measure = 'Cube' Then Dec Else 0 End) as Cube
FROM demand
GROUP BY SKU,'Dec');

--Question 2
with sku_act as
(SELECT SKU, CategoryCode, SupplierNumber
FROM SKUMaster
WHERE SKUStatus = 'Active')

SELECT CategoryCodes, DENSE_RANK() OVER(ORDER BY SUM(Units) desc) AS RNK
FROM dem d join sku_act s
on d.SKU = s.SKU
GROUP BY CategoryCodes;

SELECT SupplierNumber, DENSE_RANK() OVER(ORDER BY SUM(Units) desc) AS RNK
FROM dem d join sku_act s
on d.SKU = s.SKU
GROUP BY SupplierNumber

--Question 3
SELECT CategoryCodes, avg(Retail),avg(GM),avg(Weight),avg(Cube)
FROM dem d join sku_act s
on d.SKU = s.SKU
GROUP BY CategoryCodes;

SELECT CategoryCodes, avg(Retail),avg(GM),avg(Weight),avg(Cube)
FROM dem d join sku_act s
on d.SKU = s.SKU
GROUP BY SupplierNumber;

--Question 4
SELECT d.SKU, 
sum(Retail)/NULLIF(sum(Unit),0), --avoiding division by 0 error
sum(GM)/NULLIF(sum(Unit),0),
sum(Weight)/NULLIF(sum(Unit),0),
sum(Cube)/NULLIF(sum(Unit),0)
FROM dem d join sku_act s
on d.SKU = s.SKU
GROUP BY d.SKU;

SELECT CategoryCode, 
sum(Retail)/NULLIF(sum(Unit),0),
sum(GM)/NULLIF(sum(Unit),0),
sum(Weight)/NULLIF(sum(Unit),0),
sum(Cube)/NULLIF(sum(Unit),0)
FROM dem d join sku_act s
on d.SKU = s.SKU
GROUP BY CategoryCode;

SELECT SupplierNumber, 
sum(Retail)/NULLIF(sum(Unit),0),
sum(GM)/NULLIF(sum(Unit),0),
sum(Weight)/NULLIF(sum(Unit),0),
sum(Cube)/NULLIF(sum(Unit),0)
FROM dem d join sku_act s
on d.SKU = s.SKU
GROUP BY SupplierNumber;

--Question 5
SELECT CategoryCode, sku
FROM
(SELECT CategoryCode,d.SKU sku,
PERCENT_RANK() OVER (PARTITION BY CategoryCode ORDER BY SUM(RetailPrice)) as rnk
FROM dem d join sku_act s
on d.SKU = s.SKU
GROUP BY CategoryCode,d.SKU)x
WHERE rnk > 0.2
