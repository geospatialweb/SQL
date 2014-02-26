declare @xmin int
declare @ymin int
declare @xmax int
declare @ymax int
declare @count int
declare @X int
declare @Y int

set @xmin = -15000000
set @xmax = -10000000
set @ymin =   5000000
set @ymax =  10000000
set @count = 0

while (@count < 1000000)
	begin
		set @X = Round(((@xmax - @xmin) * Rand() + @xmin), 0)
		set @Y = Round(((@ymax - @ymin) * Rand() + @ymin), 0)
		insert into XY_Proximity.dbo.Proximity (X, Y) values (@X, @Y)
		set @count = @count + 1
end