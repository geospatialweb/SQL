UPDATE XY_Proximity.dbo.Proximity
SET XY_Temp = 'POINT(' + CONVERT(VARCHAR(100),X)
 +' ' +  CONVERT(VARCHAR(100),Y) +')'