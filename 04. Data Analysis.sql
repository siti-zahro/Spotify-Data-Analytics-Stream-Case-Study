-- Data Analysis

-- counting the sum of tracks and streams according to each artists

SELECT Artist_Name,
	Primary_Genre,
	Artist_Type,
	sex,
	Country_of_Origin,
	Primary_Language,
	artist_followers,
	SUM(album_total_tracks) AS Total_tracks,
	album_release_date,
	SUM(solo_streams) AS Total_solo_streams,
	SUM(collab_streams) AS Total_collab_streams,
	SUM(Total_Streams_in_millions) AS Total_streams
FROM data_cleaning
GROUP BY Artist_Name,
	Primary_Genre,
	Artist_Type,
	sex,
	Country_of_Origin,
	Primary_Language,
	artist_followers,
	album_release_date

-- counting the total number of album released per artists

SELECT Artist_Name,
	Primary_Genre,
	Artist_Type,
	sex,
	Country_of_Origin,
	Primary_Language,
	artist_followers,
	Total_tracks,
	COUNT(DISTINCT album_release_date) AS Total_albums,
	Total_solo_streams,
	Total_collab_streams,
	Total_streams
FROM data_cleaning
GROUP BY Artist_Name,
	Primary_Genre,
	Artist_Type,
	sex,
	Country_of_Origin,
	Primary_Language,
	Total_followers,
	Total_tracks,
	Total_solo_streams,
	Total_collab_streams,
	Total_streams

-- determine the highest number of followers per artists

SELECT Artist_Name,
	Primary_Genre,
	Artist_Type,
	sex,
	Country_of_Origin,
	Primary_Language,
	MAX(artist_followers) AS Total_followers,
	Total_tracks,
	Total_albums,
	Total_solo_streams,
	Total_collab_streams,
	Total_streams
FROM data_cleaning
GROUP BY Artist_Name,
	Primary_Genre,
	Artist_Type,
	sex,
	Country_of_Origin,
	Primary_Language,
	Total_tracks,
	Total_albums,
	Total_solo_streams,
	Total_collab_streams,
	Total_streams

