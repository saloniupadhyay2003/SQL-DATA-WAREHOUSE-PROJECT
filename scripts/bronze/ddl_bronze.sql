/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'bronze' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/
create database datawarehouse;
use datawarehouse;

create schema bronze;
create schema silver;
create schema gold;

create table bronze.crm_cust_info (
cst_id int,
cst_key varchar(50),
cst_firstname varchar(50),
cst_lastname varchar(50), 
cst_material_status varchar(50),
cs_gndr varchar (50), 
cst_create_date varchar(50)
);


create table bronze.crm_sales_details (
sls_ord_num varchar(50),
sls_prd_key varchar(50), 
sls_cust_id int,
sls_order_dt int,
sls_ship_dt int,
sls_due_dt int,
sls_sales int,
sls_quantity int,
sls_price int
);

create table bronze.crm_prd_info (
prd_id int, 
prd_key varchar(50),
prd_nm varchar (50),
prd_cost int,
prd_line varchar(50),
prd_start_dt datetime,
prd_end_dt datetime
);

create table bronze.erp_loc_a101(
cid varchar(50),
cntry varchar(50)
);

create table bronze.erp_cust_az12(
cid varchar (50),
bdate date,
gen varchar(50)
);

create table bronze.erp_px_cat_g1v2(
id varchar(50),
cat varchar(50),
subcat varchar (50),
maintainence varchar (50)
);





