-- Initial SQLite setup
.open fittrackpro.db
.mode column

-- Enable foreign key support
PRAGMA foreign_keys = ON;

-- User Management Queries

-- 1. Retrieve all members
SELECT member_id, first_name, last_name, email, join_date
FROM MEMBERS;

-- 2. Update a member's contact information
UPDATE MEMBERS
SET phone_number = '555-9876', email = 'emily.jones.updated@email.com'
WHERE member_id = 5;

-- 3. Count total number of members
SELECT COUNT(*) AS total_members
FROM MEMBERS;

-- 4. Find member with the most class registrations
SELECT MEMBERS.member_id, first_name, last_name, COUNT(*) AS registration_count
FROM MEMBERS
JOIN CLASS_ATTENDANCE ON MEMBERS.member_id = CLASS_ATTENDANCE.member_id
GROUP BY MEMBERS.member_id
ORDER BY registration_count DESC
LIMIT 1;

-- 5. Find member with the least class registrations
SELECT MEMBERS.member_id, first_name, last_name, COUNT(*) AS registration_count
FROM MEMBERS
JOIN CLASS_ATTENDANCE ON MEMBERS.member_id = CLASS_ATTENDANCE.member_id
GROUP BY MEMBERS.member_id
ORDER BY registration_count ASC
LIMIT 1;

-- 6. Calculate the percentage of members who have attended at least one class
SELECT (COUNT(DISTINCT CLASS_ATTENDANCE.member_id) * 100.0 / COUNT(MEMBERS.member_id)) AS percentage
FROM MEMBERS
LEFT JOIN CLASS_ATTENDANCE ON MEMBERS.member_id = CLASS_ATTENDANCE.member_id;