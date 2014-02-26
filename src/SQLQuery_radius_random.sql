set statistics time on

declare @xmin int
declare @ymin int
declare @xmax int
declare @ymax int
declare @X int
declare @Y int
declare @XY varchar(30)
declare @bomb geometry
declare @radius geometry

set @xmin = -13700000
set @xmax = -10000000
set @ymin =   5000000
set @ymax =  10000000
set @X = Round(((@xmax - @xmin) * Rand() + @xmin), 0)
set @Y = Round(((@ymax - @ymin) * Rand() + @ymin), 0)
set @XY = 'POINT(' + CONVERT(VARCHAR(10),@X) + ' ' +  CONVERT(VARCHAR(10),@Y) + ')'
set @bomb = geometry::STGeomFromText(@XY, 3785)
set @radius = @bomb.STBuffer(3000000)

select XY.STDistance(@bomb) as Distance
	from XY_Proximity.dbo.Proximity
	where XY.Filter(@radius) = 1
	order by Distance ASC