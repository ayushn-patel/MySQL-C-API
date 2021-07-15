/* SAMPLE DATABASE - ONLINE ORDERS */


/* insert values for AGENTS table */

INSERT INTO AGENTS VALUES('A2001', 'JACK', 'BANGALORE', 'INDIA', '221123');
INSERT INTO AGENTS VALUES('A2002', 'MIKE', 'MANIPAL', 'INDIA', '221234');
INSERT INTO AGENTS VALUES('A2003', 'JOHN', 'BANGALORE', 'INDIA', '221345');
INSERT INTO AGENTS VALUES('A2004', 'NICK', 'MANIPAL', 'INDIA', '221456');
INSERT INTO AGENTS VALUES('A2005', 'KATE', 'MYSORE', 'INDIA', '221567');



/* create table for CUSTOMERS table */

INSERT INTO CUSTOMERS VALUES('C1001', 'THOMAS', 'MANIPAL', 'INDIA', '231987', 'A2001');
INSERT INTO CUSTOMERS VALUES('C1002', 'JOSH', 'MYSORE', 'INDIA', '231876', 'A2002');
INSERT INTO CUSTOMERS VALUES('C1003', 'KEVIN', 'BANGALORE', 'INDIA', '231765', 'A2003');
INSERT INTO CUSTOMERS VALUES('C1004', 'CHUCK', 'MYSORE', 'INDIA', '231654', 'A2004');
INSERT INTO CUSTOMERS VALUES('C1005', 'ALAN', 'BANGALORE', 'INDIA', '231432', 'A2005');
INSERT INTO CUSTOMERS VALUES('C1006', 'PAUL', 'BANGALORE', 'INDIA', '231321', 'A2001');
INSERT INTO CUSTOMERS VALUES('C1007', 'SMITH', 'MANIPAL', 'INDIA', '231210', 'A2002');


/* create table for ORDERS table */

INSERT INTO ORDERS VALUES('O5111', '2021-01-19', '2400', 'C1001', 'A2001', 'NIKE BAG');
INSERT INTO ORDERS VALUES('O5112', '2021-04-23', '180', 'C1002', 'A2002', 'MATH TEXTBOOK');
INSERT INTO ORDERS VALUES('O5113', '2021-02-06', '9800', 'C1003', 'A2003', 'SAMSUNG PHONE');
INSERT INTO ORDERS VALUES('O5114', '2021-06-28', '5600', 'C1004', 'A2004', 'PUMA SHOES');
INSERT INTO ORDERS VALUES('O5115', '2021-03-30', '6000', 'C1005', 'A2005', 'BOSE SPEAKERS');
INSERT INTO ORDERS VALUES('O5116', '2021-05-21', '240', 'C1006', 'A2001', 'DAN BROWN NOVEL');
INSERT INTO ORDERS VALUES('O5117', '2021-03-17', '6800', 'C1007', 'A2002', 'HP PRINTER');



--SELECT * FROM AGENTS
--SELECT * FROM CUSTOMERS
--SELECT * FROM ORDERS 