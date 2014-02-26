select HU.*, DA.*, DA.DACentroid.STDistance(HU.Shape)/1000 as DistKM
	into EOHU.dbo.EOHU_DIST
	from EOHU.dbo.EOHU_DA as DA
	cross join EOHU.dbo.EOHU_CLINICS as HU