set statistics time on

declare @kfla geometry
set @kfla = geometry::STGeomFromText('POINT (-8518750 5500800)', 3785)

select XY.STDistance(@kfla) as Distance
	from XY_Proximity.dbo.Proximity
	where XY.STDistance(@kfla) < 5000000
	order by XY.STDistance(@kfla) ASC