-- Total downtime per machine
SELECT machine_id, COUNT(*) AS total_failures, SUM(downtime_hours) AS total_downtime
FROM downtime_events
GROUP BY machine_id
ORDER BY total_downtime DESC;

-- Top failure reasons
SELECT failure_reason, COUNT(*) AS occurrences
FROM downtime_events
GROUP BY failure_reason
ORDER BY occurrences DESC;

-- Average repair time (MTTR)
SELECT AVG(downtime_hours) AS avg_repair_time
FROM downtime_events;