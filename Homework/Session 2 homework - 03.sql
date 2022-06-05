--Change Products table always to insert value 1 in price column if no price is provided on insert

ALTER TABLE Products 
ADD CONSTRAINT default_Price
DEFAULT '1' FOR Price


--Change Products table to prevent inserting Price that will more than 2x bigger then the cost price
ALTER TABLE Products
ADD CONSTRAINT CHECK_Price CHECK (Price < 2* Cost)



--Change Products table to guarantee unique names across the products
ALTER TABLE Products
ADD CONSTRAINT UC_Name
UNIQUE ([Name])
