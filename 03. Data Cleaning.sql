-- Data Cleaning

-- convert date type

SELECT Artist_Name,
    Primary_Genre,
    Artist_Type,
    sex,
    Country_of_Origin,
    Primary_Language,
    CAST(artist_followers AS bigint) AS artist_followers,
    CAST(album_total_tracks AS bigint) AS album_total_tracks,
    TRY_CAST(album_release_date AS date) AS album_release_date,
    album_type,
    CAST(Total_Streams_in_millions AS bigint) AS Total_Streams
FROM combined_files;

-- delete the null rows

SELECT *                                        -- return 4,509 rows
FROM combined_files
WHERE artist_followers IS NOT NULL;

-- filter the album type to album only

SELECT *                                        -- return 3,688 rows
FROM combined_files
WHERE album_type LIKE 'Album';
