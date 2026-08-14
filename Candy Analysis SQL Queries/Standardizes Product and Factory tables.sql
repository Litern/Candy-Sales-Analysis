 ---Standardize Product Table
SELECT
  Product_ID,
  Product_Name,
  Division,
  Factory AS FactoryID
INTO Dim_Product
FROM Candy_Products;

--Standardize Factory Table
SELECT Factory AS Factory_ID,
       Latitude,
       Longitude    
INTO Dim_Factory
FROM Candy_Factories;
