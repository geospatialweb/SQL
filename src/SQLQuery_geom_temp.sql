update LTC_Proximity.dbo.LTC_Data 
SET Geom_Temp = 'POINT(' + CONVERT(VARCHAR(100),X) +' ' +  CONVERT(VARCHAR(100),Y) +')'