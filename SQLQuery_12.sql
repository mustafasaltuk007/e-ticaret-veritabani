CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    CategoryID INT NOT NULL,
    ProductName VARCHAR(200) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Stock INT DEFAULT 0,
    CreateDate DATETIME DEFAULT GETDATE(),
    CONSTRAINT FK_Products_Categories
        FOREIGN KEY (CategoryID) 
        REFERENCES Categories(CategoryID)
);