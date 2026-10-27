# Spotify Data Analytics: Stream Case Study
## Introduction
In this case study, I will perform many real-world tasks of a junior data analyst at a fictional company, Spotify. In order to answer the key business questions, I will follow the steps of the data analysis process: [Task](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/edit/main/README.md#task), [Prepare](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/edit/main/README.md#prepare), [Process](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/edit/main/README.md#process), [Analyze](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/blob/main/README.md#analyze-and-share), [Share](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/blob/main/README.md#analyze-and-share).

## Background
### Spotify

Spotify is a digital music streaming platform that provides users with access to millions of songs, albums, and podcasts from artists around the world. The platform offers both free and Premium subscription plans. Free users can access music with advertisements and certain listening restrictions, while Premium subscribers enjoy an ad-free experience and additional features, including offline listening and on-demand playback.

Spotify serves a diverse audience with different music preferences, listening habits, and engagement levels. Users can discover music through personalized playlists, search, charts, and recommendations. Artists also use Spotify to reach audiences, grow their fan base, and measure their music performance through streaming statistics.

Until now, understanding artist performance and listener engagement has been essential for identifying trends in the music industry. Spotify's extensive catalog and global audience create opportunities to analyze streaming performance across artists, genres, countries, and music releases.

The business objective of this analysis is to better understand the factors associated with artist popularity and streaming performance. By examining metrics such as total streams, artist followers, album releases, music genres, and countries of origin, the analysis can identify patterns that distinguish high-performing artists from others.

The analysis aims to answer key questions: Which artists generate the highest number of streams? Which music genres attract the most listeners? Is there a relationship between an artist's followers and total streams? How do streaming trends vary across countries and genres? Which artists demonstrate strong engagement relative to their audience size?

By analyzing historical Spotify artist and streaming data, this project seeks to uncover meaningful trends and translate them into actionable insights. These findings can help stakeholders better understand audience preferences, evaluate artist performance, and identify potential opportunities for artist promotion and audience growth.

### Scenario

I am assuming the role of a Junior Data Analyst working with the music analytics team at Spotify. The team wants to better understand the factors associated with song performance and identify trends that can help stakeholders make more informed decisions about music promotion and artist development. The team believes that understanding streaming performance across artists, genres, and song releases can provide valuable insights into music popularity.

Therefore, my task is to analyze publicly available Spotify streaming data to identify the characteristics and trends associated with highly streamed songs. The final objective is to provide data-driven recommendations that help stakeholders understand music trends, evaluate song performance, and identify potential opportunities for artist promotion. These recommendations must be supported by clear analytical findings and professional data visualizations before being presented to the relevant stakeholders.

## Task
### Business Task

Analyze Spotify streaming data to identify trends in song performance, artist popularity, and music characteristics associated with highly streamed songs. Use the findings to provide data-driven recommendations that help stakeholders make informed decisions about music promotion and artist development.

### Analysis Questions

Three questions will guide the music analytics project:

1. How does streaming performance differ across artists, songs, and music genres?
2. What factors are associated with higher streaming numbers, and how do song characteristics relate to streaming performance?
3. How can Spotify and music industry stakeholders use streaming insights to identify potential opportunities for artist promotion and audience growth?

The music analytics team has assigned me the first question to answer: How does streaming performance differ across artists, songs, and music genres?

## Prepare
### Data Source

I will use the publicly available datasets as below. The datasets can be downloaded from Kaggle.
1. *Most Streamed Artists on Spotify*. [[Kaggle1](https://www.kaggle.com/datasets/rishavsvault/most-streamed-artists-on-spotify/data)]
2. *Spotify Global Music Dataset (2009–2025)*. [[Kaggle2](https://www.kaggle.com/datasets/wardabilal/spotify-global-music-dataset-20092025)]  
The data has been made available under these [License1](https://creativecommons.org/licenses/by/4.0/) and [License2](https://creativecommons.org/publicdomain/zero/1.0/).

This dataset provides a granular breakdown of streaming metrics for the world's most popular musical artists on Spotify. As of July 2026, this data encapsulates the massive reach of artists across various genres, countries, and types (Solo vs. Group).

This is publicly available, third-party data that can be used to explore streaming performance and music trends. However, it does not provide Spotify's confidential internal business data or individual users' listening histories. The dataset represents a selection of songs rather than every song on Spotify, so the findings may not represent the entire Spotify catalog or all listeners' preferences.

### Data Organization

There are 2 files used named Most_Streamed_Artists from source 1 and track_data_final from source 2. Each file represents artists and includes information such as its song title, genre, album, album release date, total album tracks, and total Spotify streams. Key columns include `artist_name`, `Primary_Genre`, `Artist_Type`, `sex`, `Country_of_Origin`, `Primary_Language`, `artist_followers`, `album_total_tracks`, `album_release_date`, `solo_streams_in_millions`, `Collaborative_Streams_in_millions`, and `Total_Streams_in_millions`. Additional columns contain music-related attributes.

Before conducting the analysis, I will inspect the dataset to identify missing values, duplicate records, inconsistent data types, and formatting issues. I will also verify the definitions and completeness of the available metrics to ensure the analysis is reliable.

The cleaned dataset will then be used to investigate streaming performance across songs and artists, examine relationships between playlist presence and streaming counts, and explore trends by release date and other available song characteristics.

## Process
### Combining the Data

SQL Query: [Data Combining](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/blob/main/01.%20Data%20Combining.sql)  
The Spotify datasets are imported into SQL Server as a table named `Most_Streamed_Artists` and `track_data_final`. Another table named "combined_files" is created, containing 4,658 rows of data for year 2009-2026, provided that their structures are compatible.

The combined table will serve as the primary dataset for the analysis, allowing me to examine song performance, compare artists, and identify streaming trends across the available records.

### Data Exploration

SQL Query: [Data Exploration](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/blob/main/02.%20Data%20Exploration.sql)  
Before cleaning the data, I will explore the dataset to understand its structure, identify potential inconsistencies, and assess the quality of the available information.  
The exploration will include checking column names, data types, total row count, missing values, and duplicate records.

Observations:

1. The initial exploration will document all column names and their data types to understand the information available for analysis.

    <img width="293" height="252" alt="image" src="https://github.com/user-attachments/assets/3fae4439-73d7-4e0a-8497-092e1ebbb15c" />
2. I will identify potential unique identifiers, such as artist names, where available, and check for duplicate records.

   <img width="149" height="44" alt="image" src="https://github.com/user-attachments/assets/3aecd9d5-1f8c-4281-9bbd-aa2c6fae7629" />
   <img width="344" height="46" alt="image" src="https://github.com/user-attachments/assets/4c54cf72-1fd6-4ad9-aca8-f0ef90525f05" />
3. I will examine missing values and inconsistent formatting in key fields, including artist followers, track titles, and release dates.

   <img width="1099" height="42" alt="image" src="https://github.com/user-attachments/assets/81c431c8-3c79-4bc9-beee-3110ee69b211" />

These findings will guide the data-cleaning process and help ensure that subsequent SQL analysis and Power BI visualizations are based on reliable data.

### Data Cleaning
SQL Query: [Data Cleaning](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/blob/main/03.%20Data%20Cleaning.sql)

1. Convert several columns' data type.
2. All the rows having missing values are deleted.
3. Total 4,307 rows are removed in this step.

## Analyze and Share (STILL UNDER CONSTRUCTION!)

SQL Query: [Data Analysis](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/blob/main/04.%20Data%20Analysis.sql)  
Data Visualization: [Power BI](https://szahra.framer.website/work/stream)  
The data is stored appropriately and is now prepared for analysis. I queried multiple relevant tables for the analysis and visualized them in Power BI.  
The analysis question is: How does streaming performance differ across artists, songs, and music genres?

1. Artist Streaming Performance.
   I compared artists based on their total Spotify streams to identify the highest-performing artists. Streaming figures are displayed in billions to make comparisons easier to interpret and to highlight differences in streaming performance among artists.
   
   <img width="497" height="352" alt="1" src="https://github.com/user-attachments/assets/91cd57b6-f796-43af-a7aa-e91136b93a95" />

2. Album Releases and Track Volume.
   I examined the number of album releases and total tracks associated with each artist alongside their streaming performance. This comparison helps assess whether artists with a larger music catalog also tend to achieve higher streaming numbers.

   <img width="304" height="408" alt="image" src="https://github.com/user-attachments/assets/c10e6f22-ef06-4335-8264-b75f56d87c48" />
<img width="533" height="443" alt="Screenshot 2026-08-03 183936" src="https://github.com/user-attachments/assets/fad08eb1-95e9-4a10-8ebe-2db7c1810d02" />

3. Artist Followers and Streaming Performance.
   I compared artist follower counts with total streams to explore the relationship between audience size and streaming performance. This helps distinguish artists with large existing audiences from those whose streaming performance may differ from their follower counts.

   <img width="253" height="205" alt="Screenshot 2026-08-03 163227" src="https://github.com/user-attachments/assets/6bc9e74a-c330-4217-9092-509989276c03" />


5. Streaming Performance by Genre.
   I compared streaming performance across music genres to identify differences in their representation and overall streaming contribution. These comparisons provide a broader view of how streaming performance varies across the music categories represented in the dataset.

   <img width="503" height="327" alt="image" src="https://github.com/user-attachments/assets/8f07450d-68b7-4b8a-832f-160b0f24d059" />

