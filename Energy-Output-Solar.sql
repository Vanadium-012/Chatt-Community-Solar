SELECT "Solar Irradiance/yr", 

case
WHEN "Solar Irradiance/yr" < 89065.82 THEN 'Average Energy Gained'
WHEN "Solar Irradiance/yr" BETWEEN 2108 AND 315174 THEN 'Moderate Energy Gained'
else 'High Energy Gained'
END AS 'category_energy'
FROM "Urban-solarpanel-analysis";