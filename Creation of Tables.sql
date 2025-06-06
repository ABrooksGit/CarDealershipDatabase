CREATE TABLE dealerships (
    dealership_id INT AUTO_INCREMENT PRIMARY KEY,
    name varchar(50),
    address varchar(50),
    phone varchar(12)
);


CREATE TABLE vehicles (
vin int primary key,
year int,
make varchar(100),
model varchar(100),
type varchar(100),
color varchar(100),
mileage int,
price double,
sold tinyint(1)
)


CREATE TABLE inventory (
dealership_id int,
vin int,
foreign key (dealership_id) references dealerships(dealership_id)
)


CREATE TABLE sales_contract (
thedate date,
name varchar(100),
email varchar(100),
id int auto_increment primary key,
vin int,
financed tinyint(1),
processingFee double,
sales_tax double,
recording_fee double,
monthly_payment double
foreign key (vin) references vehicles(vin)
)


CREATE TABLE lease_contract (
thedate date,
name varchar(100),
email varchar(100),
id int auto_increment primary key,
vin int,
foreign key (vin) references vehicles(vin),
total_Vehicle_Price double,
monthly_payment double

)
	