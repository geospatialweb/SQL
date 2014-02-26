UPDATE XY_Proximity.dbo.Proximity
SET XY = geometry::STGeomFromText(XY_Temp,3785)