-- Initial SQLite setup
.open fittrackpro.db
.mode column

-- Enable foreign key support
PRAGMA foreign_keys = ON;

-- Attendance Tracking Queries
-- 1. Record a member's gym visit
INSERT INTO attendance (member_id, location_id, check_in_time)
VALUES (7, 1, CURRENT_TIMESTAMP);

.print Retrieve a member's attendance history
-- 2. Retrieve a member's attendance history
SELECT check_in_time, check_out_time
FROM attendance
WHERE member_id = 5;

-- 3. Find the busiest day of the week based on gym visits
SELECT strftime('%w', check_in_time) AS day_of_week, COUNT(*) AS visit_count
FROM attendance
GROUP BY day_of_week
ORDER BY visit_count DESC;

-- 4. Calculate the average daily attendance for each location
SELECT l.name AS location_name, AVG(daily_count) AS avg_daily_attendance
FROM (
    SELECT location_id, DATE(check_in_time) AS visit_date, COUNT(*) AS daily_count
    FROM attendance
    GROUP BY location_id, visit_date
) AS daily_attendance
JOIN locations l ON daily_attendance.location_id = l.location_id
GROUP BY l.name;