-- SQL Practice

-- DataBase: Dafesty

--ORDER BY

SELECT VideoCode, MovieTitle, MovieType, Rating, TotalStock FROM Movies ORDER BY MovieType, VideoCode

-- default is ascending even multiple columns to order 1st and 2nd columns are order by ascending
--VideoCode MovieType
-- 1		Action
-- 2		Action

SELECT VideoCode, MovieTitle, MovieType, Rating, TotalStock FROM Movies ORDER BY MovieType, VideoCode desc

-- multiple columns to order 1st is ascending and 2nd columns is order by descending .. 
--VideoCode MovieType
-- 5		Action
-- 4		Action

--GROUP BY , COUNT()

SELECT COUNT(MovieType) FROM Movies -- 1 columns with aggregate function no need GROUP BY

SELECT VideoCode, COUNT(MovieType) FROM Movies GROUP BY VideoCode, MovieType

-- SELECT can contain 2 columns 1 for simple column and another is used with Aggregate function
-- But we need to add GROUP BY 2 columns
-- If not error occur

SELECT VideoCode, COUNT(MovieType) FROM Movies WHERE MovieType = 'Action' GROUP BY VideoCode, MovieType

-- ok with WHERE and GROUP BY with 2 columns with aggregate function in SELECT

