#Customer_Table
CREATE TABLE Customer_details (
    Customer_id INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),
    Age INT CHECK (Age > 0),
    City VARCHAR(60),
    Vintage INT NOT NULL CHECK (Vintage >= 0)
);

#Policy_Table
CREATE TABLE Policy_details (
    Policy_id INT PRIMARY KEY,
    Customer_id INT,
    Product_id INT,
    Premium INT,
    FOREIGN KEY (Customer_id) REFERENCES Customer_details(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Product_details(Product_id)
);

#Product_Table
CREATE TABLE Product_details (
    Product_id INT PRIMARY KEY,
    Product_type VARCHAR(50) NOT NULL
);


