
-- Criar a database se não existir
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'STOCKS')
    CREATE DATABASE STOCKS;
GO

-- Usar a database
USE STOCKS;
GO

-- Criar o schema
CREATE SCHEMA stocks;
GO

-- Criar a tabela Product
CREATE TABLE stocks.Product (
    code INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    cost INT NOT NULL,
    IVA float NOT NULL,
    nStock INT NOT NULL,
	
	PRIMARY KEY (code),
	CHECK (cost >= 0),
	CHECK (IVA >= 0)
);
-- Criar a tabela Item
CREATE TABLE stocks.Item (
    Product_code INT,
    Order_id INT NOT NULL,
    Quantity INT NOT NULL,

    PRIMARY KEY (Product_code, Order_id),
	CHECK (Quantity >= 0)
);

-- Criar a tabela Order
--Order é uma palavra reservada pelo que parece
CREATE TABLE stocks.[Order] (
    ID INT NOT NULL,
    Supplier VARCHAR(100) NOT NULL,
    date DATE NOT NULL,
    Supplier_NIF INT,

	PRIMARY KEY (ID)
);
-- Criar a tabela Supplier
CREATE TABLE stocks.Supplier (
    NIF INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL,
    FAX VARCHAR(50),
    payment_conditions VARCHAR(255),

	PRIMARY KEY (NIF),
	CHECK (NIF >= 0)
);
-- Criar a tabela Tem (relação entre Supplier e Supplier_type)
CREATE TABLE stocks.Tem (
    Supplier_NIF INT,
    code INT,
    designation VARCHAR(100) NOT NULL,

    PRIMARY KEY (Supplier_NIF, code, designation)
);


-- Criar a tabela Supplier_type
CREATE TABLE stocks.Supplier_type (
    code INT,
    designation VARCHAR(100) NOT NULL,

	PRIMARY KEY (code)
);

ALTER TABLE stocks.Item ADD CONSTRAINT FK_Item_Product
FOREIGN KEY (Product_code) REFERENCES stocks.Product(code);

ALTER TABLE stocks.Item ADD CONSTRAINT FK_Item_Order
FOREIGN KEY (Order_id) REFERENCES stocks.[Order](ID);

ALTER TABLE stocks.[Order] ADD CONSTRAINT FK_Order_Supplier
FOREIGN KEY (Supplier_NIF) REFERENCES stocks.Supplier(NIF);

ALTER TABLE stocks.Tem ADD CONSTRAINT FK_Tem_Supplier
FOREIGN KEY (Supplier_NIF) REFERENCES stocks.Supplier(NIF);

ALTER TABLE stocks.Tem ADD CONSTRAINT FK_Tem_Supplier_type
FOREIGN KEY (code) REFERENCES stocks.Supplier_type(code);

ALTER TABLE stocks.Supplier_type
ADD CONSTRAINT PK_Supplier_type UNIQUE (designation);


ALTER TABLE stocks.Tem ADD CONSTRAINT FK_Tem_Supplier_type2
FOREIGN KEY (designation) REFERENCES stocks.Supplier_type(designation);
-- done

