CREATE TABLE exchange (
	id int PRIMARY KEY,
	abbrev VARCHAR (32) NOT NULL,
	name VARCHAR (255) NULL,
	city VARCHAR (255) NULL,
	country VARCHAR (255) NULL,
	currency VARCHAR (64) NULL,
	created_date TIMESTAMP NOT NULL,
	last_updated_date TIMESTAMP NOT NULL
);


CREATE TABLE data_vendor (
  id int PRIMARY KEY,
  name varchar(64) NOT NULL,
  website_url varchar(255) NULL,
  support_email varchar(255) NULL,
  created_date TIMESTAMP NOT NULL,
  last_updated_date TIMESTAMP NOT NULL
);


CREATE TABLE symbol (
  id int primary key NOT NULL ,
  exchange_id int REFERENCES exchange(id),
  ticker varchar(32) NOT NULL,
  instrument varchar(64) NOT NULL,
  name varchar(255) NULL,
  sector varchar(255) NULL,
  currency varchar(32) NULL,
  created_date TIMESTAMP NOT NULL,
  last_updated_date TIMESTAMP NOT NULL
);


CREATE TABLE daily_price (
  id int NOT NULL primary key,
  data_vendor_id int NOT NULL REFERENCES data_vendor(id),
  symbol_id int NOT NULL REFERENCES symbol(id),
  price_date TIMESTAMP NOT NULL,
  created_date TIMESTAMP NOT NULL,
  last_updated_date TIMESTAMP NOT NULL,
  open_price decimal(19,4) NULL,
  high_price decimal(19,4) NULL,
  low_price decimal(19,4) NULL,
  close_price decimal(19,4) NULL,
  adj_close_price decimal(19,4) NULL,
  volume bigint NULL
);



insert into exchange 
values (1, 'NYSE', 'New York Stock Exchange', 'New York', 'United States of America','USD','6:00','2020-04-28','2020-04-28')


select * from exchange