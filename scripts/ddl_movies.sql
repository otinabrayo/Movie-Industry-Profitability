/*
	SILVER table creation and data insertion from raw data
*/

USE MovieIndustry;

GO

IF OBJECT_ID('silver.movies', 'U' ) IS NOT NULL
	DROP TABLE silver.movies 
CREATE TABLE silver.movies(
	id INT,
	title NVARCHAR(500),
	genre NVARCHAR(50),
	homepage NVARCHAR(MAX),
	overview NVARCHAR(MAX),
	keyword NVARCHAR(50),
	production_company NVARCHAR(MAX),
	production_country NVARCHAR(MAX),
	release_date SMALLINT,
	release_period NVARCHAR(50),
	runtime INT,
	popularity FLOAT,
	vote_count SMALLINT,
	vote_average FLOAT,
	revenue BIGINT,
	budget INT,
	ROI BIGINT,
	profit BIGINT,
	genre_count INT,
	avg_profit_per_genre FLOAT
)

GO

CREATE OR ALTER PROCEDURE movies AS

INSERT INTO silver.movies(
id,
title,
genre,
homepage,
overview,
keyword,
production_company,
production_country,
release_date,
release_period,
runtime,
popularity,
vote_count,
vote_average,
revenue,
budget,
ROI,
profit,
genre_count,
avg_profit_per_genre
)
SELECT 
id,
title,
genre,
homepage,
overview,
keyword,
production_company,
production_country,
release_date,
release_period,
runtime,
popularity,
vote_count,
vote_average,
revenue,
budget,
ROI,
profit,
genre_count,
avg_profit_per_genre
FROM MoviesCleanedUpdate;

GO
