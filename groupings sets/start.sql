SELECT
    warehouse, productSUM (quantity) qty
FROM inventory
GROUP by warehouse, product


SELECT
warehouse, SUM (quantity) qty
FROM
    inventory
GROUP BY
    warehouse;



SELECT
    warehouse, product, SUM (quantity) qty
FROM
    inventory
GROUP BY
    GROUPING SETS(
        (warehouse,product),
        (warehouse),
        (product),
        ()
    );