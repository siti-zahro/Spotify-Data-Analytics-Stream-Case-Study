-- checking for number of null values in all columns

SELECT COUNT(*) - COUNT(artist_name) artist_name,
COUNT(*) - COUNT(Primary_Genre) Primary_Genre,
COUNT(*) - COUNT(Artist_Type) Artist_Type,
COUNT(*) - COUNT(sex) sex,
COUNT(*) - COUNT(Country_of_Origin) Country_of_Origin,
COUNT(*) - COUNT(Primary_Language) Primary_Language,
COUNT(*) - COUNT(artist_followers) artist_followers,                      -- return 149 rows
COUNT(*) - COUNT(Total_Streams_in_millions) Total_Streams_in_millions,
COUNT(*) - COUNT(album_total_tracks) album_total_tracks,                  -- return 149 rows
COUNT(*) - COUNT(album_release_date) album_release_date,                  -- return 149 rows
COUNT(*) - COUNT(solo_streams) solo_streams,
COUNT(*) - COUNT(collab_streams) collab_streams
FROM combined_files

-- checking unique artist names

SELECT COUNT(DISTINCT artist_name) AS unique_artist_names                 -- return 500 rows
FROM combined_files
