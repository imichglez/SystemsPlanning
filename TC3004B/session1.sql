-- counting records on customers table
--
SELECT count(*) from sh.CUSTOMERS;

--
-- 
SELECT CU.CUST_ID, SUM(SA.AMOUNT_SOLD) AS Total FROM sh.CUSTOMERS CU, sh.SALES SA 
WHERE CU.CUST_ID = SA.CUST_ID 
GROUP BY CU.CUST_ID
ORDER BY Total DESC; 
