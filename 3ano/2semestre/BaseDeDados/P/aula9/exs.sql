-- DBCC FREEPROCCACHE; 
-- DBCC DROPCLEANBUFFERS;

-- 9.1
-- SET STATISTICS IO ON;
-- SET STATISTICS TIME ON;


-- 1 Cost: 97%, 0.022s
-- select * from Production.WorkOrder 

-- done
-- 2
-- select * from Production.WorkOrder where WorkOrderID=1234

-- 3
/*
 SELECT * FROM Production.WorkOrder 
WHERE WorkOrderID between 10000 and 10010

SELECT * FROM Production.WorkOrder 
WHERE WorkOrderID between 1 and 72591 

*/

-- 4
/*
 SELECT * FROM Production.WorkOrder 
WHERE StartDate = '2012-05-14' 
*/


-- 5
--  SELECT * FROM Production.WorkOrder WHERE ProductID = 757
-- 6
/*
Query1: SELECT WorkOrderID, StartDate FROM Production.WorkOrder 
WHERE ProductID = 757 

Query2: SELECT WorkOrderID, StartDate FROM Production.WorkOrder 
WHERE ProductID = 945 

Query3: SELECT WorkOrderID FROM Production.WorkOrder 
WHERE ProductID = 945 AND StartDate = '2011-12-04' 
*/

-- 7
/*
SELECT WorkOrderID, StartDate FROM Production.WorkOrder  
WHERE ProductID = 945 AND StartDate = '2011-12-04' 
*/

-- 8
/*
SELECT WorkOrderID, StartDate FROM Production.WorkOrder  
WHERE ProductID = 945 AND StartDate = '2011-12-04' 
*/


-- 9.2





