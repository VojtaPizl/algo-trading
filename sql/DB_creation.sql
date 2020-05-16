create schema stocks;

drop table stocks.daily_price;
drop table stocks.symbol;



CREATE TABLE stocks.symbol (
  id serial primary key,
  ticker varchar(32),
  name varchar(255),
  sector varchar(255),
  currency varchar(32),
  created_date TIMESTAMP,
  last_updated_date TIMESTAMP
);


CREATE TABLE stocks.daily_price (
  id serial primary key,
  symbol_id int REFERENCES stocks.symbol(id),
  price_date TIMESTAMP,
  created_date TIMESTAMP,
  last_updated_date TIMESTAMP,
  open decimal(19,4) ,
  high decimal(19,4) ,
  low decimal(19,4) ,
  close decimal(19,4) ,
  adj_close decimal(19,4) ,
  volume bigint NULL
);





select * from stocks.symbol;