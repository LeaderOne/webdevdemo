CREATE TYPE connected_thing_t AS ( brand_name VARCHAR(32), ip_addr CHAR(16) ) REF USING INTEGER MODE db2sql

CREATE TYPE air_conditioner_t UNDER device_t AS ( set_point_hi DECIMAL(4,2), set_point_lo DECIMAL(4,2), time_off DATETIME, time_on DATETIME, btu_per_hr DECIMAL(5,3) ) MODE db2sql

CREATE TYPE central_air_t UNDER air_conditioner_t ( refrigerant_type VARCHAR(16), voltage_phase INTEGER, compressor_warranty INTEGER ) MODE db2sql

CREATE TYPE wall_mounted_t UNDER air_conditioner_t ( mount_location VARCHAR(16), air_filter_type VARCHAR(16) ) MODE db2sql

CREATE TABLE connected_thing OF connected_thing_t (REF IS thing_id USER GENERATED, PRIMARY KEY(thing_id) )

CREATE SEQUENCE connected_thing_id AS REF(connected_thing_t)

CREATE TRIGGER conn_thing_trig NO CASCADE BEFORE INSERT ON connected_thing REFERENCING NEW as n FOR EACH ROW MODE db2sql SET n.thing_id = NEXT VALUE FOR connected_thing_id

CREATE TABLE air_conditioner OF air_conditioner_t UNDER connected_thing INHERIT SELECT PRIVILEGES

CREATE TABLE central_air OF central_air_t UNDER air_conditioner_t INHERIT SELECT PRIVILEGES

CREATE TABLE wall_mounted OF wall_mounted_t UNDER air_conditioner_t INHERIT SELECT PRIVILEGES
