select "Temperature", 
"Time",
"Date",
  case
    WHEN "Temperature" > '85' THEN 'High Heat Exhaustion Risk'
    WHEN "Temperature" between '77' AND '60'  THEN 'Moderate Heat Exhaustion Risk'
    ELSE 'Lower Risk'
  END AS 'Risk Levels'
From
  "climate-data" DESC;
