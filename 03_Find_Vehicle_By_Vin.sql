select 
	v.vin, v.`year`,v.make,v.model,v.color,v.`type`,v.mileage,v.sold
from 
	vehicles v 
join 
	inventory i on v.vin = i.vin
where 
	v.vin = 78230