select 
	d.dealership_id, d.name, d.address , d.phone , v.vin, v.`year`,v.make,v.model,v.color,v.`type`,v.mileage,v.sold
from 
	vehicles v 
join 
	inventory i on v.vin = i.vin
join 
	dealerships d on i.dealership_id = d.dealership_id
where 
	v.vin = 78230