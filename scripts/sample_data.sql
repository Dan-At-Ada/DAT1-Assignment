-- Sample data for locations
INSERT INTO locations (name, address, phone_number, email, opening_hours)
VALUES 
('Downtown Fitness', '123 Main St, Cityville', '555-1234', 'downtown@fittrackpro.com', '6:00-22:00'),
('Suburb Gym', '456 Oak Rd, Townsburg', '555-5678', 'suburb@fittrackpro.com', '5:00-23:00');

-- Sample data for members
INSERT INTO members (first_name, last_name, email, phone_number, date_of_birth, join_date, emergency_contact_name, emergency_contact_phone)
VALUES 
('Alice', 'Johnson', 'alice.j@email.com', '555-1111', '1990-05-15', '2024-01-10', 'Bob Johnson', '555-1112'),
('Bob', 'Smith', 'bob.s@email.com', '555-2222', '1985-09-22', '2024-02-15', 'Alice Smith', '555-2223'),
('Carol', 'Williams', 'carol.w@email.com', '555-3333', '1992-12-03', '2024-03-20', 'David Williams', '555-3334'),
('David', 'Brown', 'david.b@email.com', '555-4444', '1988-07-30', '2024-04-25', 'Emily Brown', '555-4445'),
('Emily', 'Jones', 'emily.j@email.com', '555-5555', '1995-03-12', '2024-05-30', 'Frank Jones', '555-5556'),
('Frank', 'Miller', 'frank.m@email.com', '555-6666', '1983-11-18', '2024-06-10', 'Grace Miller', '555-6667'),
('Grace', 'Davis', 'grace.d@email.com', '555-7777', '1993-01-25', '2024-07-20', 'Henry Davis', '555-7778'),
('Henry', 'Wilson', 'henry.w@email.com', '555-8888', '1987-08-05', '2024-08-15', 'Ivy Wilson', '555-8889'),
('Ivy', 'Moore', 'ivy.m@email.com', '555-9999', '1991-04-09', '2024-09-01', 'Jack Moore', '555-9990'),
('Jack', 'Taylor', 'jack.t@email.com', '555-0000', '1986-06-28', '2024-10-12', 'Kelly Taylor', '555-0001'),
('Karen', 'Lee', 'karen.l@email.com', '555-1313', '1989-02-14', '2024-11-05', 'Liam Lee', '555-1314'),
('Liam', 'Anderson', 'liam.a@email.com', '555-1515', '1994-07-19', '2024-12-01', 'Mia Anderson', '555-1516'),
('Mia', 'Thomas', 'mia.t@email.com', '555-1717', '1991-11-30', '2025-01-10', 'Noah Thomas', '555-1718'),
('Noah', 'Roberts', 'noah.r@email.com', '555-1919', '1987-04-25', '2025-01-15', 'Olivia Roberts', '555-1920'),
('Olivia', 'Clark', 'olivia.c@email.com', '555-2121', '1993-09-08', '2025-01-20', 'Peter Clark', '555-2122');

-- Sample data for staff
INSERT INTO staff (first_name, last_name, email, phone_number, position, hire_date, location_id)
VALUES 
('David', 'Brown', 'david.b@fittrackpro.com', '555-4444', 'Trainer', '2024-01-10', 1),
('Emma', 'Davis', 'emma.d@fittrackpro.com', '555-5555', 'Manager', '2024-02-15', 2),
('Frank', 'Evans', 'frank.e@fittrackpro.com', '555-6666', 'Receptionist', '2024-03-10', 1),
('Grace', 'Green', 'grace.g@fittrackpro.com', '555-7777', 'Trainer', '2024-04-20', 2),
('Henry', 'Harris', 'henry.h@fittrackpro.com', '555-8888', 'Maintenance', '2024-05-05', 1),
('Ivy', 'Irwin', 'ivy.i@fittrackpro.com', '555-9999', 'Trainer', '2024-06-01', 2),
('Jack', 'Johnson', 'jack.j@fittrackpro.com', '555-0000', 'Manager', '2024-07-15', 1),
('Karen', 'King', 'karen.k@fittrackpro.com', '555-1212', 'Trainer', '2024-08-01', 2);

-- Sample data for equipment
INSERT INTO equipment (name, type, purchase_date, last_maintenance_date, next_maintenance_date, location_id)
VALUES 
('Treadmill 1', 'Cardio', '2024-11-01', '2024-11-15', '2025-01-15', 1),
('Treadmill 2', 'Cardio', '2024-11-02', '2024-11-20', '2025-01-20', 1),
('Treadmill 3', 'Cardio', '2024-11-03', '2024-11-25', '2025-01-25', 2),
('Treadmill 4', 'Cardio', '2024-11-04', '2024-11-30', '2025-01-30', 2),
('Bench Press 1', 'Strength', '2024-11-05', '2024-12-01', '2025-01-01', 1),
('Bench Press 2', 'Strength', '2024-11-06', '2024-12-05', '2025-01-05', 2),
('Elliptical 1', 'Cardio', '2024-11-07', '2024-12-10', '2025-01-10', 1),
('Elliptical 2', 'Cardio', '2024-11-08', '2024-12-15', '2025-01-15', 2),
('Squat Rack 1', 'Strength', '2024-11-09', '2024-12-20', '2025-01-20', 1),
('Squat Rack 2', 'Strength', '2024-11-10', '2024-12-25', '2025-01-25', 2),
('Rowing Machine 1', 'Cardio', '2024-11-11', '2024-12-30', '2025-01-30', 1),
('Rowing Machine 2', 'Cardio', '2024-11-12', '2025-01-01', '2025-01-31', 2),
('Leg Press 1', 'Strength', '2024-11-13', '2025-01-05', '2025-01-31', 1),
('Leg Press 2', 'Strength', '2024-11-14', '2025-01-10', '2025-01-31', 2),
('Stationary Bike 1', 'Cardio', '2024-11-15', '2025-01-15', '2025-01-31', 1),
('Stationary Bike 2', 'Cardio', '2024-11-16', '2025-01-20', '2025-01-31', 2);

-- Sample data for classes
INSERT INTO classes (name, description, capacity, duration, location_id)
VALUES 
('Yoga Basics', 'Introductory yoga class', 20, 60, 1),
('HIIT Workout', 'High-intensity interval training', 15, 45, 2),
('Spin Class', 'Indoor cycling workout', 20, 50, 1),
('Pilates', 'Core-strengthening exercises', 15, 55, 2),
('Zumba', 'Dance-based cardio workout', 25, 60, 1),
('Strength Training', 'Weight-based resistance training', 12, 45, 2);

-- Sample data for class_schedule
INSERT INTO class_schedule (class_id, staff_id, start_time, end_time)
VALUES 
(1, 1, '2024-11-01 10:00:00', '2024-11-01 11:00:00'),
(2, 2, '2024-11-02 18:00:00', '2024-11-02 18:45:00'),
(3, 6, '2024-12-03 07:00:00', '2024-12-03 07:50:00'),
(4, 4, '2024-12-04 09:00:00', '2024-12-04 09:55:00'),
(5, 8, '2025-01-05 19:00:00', '2025-01-05 20:00:00'),
(6, 1, '2025-02-07 12:00:00', '2025-02-07 12:45:00'),
(3, 6, '2025-02-15 14:00:00', '2025-02-15 14:45:00'),
(5, 4, '2025-03-03 09:00:00', '2025-03-03 09:45:00');

-- Sample data for memberships
INSERT INTO memberships (member_id, type, start_date, end_date, status)
VALUES
(1, 'Premium', '2024-11-01', '2025-10-31', 'Active'),
(2, 'Basic', '2024-11-05', '2025-11-04', 'Active'),
(3, 'Premium', '2024-11-10', '2025-11-09', 'Active'),
(4, 'Basic', '2024-11-15', '2025-11-14', 'Active'),
(5, 'Premium', '2024-11-20', '2025-11-19', 'Active'),
(6, 'Basic', '2024-11-25', '2025-11-24', 'Inactive'),
(7, 'Premium', '2024-12-01', '2025-11-30', 'Active'),
(8, 'Basic', '2024-12-05', '2025-12-04', 'Active'),
(9, 'Premium', '2024-12-10', '2025-12-09', 'Active'),
(10, 'Basic', '2024-12-15', '2025-12-14', 'Inactive'),
(11, 'Premium', '2024-12-20', '2025-12-19', 'Active'),
(12, 'Basic', '2024-12-25', '2025-12-24', 'Active'),
(13, 'Premium', '2025-01-01', '2025-12-31', 'Active'),
(14, 'Basic', '2025-01-05', '2026-01-04', 'Inactive'),
(15, 'Premium', '2025-01-10', '2026-01-09', 'Active');

-- Sample data for attendance
INSERT INTO attendance (member_id, location_id, check_in_time, check_out_time)
VALUES 
(1, 1, '2024-11-01 09:00:00', '2024-11-01 10:30:00'),
(2, 2, '2024-11-02 17:30:00', '2024-11-02 19:00:00'),
(3, 1, '2024-12-03 08:00:00', '2024-12-03 09:15:00'),
(4, 2, '2024-12-04 12:00:00', '2024-12-04 13:30:00'),
(5, 1, '2024-12-05 16:00:00', '2024-12-05 17:45:00'),
(6, 2, '2024-12-06 07:30:00', '2024-12-06 08:45:00'),
(7, 1, '2025-01-07 18:00:00', '2025-01-07 19:30:00'),
(8, 2, '2025-01-08 10:00:00', '2025-01-08 11:15:00'),
(9, 1, '2025-01-09 14:30:00', '2025-01-09 16:00:00'),
(10, 2, '2025-01-10 19:00:00', '2025-01-10 20:30:00');

-- Sample data for class_attendance
INSERT INTO class_attendance (schedule_id, member_id, attendance_status)
VALUES 
(1, 1, 'Attended'),
(2, 2, 'Attended'),
(3, 3, 'Attended'),
(4, 4, 'Attended'),
(5, 5, 'Attended'),
(6, 6, 'Registered'),
(7, 7, 'Registered'),
(8, 8, 'Registered'),
(1, 9, 'Attended'),
(2, 10, 'Unattended'),
(3, 11, 'Attended'),
(4, 12, 'Unattended'),
(5, 13, 'Attended'),
(6, 1, 'Registered'),
(7, 2, 'Registered'),
(8, 3, 'Registered');

-- Sample data for payments (including day passes)
INSERT INTO payments (member_id, amount, payment_date, payment_method, payment_type)
VALUES 
(1, 50.00, '2023-02-01 10:00:00', 'Credit Card', 'Monthly membership fee'),
(2, 30.00, '2023-02-05 14:30:00', 'Bank Transfer', 'Monthly membership fee'),
(3, 50.00, '2023-02-10 09:15:00', 'Credit Card', 'Monthly membership fee'),
(4, 30.00, '2023-02-15 16:45:00', 'PayPal', 'Monthly membership fee'),
(5, 50.00, '2023-02-20 11:30:00', 'Credit Card', 'Monthly membership fee'),
(6, 30.00, '2023-02-25 13:00:00', 'Bank Transfer', 'Monthly membership fee'),
(7, 50.00, '2023-03-01 10:30:00', 'Credit Card', 'Monthly membership fee'),
(8, 30.00, '2023-03-05 15:45:00', 'PayPal', 'Monthly membership fee'),
(9, 50.00, '2023-03-10 08:00:00', 'Credit Card', 'Monthly membership fee'),
(10, 30.00, '2023-03-15 17:30:00', 'Bank Transfer', 'Monthly membership fee'),
(NULL, 15.00, '2023-03-16 09:00:00', 'Cash', 'Day pass'),
(NULL, 15.00, '2023-03-16 10:30:00', 'Credit Card', 'Day pass'),
(NULL, 15.00, '2023-03-17 14:00:00', 'Cash', 'Day pass'),
(NULL, 15.00, '2023-03-18 11:15:00', 'Credit Card', 'Day pass');

-- Sample data for personal_training_sessions
INSERT INTO personal_training_sessions (member_id, staff_id, session_date, start_time, end_time, notes)
VALUES 
(1, 1, '2023-03-05', '10:00:00', '11:00:00', 'Focus on upper body strength'),
(2, 2, '2023-03-06', '15:00:00', '16:00:00', 'Cardio and endurance training'),
(3, 6, '2023-03-07', '09:00:00', '10:00:00', 'Core workout and flexibility'),
(4, 4, '2023-03-08', '14:00:00', '15:00:00', 'Lower body strength training'),
(5, 8, '2023-03-09', '11:00:00', '12:00:00', 'Full body workout'),
(6, 1, '2023-03-10', '16:00:00', '17:00:00', 'HIIT session'),
(7, 6, '2023-03-11', '13:00:00', '14:00:00', 'Yoga and stretching'),
(8, 4, '2023-03-12', '10:00:00', '11:00:00', 'Weight lifting techniques');

-- Sample data for member_health_metrics
INSERT INTO member_health_metrics (member_id, measurement_date, weight, body_fat_percentage, muscle_mass, bmi)
VALUES 
(1, '2023-03-01', 70.5, 22.0, 35.0, 23.5),
(2, '2023-03-02', 80.0, 18.0, 40.0, 24.0),
(3, '2023-03-03', 65.0, 24.0, 32.0, 22.5),
(4, '2023-03-04', 75.5, 20.0, 38.0, 23.8),
(5, '2023-03-05', 68.0, 23.0, 34.0, 22.8),
(6, '2023-03-06', 82.5, 17.0, 42.0, 24.5),
(7, '2023-03-07', 62.0, 25.0, 30.0, 21.5),
(8, '2023-03-08', 78.0, 19.0, 39.0, 24.2),
(9, '2023-03-09', 72.5, 21.0, 36.0, 23.2),
(10, '2023-03-10', 85.0, 16.0, 43.0, 25.0);

-- Sample data for equipment_maintenance_log
INSERT INTO equipment_maintenance_log (equipment_id, maintenance_date, description, staff_id)
VALUES 
(1, '2022-06-15', 'Routine maintenance and belt adjustment', 1),
(2, '2022-06-20', 'Lubrication and safety check', 2),
(3, '2022-06-25', 'Calibration and software update', 3),
(4, '2022-06-30', 'Belt replacement and console check', 4),
(5, '2022-07-01', 'Weight stack inspection and cleaning', 5),
(6, '2022-07-05', 'Cable tension adjustment', 6),
(7, '2022-08-01', 'Pedal replacement and chain lubrication', 7),
(8, '2022-08-05', 'Display repair and sensor calibration', 8),
(9, '2022-09-01', 'Frame inspection and tightening', 1),
(10, '2022-09-05', 'Safety features check and padding replacement', 2);