-- convert date type

SELECT Artist_Name,
    Primary_Genre,
    Artist_Type,
    sex,
    Country_of_Origin,
    Primary_Language,
    CAST(artist_followers AS int) AS artist_followers,
    CAST(Total_Streams_in_millions AS int) AS Total_Streams_in_millions,
    CAST(album_total_tracks AS int) AS album_total_tracks,
    CAST(album_release_date AS date) AS album_release_date,
    CAST(solo_streams AS decimal) AS solo_streams,
    CAST(collab_streams AS decimal) AS collab_streams
FROM combined_files;

-- delete the null rows

SELECT *
FROM combined_files
WHERE artist_followers IS NOT NULL;
