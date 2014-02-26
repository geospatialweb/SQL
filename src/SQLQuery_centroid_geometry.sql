select dauid as DA_ID,
	shape.STCentroid() as Centroid,
	shape.STCentroid().STAsText() as WKT
	from EOHU_UTM18N.dbo.C2006DA_EOHU;