---create the core fact table
SELECT 
   Row_ID,
   Order_ID,
   CAST(Order_Date AS Date) AS Order_Date,
   CAST(Ship_Date AS Date) AS Ship_Date,
   Ship_Mode,
   Customer_ID,
   Product_ID,
   Sales,
   Units,
   Gross_Profit,
   Cost
INTO Fact_Sales
FROM Candy_Sales;

---Extract only the zip codes that exist in the customer data
SELECT DISTINCT 
   CAST(zip AS NVARCHAR(20)) AS Postal_Code,
   lat AS Latitude,
   lng AS Longitude
INTO Dim_Geography
FROM uszips 
WHERE CAST(zip AS NVARCHAR(20)) IN (SELECT Postal_Code FROM Dim_Customer);