-- Top 5 Scorers
SELECT player, team, points
FROM player_stat
ORDER BY points DESC
LIMIT 10;
