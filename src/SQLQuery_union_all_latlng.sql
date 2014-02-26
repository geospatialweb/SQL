declare @poly1 geography;
declare @poly2 geography;
declare @poly3 geography;
declare @poly4 geography;
declare @eohu geography;

set @poly1 = (select shape from EOHU.dbo.EOHU_Boundary where objectid = 1);
set @poly2 = (select shape from EOHU.dbo.EOHU_Boundary where objectid = 2);
set @poly3 = (select shape from EOHU.dbo.EOHU_Boundary where objectid = 3);
set @poly4 = (select shape from EOHU.dbo.EOHU_Boundary where objectid = 4);
set @eohu = @poly1.STUnion(@poly2).STUnion(@poly3).STUnion(@poly4);

select @eohu
union all select shape from EOHU.dbo.C2006DA_EOHU
union all select shape from EOHU.dbo.EOHU_CLINICS