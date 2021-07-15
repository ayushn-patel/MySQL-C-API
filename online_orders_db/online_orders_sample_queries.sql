/* SAMPLE  QUERIES  FOR  C-API */


/* 1) Query for getting agent names along with their code */
 	Select AGENT_CODE, AGENT_NAME From AGENTS;


/* 2) Query for getting customer names along with customer code and phone number */
	Select CUST_CODE, CUST_NAME, PHONE_NO From CUSTOMERS;


/* 3) Query for getting agent details (code, name, working area, country, phone number) */
	Select AGENT_CODE, AGENT_NAME, PHONE_NO, WORKING_AREA, COUNTRY From AGENTS;


/* 4) Query for getting customer details (code, name, city, country, phone no.) */
 	Select CUST_CODE, CUST_NAME, PHONE_NO, CUST_CITY, CUST_COUNTRY From CUSTOMERS;


/* 5)  Query for getting order code along with order description and order date */
 	Select ORD_CODE, ORD_DATE, ORD_DESCRIPTION From ORDERS;


/* 6) Query for getting order code along with order date, customer name and agent name */
	Select 
	T0.ORD_CODE, T0.ORD_DATE, CUST_NAME, AGENT_NAME
	From ORDERS T0
	Left Join CUSTOMERS T1 on T1.CUST_CODE = T0.CUST_CODE
	Left Join AGENTS T2 on T2.AGENT_CODE = T0.AGENT_CODE;


/* 7) Query for getting customer name along with customer code, order code and the total amt to be paid */
 	Select 
	T0.CUST_CODE, T0.CUST_NAME, T1.ORD_CODE, T1.TOTAL_AMT
	From CUSTOMERS T0
	Inner Join ORDERS T1 on T1.CUST_CODE = T0.CUST_CODE;


/* 8) Query for getting order code along with agent code, customer name, customer code, customer phone number and customer city, country */
 	Select 
	T0.ORD_CODE, T2.AGENT_CODE, T1.CUST_NAME, T1.CUST_CODE, T1.PHONE_NO, T1.CUST_CITY, T1.CUST_COUNTRY
	From ORDERS T0
	Left Join CUSTOMERS T1 on T1.CUST_CODE = T0.CUST_CODE
	Left Join AGENTS T2 on T2.AGENT_CODE = T0.AGENT_CODE;


/* 9) Query for getting customer name, customer code, order code and order descrpition for which the total amount is greater the 5000 */
 	Select 
	T0.CUST_CODE, T0.CUST_NAME, T1.ORD_CODE, T1.ORD_DESCRIPTION, T1.TOTAL_AMT
	From CUSTOMERS T0
	Left Join ORDERS T1 on T1.CUST_CODE = T0.CUST_CODE
	Where T1.TOTAL_AMT > 5000
	Order By T1.TOTAL_AMT;


/* 10) Query for getting customer name, agent code, order code and order description for which customer city is bangalore */
	Select 
	T0.CUST_NAME, 
	T1.AGENT_CODE,
	T2.ORD_CODE,
	T2.ORD_DESCRIPTION,
	T0.CUST_CITY
	From CUSTOMERS T0
	inner Join AGENTS T1 on T1.AGENT_CODE = T0.AGENT_CODE
	inner Join ORDERS T2 on T2.CUST_CODE = T0.CUST_CODE
	where T0.CUST_CITY = 'Bangalore';











