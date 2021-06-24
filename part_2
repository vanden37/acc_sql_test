SELECT
CASE
WHEN (Weight is not null) THEN Weight
WHEN (Weight is null and Size is not null) THEN Size
WHEN (Weight is null and Size is null) THEN 'N/A'
END AS Measurement
FROM Product
