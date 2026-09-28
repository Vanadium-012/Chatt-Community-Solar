SELECT COUNT(*) AS 'Lower Risk Count'
  FROM "climate-data"
  WHERE "Temperature" > 77 OR "Temperature" < 60;
  -- This short query will be helpful for bar chart data visualization on low risk temperatures.