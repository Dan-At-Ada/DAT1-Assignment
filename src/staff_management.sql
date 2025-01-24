-- Initial SQLite setup
.open fittrackpro.db
.mode column

-- Enable foreign key supprot
PRAGMA foreign_keys = ON;

-- Staff Management Queries

-- 1. List all staff members by role
-- TODO: Write a query to list all staff members by role

-- 2. Find trainers with more than 5 personal training sessions in the last 30 days
-- TODO: Write a query to find trainers with more than 5 personal training sessions in the last 30 days