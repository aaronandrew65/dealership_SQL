create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(100)
);

create table salesperson(
	seller_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table car (
	vin SERIAL primary key,
	make VARCHAR(100),
	model VARCHAR(100)
);

create table mechanic (
	mech_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table parts (
	part_id SERIAL primary key,
	part VARCHAR(100),
	order_date DATE default CURRENT_DATE
);

create table invoice (
	invoice_num SERIAL primary key,
	price NUMERIC(10,2),
	invoice_date DATE default CURRENT_DATE,
	vin INTEGER not null,
	customer_id INTEGER not null,
	seller_id INTEGER not null,
	foreign key(vin) references car(vin),
	foreign key(customer_id) references customer(customer_id),
	foreign key(seller_id) references salesperson(seller_id)
);

create table service (
	service_id SERIAL primary key,
	service VARCHAR(100),
	date DATE default CURRENT_DATE,
	total_cost NUMERIC(10,2),
	customer_id INTEGER not null,
	part_id INTEGER not null,
	vin INTEGER not null,
	mech_id INTEGER not null,
	foreign key(customer_id) references customer(customer_id),
	foreign key(part_id) references parts(part_id),
	foreign key(mech_id) references mechanic(mech_id)
); 