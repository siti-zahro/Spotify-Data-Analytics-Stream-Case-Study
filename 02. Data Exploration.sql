-- Data Exploration

-- checking total rows combined

SELECT COUNT(*)                                                  -- return 4,658 rows in total
FROM combined_files;

-- checking data type in each columns

DECLARE @datavar NVARCHAR(MAX) = N'
WITH combined_files AS(
    SELECT msa.Artist_Name,
        Primary_Genre,
        Artist_Type,
        sex,
        Country_of_Origin,
        Primary_Language,                                        -- all columns were nvarchar(50), except both of columns below
        artist_followers,                                        -- float
        album_total_tracks,
        album_release_date,
        Total_Streams_in_millions                                -- float
    FROM Most_Streamed_Artists AS msa
    LEFT JOIN track_data_final tdf
        ON msa.Artist_Name = tdf.artist_name
)
    
SELECT *
FROM combined_files;
';

SELECT
    name AS column_name,
    system_type_name AS data_type,
    max_length,
    precision
FROM sys.dm_exec_describe_first_result_set(@datavar, NULL, 0)
WHERE is_hidden = 0;

-- checking for unique rows of artist

SELECT COUNT(DISTINCT artist_name) AS unique_artist_names                                    -- return 500 rows
FROM combined_files;

-- checking for duplicate rows 

SELECT COUNT(artist_followers) - COUNT(DISTINCT artist_followers) AS duplicate_followers,    -- return 3,616 duplicate rows
    COUNT(album_total_tracks) - COUNT(DISTINCT album_total_tracks) AS duplicate_tracks,      -- return 4,452 duplicate rows
    COUNT(album_release_date) - COUNT(DISTINCT album_release_date) AS duplicate_released     -- return 3,314 duplicate rows
FROM combined_files;

-- checking for number of null values in all columns

SELECT COUNT(*) - COUNT(artist_name) artist_name,
    COUNT(*) - COUNT(Primary_Genre) Primary_Genre,
    COUNT(*) - COUNT(Artist_Type) Artist_Type,
    COUNT(*) - COUNT(sex) sex,
    COUNT(*) - COUNT(Country_of_Origin) Country_of_Origin,
    COUNT(*) - COUNT(Primary_Language) Primary_Language,
    COUNT(*) - COUNT(artist_followers) artist_followers,                      -- return 149 rows
    COUNT(*) - COUNT(album_total_tracks) album_total_tracks,                  -- return 149 rows
    COUNT(*) - COUNT(album_release_date) album_release_date,                  -- return 149 rows
    COUNT(*) - COUNT(Total_Streams_in_millions) Total_Streams_in_millions
FROM combined_files;
