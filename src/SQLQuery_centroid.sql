select  dauid,
	shape.EnvelopeCenter() as centroid,
	shape.EnvelopeCenter().STAsText() as WKT
	from EOHU.dbo.C2006DA_DA;