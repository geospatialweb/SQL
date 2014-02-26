update EOHU.dbo.EOHU_BOUNDARY
set XY = GEOMETRY::STGeomFromWKB(shape.STAsBinary(),4269);