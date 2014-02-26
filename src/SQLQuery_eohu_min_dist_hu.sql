select a.*, b.*
	from (select dauid, MIN(distKM) as Min_Distance
		  from EOHU_UTM18N.dbo.EOHU_DIST
		  group by dauid) as a 
	inner join EOHU_UTM18N.dbo.EOHU_DIST as b
		  on a.dauid = b.dauid and a.Min_Distance = b.distKM
	order by a.dauid