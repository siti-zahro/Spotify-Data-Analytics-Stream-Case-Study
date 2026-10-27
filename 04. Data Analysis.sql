-- Data Analysis

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
	album_type,
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
	album_type,
	Total_streams

-- counting the sum of tracks according to each artists

SELECT Artist_Name,
	Primary_Genre,
	Artist_Type,
	sex,
	Country_of_Origin,
	Primary_Language,
	artist_followers,
	SUM(album_total_tracks) AS Total_tracks,
	album_release_date,
	album_type,
	Total_Streams
FROM data_cleaning
GROUP BY Artist_Name,
	Primary_Genre,
	Artist_Type,
	sex,
	Country_of_Origin,
	Primary_Language,
	artist_followers,
	album_release_date,
	album_type,
	Total_Streams

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
	album_type,
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
	album_type,
	Total_streams
