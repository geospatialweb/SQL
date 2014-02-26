declare @poly1 geometry;
declare @poly2 geometry;
declare @poly3 geometry;
declare @poly4 geometry;
declare @eohu geometry;

set @poly1 = (select shape from EOHU_UTM18N.dbo.EOHU_Boundary where objectid = 1);
set @poly2 = (select shape from EOHU_UTM18N.dbo.EOHU_Boundary where objectid = 2);
set @poly3 = (select shape from EOHU_UTM18N.dbo.EOHU_Boundary where objectid = 3);
set @poly4 = (select shape from EOHU_UTM18N.dbo.EOHU_Boundary where objectid = 4);
set @eohu = @poly1.STUnion(@poly2).STUnion(@poly3).STUnion(@poly4);

select dauid as DA_ID
	from EOHU_UTM18N.dbo.C2006DA_EOHU
	where shape.STCentroid().STIntersects(@eohu) = 1;