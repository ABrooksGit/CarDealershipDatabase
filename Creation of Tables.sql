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
vin int
)

CREATE TABLE sales_contract (
thedate date,
name varchar(100),
email varchar(100),
id int auto_increment primary key,
vin int,
foreign key (vin) references vehicles(vin),
financed tinyint(1),
processingFee double

)

CREATE TABLE lease_contract (
thedate date,
name varchar(100),
email varchar(100),
id int auto_increment primary key,
vin int,
foreign key (vin) references vehicles(vin),
total_Vehicle_Price double,
original_Vehicle_Price double

)
	