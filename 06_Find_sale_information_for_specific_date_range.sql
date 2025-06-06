select
	sc.id, sc.name, sc.email, v.vin, v.`year`,v.make,v.model,v.color,v.`type`,v.mileage,v.sold, sc.financed, sc.processingFee
from
   		vehicles v
join
		sales_contract sc on v.vin = sc.vin
where 
     v.SOLD = 1 and 
     sc.thedate between '2020-09-01' and '2022-10-04'