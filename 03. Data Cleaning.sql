-- delete the null rows and aggregate

SELECT Artist_Name,
    Primary_Genre,
    Artist_Type,
    sex,
    Country_of_Origin,
    Primary_Language,
    artist_followers,
    Total_Streams_in_millions,
    album_total_tracks,
    album_release_date,
    solo_streams,
    collab_streams
FROM combined_files
WHERE artist_followers is not null
GROUP BY Artist_Name,
    Primary_Genre,
    Artist_Type,
    sex,
    Country_of_Origin,
    Primary_Language,
    Total_Streams_in_millions,
    solo_streams,
    collab_streams;
