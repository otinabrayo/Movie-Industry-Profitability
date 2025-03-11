USE MovieIndustry;

go

CREATE SCHEMA silver;
GO


SELECT *
FROM MoviesCleanedUpdate

SELECT *
FROM MoviesCleanedUpdate
WHERE ROI IS NULL;

UPDATE MoviesCleanedUpdate
SET ROI = 0
WHERE ROI IS NULL;

DELETE
FROM MoviesCleanedUpdate
WHERE ROI IS NULL AND profit = 0;

DELETE 
FROM MoviesCleanedUpdate
WHERE homepage LIKE 'homepage';

SELECT *
FROM MoviesCleanedUpdate
ORDER BY release_date;

-- Ordering with their release date


SELECT SUM(ROI)
FROM MoviesCleanedUpdate
WHERE release_date < 2000;


WITH profitY as (
	SELECT *
	FROM MoviesCleanedUpdate
	WHERE runtime > 120
)
SELECT SUM(ROI)
FROM profitY

SELECT DISTINCT release_date
FROM MoviesCleanedUpdate


ALTER TABLE MoviesCleanedUpdate
ADD release_period NVARCHAR(50);

UPDATE MoviesCleanedUpdate 
SET release_period = (
	CASE 
		WHEN release_date < 1950 THEN 'Early 90s'
		WHEN release_date < 2000 THEN 'Late 90s'
		WHEN release_date >= 2000 THEN 'Early 2000s'
	END
)

WITH profit_per_release AS(
	SELECT 
	profit,
	CASE 
		WHEN release_date < 1950 THEN 'Early 90s'
		WHEN release_date < 2000 THEN 'Late 90s'
		WHEN release_date >= 2000 THEN 'Early 2000s'
	END	release_period
	FROM MoviesCleanedUpdate 
 )
SELECT 
DISTINCT release_period,
SUM(profit)
FROM profit_per_release
GROUP BY release_period



-- Picking First item in the list of genres as original genre

SELECT
genres,
JSON_VALUE(genres, '$[0].name') AS first_genre
FROM MoviesCleanedUpdate;


-- Deleting and updating the previous genres lists 

ALTER TABLE MoviesCleanedUpdate
DROP COLUMN genres
ADD genre NVARCHAR(50);

UPDATE MoviesCleanedUpdate 
SET genre = JSON_VALUE(genres, '$[0].name')


-- Picking First item in the list production_countries  as original production_company

SELECT
JSON_VALUE(production_companies, '$[0].name') AS production_company,
JSON_VALUE(production_countries, '$[0].name') AS production_country,
JSON_VALUE(keywords, '$[0].name') AS keyword
FROM MoviesCleanedUpdate;


-- Deleting and updating the previous genres lists 

ALTER TABLE MoviesCleanedUpdate
ADD 
keyword NVARCHAR(MAX)
production_company NVARCHAR(MAX), 
production_country NVARCHAR(MAX);

UPDATE MoviesCleanedUpdate 
SET production_company = JSON_VALUE(production_companies, '$[0].name'),
production_country = JSON_VALUE(production_countries, '$[0].name'),
keyword = JSON_VALUE(keywords, '$[0].name')



ALTER TABLE MoviesCleanedUpdate
ALTER COLUMN production_country NVARCHAR(200)

