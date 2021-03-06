/* SAMPLE DATABASE - ONLINE ORDERS */


--SELECT * from INFORMATION_SCHEMA.TABLES

--DROP TABLE AGENTS
--DROP TABLE CUSTOMERS
--DROP TABLE ORDERS



/* create table for AGENTS table */

CREATE TABLE AGENTS 
(	AGENT_CODE VARCHAR(6) PRIMARY KEY, 
	AGENT_NAME VARCHAR(40), 
	WORKING_AREA VARCHAR(35), 
	COUNTRY VARCHAR(25),
	PHONE_NO VARCHAR(15) 
);



/* create table for CUSTOMERS table */

CREATE TABLE CUSTOMERS
(	CUST_CODE VARCHAR(6) PRIMARY KEY, 
	CUST_NAME VARCHAR(40), 
	CUST_CITY VARCHAR(35), 
	CUST_COUNTRY VARCHAR(20), 
	PHONE_NO VARCHAR(17), 
	AGENT_CODE VARCHAR(6) REFERENCES AGENTS 
); 



/* create table for ORDERS table */

CREATE TABLE ORDERS 
(   ORD_CODE VARCHAR(6) PRIMARY KEY, 
	ORD_DATE DATE, 
	TOTAL_AMT DECIMAL(32,2),
	CUST_CODE VARCHAR(6) REFERENCES CUSTOMERS, 
	AGENT_CODE VARCHAR(6) REFERENCES AGENTS, 
	ORD_DESCRIPTION VARCHAR(60)	
);



--SELECT * FROM AGENTS
--SELECT * FROM CUSTOMERS
--SELECT * FROM ORDERS 


