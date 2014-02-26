select left(postal_code,5), avg(LAT), avg(long), stdev(lat), stdev(long), COUNT(*) as NumFSALDUs
		from dbo.base
			where LEFT(postal_code,5) like 'K7L4%' or LEFT(postal_code,5) like 'K7L5%'
			group by LEFT(postal_code,5)