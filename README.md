# Spotify Data Analytics: Stream Case Study
## Introduction
In this case study, I will perform many real-world tasks of a junior data analyst at a fictional company, Spotify. In order to answer the key business questions, I will follow the steps of the data analysis process: [Task](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/edit/main/README.md#task), [Prepare](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/edit/main/README.md#prepare), [Process](https://github.com/szahraZahro/Spotify-Analyze-Case-Study/edit/main/README.md#process), [Analyze](https://github.com/SomiaNasir/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/README.md#analyze-and-share), [Share](https://github.com/SomiaNasir/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/README.md#analyze-and-share), and [Act](https://github.com/SomiaNasir/Google-Data-Analytics-Capstone-Cyclistic-Case-Study#act).

## Background
### Spotify

Spotify is a digital music streaming platform that provides users with access to millions of songs, albums, and podcasts from artists around the world. The platform offers both free and Premium subscription plans. Free users can access music with advertisements and certain listening restrictions, while Premium subscribers enjoy an ad-free experience and additional features, including offline listening and on-demand playback.

Spotify serves a diverse audience with different music preferences, listening habits, and engagement levels. Users can discover music through personalized playlists, search, charts, and recommendations. Artists also use Spotify to reach audiences, grow their fan base, and measure their music performance through streaming statistics.

Until now, understanding artist performance and listener engagement has been essential for identifying trends in the music industry. Spotify's extensive catalog and global audience create opportunities to analyze streaming performance across artists, genres, countries, and music releases.

The business objective of this analysis is to better understand the factors associated with artist popularity and streaming performance. By examining metrics such as total streams, artist followers, album releases, music genres, and countries of origin, the analysis can identify patterns that distinguish high-performing artists from others.

The analysis aims to answer key questions: Which artists generate the highest number of streams? Which music genres attract the most listeners? Is there a relationship between an artist's followers and total streams? How do streaming trends vary across countries and genres? Which artists demonstrate strong engagement relative to their audience size?

By analyzing historical Spotify artist and streaming data, this project seeks to uncover meaningful trends and translate them into actionable insights. These findings can help stakeholders better understand audience preferences, evaluate artist performance, and identify potential opportunities for artist promotion and audience growth.

### Scenario

I am assuming the role of a Junior Data Analyst working with the music analytics team at Spotify. The team wants to better understand the factors associated with song performance and identify trends that can help stakeholders make more informed decisions about music promotion and artist development. The team believes that understanding streaming performance across artists, genres, and song releases can provide valuable insights into music popularity. Therefore, my task is to analyze publicly available Spotify streaming data to identify the characteristics and trends associated with highly streamed songs. The final objective is to provide data-driven recommendations that help stakeholders understand music trends, evaluate song performance, and identify potential opportunities for artist promotion. These recommendations must be supported by clear analytical findings and professional data visualizations before being presented to the relevant stakeholders.

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

I will use the publicly available *Most Streamed Artists on Spotify* dataset. The dataset can be downloaded from [Kaggle](https://www.kaggle.com/datasets/rishavsvault/most-streamed-artists-on-spotify/data).
The data has been made available under this [License](https://creativecommons.org/licenses/by/4.0/).

This dataset provides a granular breakdown of streaming metrics for the world's most popular musical artists on Spotify. As of July 2026, this data encapsulates the massive reach of artists across various genres, countries, and types (Solo vs. Group).

This is publicly available, third-party data that can be used to explore streaming performance and music trends. However, it does not provide Spotify's confidential internal business data or individual users' listening histories. The dataset represents a selection of songs rather than every song on Spotify, so the findings may not represent the entire Spotify catalog or all listeners' preferences.

### Data Organization

The dataset is provided as a CSV file containing song-level records and 29 columns. Each row represents a song and includes information such as its title, artist, album, release date, total Spotify streams, playlist performance, and selected metrics from other platforms.

Key columns include `Track`, `Album Name`, `Artist`, `Release Date`, `Spotify Streams`, `Spotify Playlist Count`, `Spotify Playlist Reach`, `Spotify Popularity`, `YouTube Views`, `TikTok Views`, and `Apple Music Playlist Count`. Additional columns contain music-related attributes and cross-platform performance metrics. <Cite refs={["turn368619search0"]}/>

Before conducting the analysis, I will inspect the dataset to identify missing values, duplicate records, inconsistent data types, and formatting issues. I will also verify the definitions and completeness of the available metrics to ensure the analysis is reliable.

The cleaned dataset will then be used to investigate streaming performance across songs and artists, examine relationships between playlist presence and streaming counts, and explore trends by release date and other available song characteristics.

## Process

### Combining the Data

SQL Query: [[Data Combining](https://chatgpt.com/c/6ad90ac5-ddac-83ec-b0b1-022864835840#)](#)

The Spotify dataset is imported into SQL Server as a table named `spotify_data`. If the project uses multiple CSV files covering different periods or chart categories, these files will be imported separately and combined into a single table named `combined_spotify_data`, provided that their structures are compatible.

The combined table will serve as the primary dataset for the analysis, allowing me to examine song performance, compare artists, and identify streaming trends across the available records.

If the project uses a single CSV file, the data will be imported directly into `spotify_data` without an unnecessary combining step.

### [Data Exploration](https://chatgpt.com/c/6ad90ac5-ddac-83ec-b0b1-022864835840#)

SQL Query: [Data Exploration](#)

Before cleaning the data, I will explore the dataset to understand its structure, identify potential inconsistencies, and assess the quality of the available information.

The exploration will include checking column names, data types, total row count, missing values, duplicate records, and the range of streaming counts. I will also verify whether song identifiers are available and suitable for uniquely identifying records.

Observations:

1. The initial exploration will document all column names and their data types to understand the information available for analysis.
2. I will identify potential unique identifiers, such as track IDs, where available, and check for duplicate records.
3. I will examine missing values and inconsistent formatting in key fields, including artist names, track titles, release dates, and streaming counts.
4. I will review the distribution of streaming counts and other performance metrics to identify unusual values that may require further investigation.

These findings will guide the data-cleaning process and help ensure that subsequent SQL analysis and Power BI visualizations are based on reliable data.

### Data Cleaning
SQL Query: [Data Cleaning](https://github.com/SomiaNasir/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/03.%20Data%20Cleaning.sql)

1. All the rows having missing values are deleted.
2. 3 more columns ride_length for duration of the trip, day_of_week and month are added.
3. Trips with duration less than a minute and longer than a day are excluded.
4. Total 1,375,912 rows are removed in this step.

## Analyze and Share

SQL Query: Data Analysis
Data Visualization: Power BI
The data is stored appropriately and is now prepared for analysis. I queried multiple relevant tables for the analysis and visualized them in Power BI.
The analysis question is: How does streaming performance differ across artists, songs, and music genres?

First of all, member and casual riders are compared by the type of bikes they are using.
