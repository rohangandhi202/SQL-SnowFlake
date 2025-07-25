# SQL-SnowFlake
Personal Project after learning SQL and SnowFlake

# 🏀 NBA Player Stats - Snowflake ETL & Analytics Project

This project demonstrates how to perform ETL (Extract, Transform, Load) and analytical queries using **Snowflake** with a dataset of the top 100 NBA player stats. It includes:

- Uploading a CSV dataset to Snowflake
- Creating and populating tables
- Running analytical SQL queries
- Exploring player and team performance

## 📂 Dataset

The dataset is based on the top 100 NBA players and includes statistics like:
- Player name
- Team
- Points per game
- Assists
- Rebounds
- Steals 
- Blocks
- Turnovers
- Fouls
- Field Goal %, Three Point %, Effective Field Goal%, and Free Throw %

## 🛠️ Tech Stack

- **Snowflake** (Cloud Data Warehouse)
- **SQL** (Snowsight Web UI)
- **CSV File** (Uploaded manually)

## 🧱 Database Schema

### Table: `player_stats`
| Column      | Data Type | Description              |
|-------------|-----------|--------------------------|
| Player      | TEXT      | Player’s name            |
| Age         | INT       | Player's Age             |
| Team        | TEXT      | NBA team abbreviation    |
| Position    | TEXT      | Player's Position        |
| PTS         | FLOAT     | Points per game          |
| AST         | FLOAT     | Assists per game         |
| TRB         | FLOAT     | Total rebounds per game  |
| Steals      | FLOAT     | Steals per game          |
| Blocks      | FLOAT     | Blocks per game          |
| Turnovers   | FLOAT     | Turnovers per game       |
| Fould       | FLOAT     | Fouls  per game          |
| FG%         | FLOAT     | Field goal percentage    |
| 3P%         | FLOAT     | Three-point percentage   |
| FT%         | FLOAT     | Free throw percentage    |
| EFG%        | FLOAT     | Effective FG percentage  |

---

## 🚀 Steps

### 1. Upload the CSV
Upload the `top100_player_stats.csv` file into Snowflake using the Snowsight UI

### 2. Create the Table
```sql
CREATE OR REPLACE TABLE player_stats (
    PLAYER	TEXT
    AGE INT
    TEAM TEXT
    POS	TEXT
    FG	FLOAT
    THREEPOINT	FLOAT
    EFFECTIVEFG	FLOAT
    FREETHROW	FLOAT
    REBOUNDS	FLOAT
    ASSISTS	FLOAT
    STEALS	FLOAT
    BLOCKS	FLOAT
    TURNOVERS	FLOAT
    FOULS	FLOAT
    POINTS	FLOAT
);
```

### 3. Load the Data
Used the load data wizard in snowflake to update the data to the table, PLAYER_STAT, in the NBA_STATS_DB database

### 4. Create and Run Analytical Queries
Examples shown in the .sql files with the results in the .csv files
