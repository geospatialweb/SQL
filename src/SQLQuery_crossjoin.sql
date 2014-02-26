select HU.*, DA.*, DA.DACentroid.STDistance(HU.Shape)/1000 as DistKM
	into EOHU_UTM18N.dbo.EOHU_DIST
	from EOHU_UTM18N.dbo.EOHU_DA as DA
	cross join EOHU_UTM18N.dbo.EOHU_CLINICS as HU