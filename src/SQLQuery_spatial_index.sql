create spatial index SP_Proximity on XY_Proximity.dbo.Proximity(XY)
with (BOUNDING_BOX =(XMIN = -15000000, YMIN = 5000000, XMAX = -10000000, YMAX = 10000000))