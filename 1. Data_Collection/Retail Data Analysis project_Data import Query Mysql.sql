# let's Import the table for our Store analysis Dataset

#drop shema/database if available
-- drop database if exists Retail;

#Create a new Schemas/Database
create database Retail;

#Set as default Dataset
use Retail;

# To Import Feature Data Set.csv

#drop table of exists
drop table if exists Features_Data;

#create Table Features_Data
create table Features_Data(
Store varchar(25)
,Feature_Date varchar(25)
,Temperature varchar(25)
,Fuel_Price varchar(25)
,MarkDown1 varchar(25)
,MarkDown2 varchar(25)
,MarkDown3 varchar(25)
,MarkDown4 varchar(25)
,MarkDown5 varchar(25)
,CPI varchar(25)
,Unemployment varchar(25)
,IsHoliday varchar(25)
);

#Import Features_Data Table values 
set global local_infile = 1;
load data local infile 'C:\\Users\\pooja\\OneDrive\\Desktop\\We cloud\\ML\\Project #2\\Data_Collection\\Features data set.csv'
into table Features_Data
fields terminated by ','
lines terminated by '\n'
ignore 1 lines;


# To Import Sales Data Set.csv

#drop table of exists
drop table if exists Sales_Data;

#create Table Sales_Data
create table Sales_Data(
Store varchar(25)
,Dept varchar(25)
,Sales_Date varchar(25)
,Weekly_Sales varchar(25)
,IsHoliday varchar(25)
);

#Import Sales_Data Table values
set global local_infile = 1;
load data local infile 'C:\\Users\\pooja\\OneDrive\\Desktop\\We cloud\\ML\\Project #2\\Data_Collection\\sales data-set.csv'
into table Sales_Data
fields terminated by ','
lines terminated by '\n'
ignore 1 lines;


# To Import Stores Data Set.csv

#drop table of exists
drop table if exists Stores_Data;

#create Table Stores_Data
create table Stores_Data(
Store_id varchar(25)
,Store_Type varchar(25)
,Store_Size varchar(25)
);

#Import Stores_Data Table values
set global local_infile = 1;
load data local infile 'C:\\Users\\pooja\\OneDrive\\Desktop\\We cloud\\ML\\Project #2\\Data_Collection\\stores data-set.csv'
into table Stores_Data
fields terminated by ','
lines terminated by '\n'
ignore 1 lines;