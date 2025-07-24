CREATE TABLE downtime_events (
    event_id INT PRIMARY KEY,
    machine_id VARCHAR(10),
    start_time DATETIME,
    end_time DATETIME,
    failure_reason VARCHAR(50),
    technician VARCHAR(50),
    downtime_hours DECIMAL(10,2)
);