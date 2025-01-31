-- Initial SQLite setup
.open fittrackpro.db
.mode column

-- Enable foreign key support
PRAGMA foreign_keys = ON;

-- Class Scheduling Queries

.print List all classes with their instructors
-- 1. List all classes with their instructors
SELECT c.class_id, c.name AS class_name, s.first_name || ' ' || s.last_name AS instructor_name
FROM classes c
JOIN class_schedule cs ON c.class_id = cs.class_id
JOIN staff s ON cs.staff_id = s.staff_id;

.print Find available classes for a specific date
-- 2. Find available classes for a specific date 2025-02-01
SELECT cs.schedule_id, c.name, cs.start_time, cs.end_time, (c.capacity - COUNT(ca.member_id)) AS available_spots
FROM class_schedule cs
JOIN classes c ON cs.class_id = c.class_id
LEFT JOIN class_attendance ca ON cs.schedule_id = ca.schedule_id
WHERE DATE(cs.start_time) = '2025-02-01'
GROUP BY cs.schedule_id;

.print Register a member for a class
-- 3. Register a member for a class
INSERT INTO class_attendance (schedule_id, member_id, attendance_status)
SELECT cs.schedule_id, 11, 'Registered'
FROM class_schedule cs
JOIN classes c ON cs.class_id = c.class_id
WHERE c.class_id = 3 AND DATE(cs.start_time) = '2025-02-01';

.print Cancel a class registration
-- 4. Cancel a class registration
DELETE FROM class_attendance
WHERE schedule_id = 7 AND member_id = 2;

.print List top 3 most popular classes
-- 5. List top 3 most popular classes
SELECT c.class_id, c.name AS class_name, COUNT(ca.member_id) AS registration_count
FROM classes c
JOIN class_schedule cs ON c.class_id = cs.class_id
JOIN class_attendance ca ON cs.schedule_id = ca.schedule_id
GROUP BY c.class_id
ORDER BY registration_count DESC
LIMIT 3;

.print Calculate average number of classes per member
-- 6. Calculate average number of classes per member
SELECT AVG(class_count) AS avg_classes_per_member
FROM (
    SELECT COUNT(*) AS class_count
    FROM class_attendance
    GROUP BY member_id
);