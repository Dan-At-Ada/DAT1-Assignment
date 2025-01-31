-- Initial SQLite setup
.open fittrackpro.db
.mode column

-- Enable foreign key support
PRAGMA foreign_keys = ON;

-- Staff Management Queries

-- 1. List all staff members by role
SELECT staff_id, first_name, last_name, position AS role
FROM staff
ORDER BY role;

-- 2. Find trainers with one or more personal training session in the next 30 days
SELECT s.staff_id AS trainer_id, s.first_name || ' ' || s.last_name AS trainer_name, COUNT(*) AS session_count
FROM staff s
JOIN personal_training_sessions pts ON s.staff_id = pts.staff_id
WHERE s.position = 'Trainer' AND pts.session_date BETWEEN DATE('now') AND DATE('now', '+30 days')
GROUP BY s.staff_id, trainer_name
HAVING session_count > 0;