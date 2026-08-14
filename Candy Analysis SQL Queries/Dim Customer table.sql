 ----Create Dim_Customer
SELECT DISTINCT 
   Customer_ID,
   Country_Region,
   State_Province,
   City,
   Postal_Code
INTO Dim_Customer
FROM Candy_Sales
WHERE Customer_ID IS NOT NULL;
