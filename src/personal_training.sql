-- Initial SQLite setup
.open fittrackpro.db
.mode column

-- Enable foreign key support
PRAGMA foreign_keys = ON;

-- Personal Training Queries

-- 1. List all personal training sessions for a specific trainer "Ivy Irwin"
SELECT pts.session_id, m.first_name || ' ' || m.last_name AS member_name, pts.session_date, pts.start_time, pts.end_time
FROM personal_training_sessions pts
JOIN staff s ON pts.staff_id = s.staff_id
JOIN members m ON pts.member_id = m.member_id
WHERE s.first_name = 'Ivy' AND s.last_name = 'Irwin';

