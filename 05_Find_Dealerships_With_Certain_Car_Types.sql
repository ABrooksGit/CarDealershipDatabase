select 
*
from 
    vehicles vehicle
join 
    inventory inventory ON vehicle.vin = inventory.vin
join 
    dealerships dealership ON inventory.dealership_id = dealership.dealership_id
where
    vehicle.type = 'SUV' and
    vehicle.color = 'blue'