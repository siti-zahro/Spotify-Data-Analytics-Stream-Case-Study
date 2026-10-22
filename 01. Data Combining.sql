-- Combining both data from 2 different sources

SELECT * FROM Most_Streamed_Artists AS msa
LEFT JOIN track_data_final tdf
ON msa.Artist_Name=tdf.artist_name
