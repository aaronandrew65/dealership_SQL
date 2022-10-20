insert into customer (
	customer_id,
	first_name,
	last_name
)values(
	1,
	'Liz',
	'Montoya'
);

insert into customer(
	customer_id,
	first_name,
	last_name
) values(
	2,
	'Aaron',
	'Montoya'
);

create or replace function add_sales(_sell_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
return void
as $MAIN$
begin 
	insert into salesperson(seller_id, first_name, last_name)
	values(_seller_id, _first_name, _last_name);
end;
$MAIN$
language plpgsql;

select add_sales(65,'John', 'Elway');
select add_sales(28,'Nolan', 'Arenado');

create or replace function add_car(_vin_ INTEGER, _make_ VARCHAR, _model_ VARCHAR)
return void
as $MAIN$
begin 
	insert into car(vin, make, model)
	values(_vin_, _make_, _modle_);
end;
$MAIN$
language plpgsql;

select add_car(123, 'Kia', 'Sorento');
select add_car(321, 'Ford', 'Explorer');

create or replace function add_mech(_mech_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
return void
as $MAIN$
begin 
	insert into mechanic(mech_id, first_name, last_name)
	values(_seller_id, _first_name, _last_name);
end;
$MAIN$
language plpgsql;

select add_mech(74,'Tony', 'Stark');
select add_mech(4,'Peter', 'Parker');

create or replace function add_parts(_part_id INTEGER, _part_ VARCHAR, _date_ DATE current_date)
return void
as $MAIN$
begin 
	insert into parts(part_id, part, order_date)
	values(_part_id, _part_, DATE current_date);
end;
$MAIN$
language plpgsql;

select add_parts(1,'oil filter');
select add_sales(2,'brakes');

insert into invoice(invoice_num, price, vin,customer_id,seller_id)
values(1, 240000.00, 123, 1, 65);
values(2, 15000.99, 321, 2, 28);

insert into service(service_id, service, total_cost, customer_id,part_id, vin, mech_id)
values(1, 'Oil Change', 74.99, 1, 1, 123, 74);
values(2, 'Brake Replacement', 50.99, 2, 2, 321, 4);



