WITH player_efficiency AS (
  SELECT 
    player,
    team,
    age,
    pos,
    points,
    -- Custom efficiency metrics
    (points + rebounds + assists + steals + blocks - turnovers - fouls) AS basic_efficiency,
    (points * fg + rebounds + assists * 1.5 + steals * 2 + blocks * 2 - turnovers * 1.5) AS weighted_efficiency,
    points / (NULLIF(turnovers, 0)) AS scoring_to_turnover_ratio,
    assists / (NULLIF(turnovers, 0)) AS assist_to_turnover_ratio,
    -- Shooting efficiency tiers
    CASE 
      WHEN effectivefg >= 0.60 THEN 'Elite Shooter'
      WHEN effectivefg >= 0.55 THEN 'Great Shooter'
      WHEN effectivefg >= 0.50 THEN 'Good Shooter'
      ELSE 'Below Average Shooter'
    END AS shooting_tier
  FROM player_stat
)
SELECT 
  player,
  team,
  pos,
  points,
  basic_efficiency,
  weighted_efficiency,
  scoring_to_turnover_ratio,
  shooting_tier,
  RANK() OVER (ORDER BY weighted_efficiency DESC) as efficiency_rank
FROM player_efficiency
ORDER BY weighted_efficiency DESC
LIMIT 20;