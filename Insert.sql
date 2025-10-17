#Insert_into_Customer_Table :
INSERT INTO Customer_details 
VALUES
(3,'Catherine','F',33,'Birmingham',3),
(4,'Lucy','F',36,'Manchester',5),
(5,'Alex','M',30,'London',3),
(6,'Andy','M',35,'London',21),
(7,'Natasha','F',32,'London',11),
(8,'Prasad','M',47,'Edinburgh',20),
(9,'Rita','F',29,'Nottingham',15),
(10,'Chris','M',28,'Oxford',10),
(11,'Anthony','M',38,'Bradford',21),
(12,'Mark','M',36,'Manchester',20),
(13,'Nupur','F',25,'Maharastra',24),
(14,'Harshali','F',22,'Oxford',18),
(15,'Tanvi','F',23,'London',29);

#Insert_into_Policy_Table :
INSERT INTO Policy_details (Customer_id, Policy_id, Product_id, Premium) 
VALUES
(2, 1001, 1, 1500),
(4, 1020, 1, 5600),
(5, 1025, 1, 18400),
(7, 1090, 1, 17600),
(9, 1111, 1, 9600),
(10, 1123, 1, 15800),
(11, 1233, 1, 6300),
(3, 2030, 2, 5200),
(15, 3060, 5, 6700),
(12, 3456, 3, 18400),
(6, 4003, 4, 1500),
(13, 4005, 2, 2400),
(1, 4010, 4, 2300),
(8, 4123, 4, 3000),
(14, 5050, 5, 7500);

#Insert_into_Product_Table :
INSERT INTO Product_details (Product_id, Product_type) 
VALUES
(1, 'Child Plan'),
(2, 'Pension'),
(3, 'Investment'),
(4, 'Protection'),
(5, 'Home Insurance');



