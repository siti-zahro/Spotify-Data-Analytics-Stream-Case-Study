# Spotify Data Analytics: Stream Case Study
## Introduction
In this case study, I will perform many real-world tasks of a junior data analyst at a fictional company, Spotify. In order to answer the key business questions, I will follow the steps of the data analysis process: [Task](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/edit/main/README.md#task), [Prepare](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/edit/main/README.md#prepare), [Process](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/edit/main/README.md#process), [Analyze](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/blob/main/README.md#analyze-and-share), [Share](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/blob/main/README.md#analyze-and-share), and [Action](https://github.com/siti-zahro/Spotify-Data-Analytics-Stream-Case-Study/blob/main/README.md#action).

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

1. Which artists have the highest streaming performance, and what opportunities can this create for artist promotion?
2. How does an artist’s follower count relate to their streaming performance, and how can this insight support audience growth strategies?
3. Which music genres show strong streaming performance, and how can music industry stakeholders use these insights to plan marketing campaigns?
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

    <img width="383" height="235" alt="Screenshot 2026-10-28 002544" src="https://github.com/user-attachments/assets/9f501105-03ee-42ce-a64e-91e12bbd11bc" />
2. I will identify potential unique identifiers, such as artist names, where available, and check for duplicate records.

   <img width="152" height="46" alt="Screenshot 2026-10-28 002859" src="https://github.com/user-attachments/assets/61287f05-3091-4e47-a838-794b06d1429e" />
   <img width="344" height="46" alt="checking for duplicate rows" src="https://github.com/user-attachments/assets/ad085837-c727-4d3f-bd67-acb64ded948d" />
3. I will examine missing values and inconsistent formatting in key fields, including artist followers, track titles, and release dates.

   <img width="953" height="45" alt="checking for number of null values in all columns" src="https://github.com/user-attachments/assets/13fe063c-acd7-46d0-8069-347dd9cabaf1" />

These findings will guide the data-cleaning process and help ensure that subsequent SQL analysis and Power BI visualizations are based on reliable data.

### Data Cleaning
SQL Query: [Data Cleaning](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/blob/main/03.%20Data%20Cleaning.sql)

1. Convert several columns' data type.
2. All the rows having missing values are deleted.
3. Total 970 rows are removed in this step.

## Analyze and Share (STILL UNDER CONSTRUCTION!)

SQL Query: [Data Analysis](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/blob/main/04.%20Data%20Analysis.sql)  
Data Visualization: [Power BI](https://szahra.framer.website/work/stream)  
The data is stored appropriately and is now prepared for analysis. I queried multiple relevant tables for the analysis and visualized them in Power BI.  
The analysis question is: How does streaming performance differ across artists, songs, and music genres?

1. Artist Streaming Performance.
   I compared artists based on their total Spotify streams to identify the highest-performing artists. Streaming figures are displayed in billions to make comparisons easier to interpret and to highlight differences in streaming performance among artists.
   
   <img width="584" height="415" alt="Screenshot 2026-10-28 033013" src="https://github.com/user-attachments/assets/b1ff8b12-71cd-4001-a59a-17794cf94b78" />

2. Artist Followers and Streaming Performance.
   I compared artist follower counts with total streams to explore the relationship between audience size and streaming performance. This helps distinguish artists with large existing audiences from those whose streaming performance may differ from their follower counts.

   <img width="687" height="616" alt="Screenshot 2026-10-28 032943" src="https://github.com/user-attachments/assets/990c6ed6-2e67-43d7-b0ce-e848f936d5be" />

3. Streaming Performance by Genre.
   I provided streaming performance across music genres to identify differences in their overall streaming contribution and to identify patterns across the categories. These information provide a broader view of how streaming performance varies across the music categories represented in the dataset.

   <img width="354" height="479" alt="Screenshot 2026-10-28 035023" src="https://github.com/user-attachments/assets/de4f7bd5-6cc0-4a4d-ae70-972b19db9fe7" /> <img width="586" height="374" alt="Screenshot 2026-10-28 033023" src="https://github.com/user-attachments/assets/64b170e3-023f-4972-981a-f3f4aea8f9d9" />

### Key Findings

The dashboard provides three main perspectives on streaming performance:
- ### Artist performance:
  Total streams can be used to rank artists and compare their streaming performance.
- ### Followers and streams:
  Comparing follower counts with total streams helps examine how audience size relates to streaming activity.
- ### Genre performance:
  Comparing streaming totals across genres helps identify differences in streaming contribution between music categories.

## Action
1. ### Which artists have the highest streaming performance, and what opportunities can this create for artist promotion?  
   Comparing total streams helps identify top-performing artists who could be prioritized for promotional campaigns and collaborations. This can help music industry stakeholders allocate marketing resources more effectively.

2. ### How does an artist’s follower count relate to their streaming performance, and how can this insight support audience growth strategies?  
   Comparing artist followers with total streams helps explore whether a larger audience is associated with higher streaming performance. Artists with different follower counts and streaming results may offer opportunities to improve audience engagement and reach.

3. ### How can Spotify and music industry stakeholders use streaming insights to identify potential opportunities for artist promotion and audience growth?  
   Streaming insights let Spotify and industry stakeholders promote artists based on evidence instead of guesswork. My dashboard on Spotify data from 2009 to 2026 points to four opportunities:

    - Back proven performers. Ranking artists by total streams shows who already has momentum and deserves the biggest promotion budgets.
    - Find hidden growth. Comparing followers with streams shows artists whose listeners engage but haven’t followed yet (a conversion opportunity) and artists with large followings but weaker streams (a re-engagement need).
    - Look beyond release volume. Testing whether more albums actually means more streams shifts the focus to release quality, timing, and marketing instead of output.
    - Target strong genres. Genre comparisons show where listener demand is highest, guiding signing, playlist curation, and campaigns.

Together, these let stakeholders allocate budgets by data, spot rising artists earlier, and grow audiences by acting on the gap between reach and engagement.
