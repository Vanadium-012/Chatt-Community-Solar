select
"Time", "Date",
AVG("Temperature") AS 'Risk Analysis'
FROM "climate-data"
GROUP BY "Date", "Time";
