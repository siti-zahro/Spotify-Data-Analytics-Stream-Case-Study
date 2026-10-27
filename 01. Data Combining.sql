-- Data Combining

-- Combining both data from 2 different sources

WITH combined_files AS(
  SELECT msa.artist_name,
    Primary_Genre,
    Artist_Type,
    sex,
    Country_of_Origin,
    Primary_Language,
    artist_followers,
    album_total_tracks,
    album_release_date,
    Total_Streams_in_millions
  FROM Most_Streamed_Artists AS msa
  JOIN track_data_final tdf
    ON msa.Artist_Name = tdf.artist_name
)

SELECT *                                          -- return 3,688 rows
FROM combined_files;
