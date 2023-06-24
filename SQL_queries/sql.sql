-- Create staging and phone database schema
CREATE SCHEMA IF NOT EXISTS stage_data;
CREATE SCHEMA IF NOT EXISTS phone_database;

-- Create nanpa_table
DROP TABLE stage_data.nanpa_sample;
CREATE TABLE IF NOT EXISTS stage_data.nanpa_sample
(
	carrier_id	VARCHAR,
	area_code	INT,
	prefix		INT,
	block		INT,
	local_access_transport_area		INT,
	line_type	CHAR(1),
	latitute	NUMERIC,
	longitude	NUMERIC,
	carrier_category	CHAR(1),
	prefix_type	INT,
	carrier_name	VARCHAR,
	carrier_type	VARCHAR
);

--Create phone table
DROP TABLE IF EXISTS stage_data.phone;
CREATE TABLE IF NOT EXISTS stage_data.phone
(
	id				VARCHAR(20),
	phone_number	VARCHAR(12),
	first_seen		DATE,
	last_seen		DATE,
	area_code		INT,
	prefix			INT,
	suffix			INT,
	city			VARCHAR(30),
	country			CHAR(2),
	line_type		VARCHAR(20),
	listing_type	VARCHAR(20),
	status_code		VARCHAR(20),
	state			CHAR(2),
	validity		VARCHAR(10)
);



SELECT *
FROM stage_data.nanpa_sample;
--FROM stage_data.phone;