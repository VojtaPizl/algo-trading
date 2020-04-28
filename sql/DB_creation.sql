CREATE TABLE exchange(
	id int PRIMARY KEY,
	abbrev VARCHAR (32) NOT NULL,
	name VARCHAR (255) NULL,
	city VARCHAR (255) NULL,
	country VARCHAR (255) NULL,
	currency VARCHAR (64) NULL,
	timezone_offset TIME NULL,
	created_date TIMESTAMP NOT NULL,
	last_updated_date TIMESTAMP NOT NULL
);

