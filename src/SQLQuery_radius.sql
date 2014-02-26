set statistics time on

declare @kfla geometry
declare @radius geometry

set @kfla = geometry::STGeomFromText('POINT (-8518750 5500800)', 3785)
set @radius = @kfla.STBuffer(5000000)

select XY.STDistance(@kfla) as Distance
	from XY_Proximity.dbo.Proximity
	where XY.Filter(@radius) = 1
	order by Distance ASC