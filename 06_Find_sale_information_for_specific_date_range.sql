select
		sc.id, sc.customer_name, sc.customer_email, v.vin, v.`year`,v.make,v.model,v.color,v.`type`,v.mileage,v.sold, sc.sales_tax ,sc.recording_fee , sc.processingFee, sc.financed, sc.monthly_payment
from
   		vehicles v
join
		sales_contract sc on v.vin = sc.vin
where 
     v.SOLD = 1  and
     sc.date_sold between '2020-09-01' and '2022-10-04'