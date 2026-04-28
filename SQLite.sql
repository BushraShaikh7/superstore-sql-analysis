-- SELECT in SQL means — pick these specific things and show them to me.
-- SELECT = pick these columns ; FROM = from this table
-- WHERE in SQL means only show me rows that meet this condition.

--STEP ONE : WHAT IS IN THE DATA AND HOW MANY ROWS?
Select count(*) FROM Sample_Superstore;

Select * From Sample_Superstore;

PRAGMA table_info(Sample_Superstore);

-- Show me all orders from the West region
SELECT count(*) FROM Sample_Superstore WHERE Region='West';

-- Show me col like region, sales, category only for west region
SELECT Sales, Category, Region FROM Sample_Superstore WHERE Region ='West';

-- how would you write a query that gives you just one number — the total sales from the West region?
SELECT SUM(Sales) FROM Sample_Superstore Where Region='West';

--give me the total sales for ALL regions, not just West, in one query.
SELECT Region, SUM(Sales) FROM Sample_Superstore GROUP BY Region;

--Show me total profit by region so we can compare it against sales.
SELECT Region, SUM(Profit) FROM Sample_Superstore GROUP BY Region; 

-- Which region generates the most Sales, ranked highest to lowest?
SELECT Region, SUM(Sales) FROM Sample_Superstore GROUP BY Region ORDER BY SUM(Sales) DESC;

-- Which region generates the most profit, ranked highest to lowest?
SELECT Region, SUM(Profit) FROM Sample_Superstore GROUP BY Region ORDER BY SUM(Profit) DESC;

-- Which are the top 5 most profitable sub-categories?
SELECT sub_category, SUM(Profit) FROM Sample_Superstore GROUP BY sub_category ORDER BY SUM(Profit) DESC LIMIT 5;

--Does our Sales column have any missing values?
SELECT COUNT(*), COUNT(Sales) FROM Sample_Superstore;

