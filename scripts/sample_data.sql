-- Sample data for locations
INSERT INTO locations (name, address, phone_number, email, opening_hours)
VALUES 
('City Centre Fitness', '45 High Street, Manchester',   '0161 555 1234',    'citycentre@fittrackpro.co.uk', '6:00-22:00'),
('Suburban Wellness',   '78 Oak Lane, Birmingham',      '0121 555 5678',    'suburban@fittrackpro.co.uk',   '5:00-23:00');

-- Sample data for members
INSERT INTO members (first_name, last_name, email, phone_number, date_of_birth, join_date, emergency_contact_name, emergency_contact_phone)
VALUES 
('Oliver',  'Taylor',   'oliver.t@email.co.uk', '07732 859614', '1993-09-08', '2024-11-10', 'Emma Taylor',      '07741 928365'),
('Sophie',  'Brown',    'sophie.b@email.co.uk', '07845 103928', '1988-07-30', '2024-12-15', 'James Brown',      '07892 650147'),
('Harry',   'Wilson',   'harry.w@email.co.uk',  '07921 746583', '1995-03-12', '2025-01-20', 'Lucy Wilson',      '07973 184520'),
('Emily',   'Jones',    'emily.j@email.co.uk',  '07798 254710', '1991-04-09', '2024-11-25', 'William Jones',    '07786 509432'),
('George',  'Smith',    'george.s@email.co.uk', '07862 937401', '1986-06-28', '2024-12-30', 'Charlotte Smith',  '07830 761295'),
('Olivia',  'Davies',   'olivia.d@email.co.uk', '07954 821637', '1992-12-03', '2025-01-10', 'Jack Davies',      '07948 325670'),
('Charlie', 'Evans',    'charlie.e@email.co.uk','07719 368250', '1989-02-14', '2024-11-20', 'Sophia Evans',     '07762 894153'),
('Amelia',  'Thomas',   'amelia.t@email.co.uk', '07873 594810', '1994-07-19', '2024-12-15', 'Noah Thomas',      '07814 673820'),
('Jacob',   'Roberts',  'jacob.r@email.co.uk',  '07908 412765', '1987-08-05', '2025-01-01', 'Ava Roberts',      '07925 418739'),
('Isla',    'Johnson',  'isla.j@email.co.uk',   '07756 823941', '1990-05-15', '2024-11-12', 'Leo Johnson',      '07753 902846'),
('Oscar',   'Williams', 'oscar.w@email.co.uk',  '07831 690472', '1985-09-22', '2024-12-05', 'Mia Williams',     '07876 341209'),
('Ella',    'Clark',    'ella.c@email.co.uk',   '07967 150839', '1991-11-30', '2025-01-01', 'Max Clark',        '07961 758432'),
('Archie',  'Lewis',    'archie.l@email.co.uk', '07784 236509', '1993-01-25', '2025-01-10', 'Chloe Lewis',      '07785 490123'),
('Freya',   'Walker',   'freya.w@email.co.uk',  '07890 765314', '1987-04-25', '2025-01-15', 'Thomas Walker',    '07847 621958'),
('William', 'Robinson', 'william.r@email.co.uk','07912 478620', '1983-11-18', '2025-01-20', 'Grace Robinson',   '07939 815670');

-- Sample data for staff
INSERT INTO staff (first_name, last_name, email, phone_number, position, hire_date, location_id)
VALUES 
('Liam',        'Harris',   'liam.h@fittrackpro.co.uk',     '07723 819654', 'Trainer',      '2024-11-10', 1),
('Emma',        'Green',    'emma.g@fittrackpro.co.uk',     '07856 204731', 'Manager',      '2024-11-15', 2),
('Noah',        'Patel',    'noah.p@fittrackpro.co.uk',     '07974 618250', 'Receptionist', '2024-12-10', 1),
('Ava',         'Singh',    'ava.s@fittrackpro.co.uk',      '07789 350462', 'Trainer',      '2024-12-20', 2),
('Ethan',       'Khan',     'ethan.k@fittrackpro.co.uk',    '07832 597814', 'Maintenance',  '2025-01-05', 1),
('Sophia',      'Chen',     'sophia.c@fittrackpro.co.uk',   '07915 862340', 'Trainer',      '2025-01-01', 2),
('Mason',       'Wong',     'mason.w@fittrackpro.co.uk',    '07768 409125', 'Manager',      '2024-11-15', 1),
('Isabella',    'Kumar',    'isabella.k@fittrackpro.co.uk', '07891 735608', 'Trainer',      '2024-12-01', 2);

-- Sample data for equipment
INSERT INTO equipment (name, type, purchase_date, last_maintenance_date, next_maintenance_date, location_id)
VALUES 
('Rowing Machine 2',    'Cardio',   '2024-11-01',   '2024-11-15',   '2025-02-15',   1),
('Leg Press 1',         'Strength', '2024-11-02',   '2024-11-20',   '2025-02-20',   1),
('Stationary Bike 1',   'Cardio',   '2024-11-03',   '2024-11-25',   '2025-02-25',   2),
('Squat Rack 2',        'Strength', '2024-11-04',   '2024-11-30',   '2025-02-28',   2),
('Elliptical 2',        'Cardio',   '2024-11-05',   '2024-12-01',   '2025-03-01',   1),
('Bench Press 1',       'Strength', '2024-11-06',   '2024-12-05',   '2025-03-05',   2),
('Treadmill 3',         'Cardio',   '2024-11-07',   '2024-12-10',   '2025-03-10',   1),
('Leg Press 2',         'Strength', '2024-11-08',   '2024-12-15',   '2025-03-15',   2),
('Rowing Machine 1',    'Cardio',   '2024-11-09',   '2024-12-20',   '2025-03-20',   1),
('Bench Press 2',       'Strength', '2024-11-10',   '2024-12-25',   '2025-03-25',   2),
('Treadmill 1',         'Cardio',   '2024-11-11',   '2024-12-30',   '2025-03-30',   1),
('Squat Rack 1',        'Strength', '2024-11-12',   '2025-01-01',   '2025-04-01',   2),
('Stationary Bike 2',   'Cardio',   '2024-11-13',   '2025-01-05',   '2025-04-05',   1),
('Treadmill 2',         'Cardio',   '2024-11-14',   '2025-01-10',   '2025-04-10',   2),
('Elliptical 1',        'Cardio',   '2024-11-15',   '2025-01-15',   '2025-04-15',   1),
('Treadmill 4',         'Cardio',   '2024-11-16',   '2025-01-20',   '2025-04-20',   2);

-- Sample data for classes
INSERT INTO classes (name, description, capacity, duration, location_id)
VALUES 
('Spin Class',          'Indoor cycling workout',           20, 50, 1),
('Strength Training',   'Weight-based resistance training', 12, 45, 2),
('Pilates',             'Core-strengthening exercises',     15, 55, 1),
('HIIT Workout',        'High-intensity interval training', 15, 45, 2),
('Zumba',               'Dance-based cardio workout',       25, 60, 1),
('Yoga Basics',         'Introductory yoga class',          20, 60, 2);

-- Sample data for class_schedule
INSERT INTO class_schedule (class_id, staff_id, start_time, end_time)
VALUES 
(1,     6,  '2024-11-01 10:00:00',  '2024-11-01 10:50:00'),
(2,     4,  '2024-11-15 18:00:00',  '2024-11-15 18:45:00'),
(3,     1,  '2024-12-03 07:00:00',  '2024-12-03 07:55:00'),
(4,     8,  '2024-12-20 09:00:00',  '2024-12-20 09:45:00'),
(5,     2,  '2025-01-05 19:00:00',  '2025-01-05 20:00:00'),
(6,     6,  '2025-01-20 12:00:00',  '2025-01-20 13:00:00'),
(1,     1,  '2025-02-01 14:00:00',  '2025-02-01 14:50:00'),
(5,     2,  '2025-02-01 19:00:00',  '2025-02-01 20:00:00'),
(5,     8,  '2025-02-15 09:00:00',  '2025-02-15 10:00:00');

-- Sample data for memberships
INSERT INTO memberships (member_id, type, start_date, end_date, status)
VALUES
(3,     'Premium',  '2024-11-10',   '2025-11-09',   'Active'),
(7,     'Basic',    '2024-11-05',   '2025-11-04',   'Active'),
(9,     'Premium',  '2024-11-20',   '2025-11-19',   'Active'),
(1,     'Basic',    '2024-11-25',   '2025-11-24',   'Inactive'),
(6,     'Basic',    '2024-12-05',   '2025-12-04',   'Active'),
(2,     'Premium',  '2025-01-10',   '2026-01-09',   'Active');

-- Sample data for attendance
INSERT INTO attendance (member_id, location_id, check_in_time, check_out_time)
VALUES 
(3,     1,  '2024-11-01 09:00:00',  '2024-11-01 10:30:00'),
(7,     2,  '2024-11-01 17:30:00',  '2024-11-01 19:00:00'),
(12,    1,  '2024-11-03 08:00:00',  '2024-11-03 09:15:00'),
(5,     2,  '2024-11-04 12:00:00',  '2024-11-04 13:30:00'),
(9,     1,  '2024-11-05 16:00:00',  '2024-11-05 17:45:00'),
(1,     2,  '2024-11-06 07:30:00',  '2024-11-06 08:45:00'),
(14,    1,  '2024-11-08 18:00:00',  '2024-11-07 19:30:00'),
(6,     2,  '2024-11-08 10:00:00',  '2024-11-08 11:15:00'),
(11,    1,  '2024-11-09 14:30:00',  '2024-11-09 16:00:00'),
(2,     2,  '2024-11-10 19:00:00',  '2024-11-10 20:30:00'),
(3,     1,  '2024-11-14 09:00:00',  '2024-11-11 10:30:00'),
(7,     2,  '2024-11-14 17:30:00',  '2024-11-12 19:00:00'),
(12,    1,  '2024-11-14 08:00:00',  '2024-11-13 09:15:00'),
(5,     2,  '2024-11-14 12:00:00',  '2024-11-14 13:30:00'),
(9,     1,  '2024-11-15 16:00:00',  '2024-11-15 17:45:00'),
(1,     2,  '2024-11-19 07:30:00',  '2024-11-16 08:45:00'),
(3,     1,  '2024-11-19 09:00:00',  '2024-11-17 10:30:00'),
(7,     2,  '2024-11-19 17:30:00',  '2024-11-18 19:00:00'),
(12,    1,  '2024-11-19 08:00:00',  '2024-11-19 09:15:00'),
(5,     2,  '2024-11-20 12:00:00',  '2024-11-20 13:30:00'),
(9,     1,  '2024-11-21 16:00:00',  '2024-11-21 17:45:00'),
(1,     2,  '2024-11-22 07:30:00',  '2024-11-22 08:45:00'),
(3,     1,  '2024-11-23 09:00:00',  '2024-11-23 10:30:00'),
(7,     2,  '2024-11-24 17:30:00',  '2024-11-24 19:00:00'),
(12,    1,  '2024-11-25 08:00:00',  '2024-11-25 09:15:00'),
(5,     2,  '2024-11-26 12:00:00',  '2024-11-26 13:30:00'),
(9,     1,  '2024-11-27 16:00:00',  '2024-11-27 17:45:00'),
(1,     2,  '2024-11-28 07:30:00',  '2024-11-28 08:45:00'),
(3,     1,  '2024-11-29 09:00:00',  '2024-11-29 10:30:00'),
(7,     2,  '2024-11-30 17:30:00',  '2024-11-30 19:00:00'),
(12,    1,  '2024-12-04 08:00:00',  '2024-12-01 09:15:00'),
(5,     2,  '2024-12-04 12:00:00',  '2024-12-02 13:30:00'),
(9,     1,  '2024-12-04 16:00:00',  '2024-12-03 17:45:00'),
(1,     2,  '2024-12-04 07:30:00',  '2024-12-04 08:45:00'),
(14,    1,  '2024-12-05 18:00:00',  '2024-12-05 19:30:00'),
(6,     2,  '2024-12-06 10:00:00',  '2024-12-06 11:15:00'),
(11,    1,  '2024-12-07 14:30:00',  '2024-12-07 16:00:00'),
(2,     2,  '2024-12-08 19:00:00',  '2024-12-08 20:30:00'),
(3,     1,  '2024-12-09 09:00:00',  '2024-12-09 10:30:00'),
(7,     2,  '2024-12-10 17:30:00',  '2024-12-10 19:00:00'),
(12,    1,  '2024-12-12 08:00:00',  '2024-12-11 09:15:00'),
(5,     2,  '2024-12-12 12:00:00',  '2024-12-12 13:30:00'),
(9,     1,  '2024-12-12 16:00:00',  '2024-12-13 17:45:00'),
(1,     2,  '2024-12-12 07:30:00',  '2024-12-14 08:45:00'),
(3,     1,  '2024-12-12 09:00:00',  '2024-12-15 10:30:00'),
(7,     2,  '2024-12-18 17:30:00',  '2024-12-16 19:00:00'),
(12,    1,  '2024-12-18 08:00:00',  '2024-12-17 09:15:00'),
(5,     2,  '2024-12-18 12:00:00',  '2024-12-18 13:30:00'),
(9,     1,  '2024-12-18 16:00:00',  '2024-12-19 17:45:00'),
(1,     2,  '2024-12-28 07:30:00',  '2024-12-20 08:45:00'),
(3,     1,  '2024-12-21 09:00:00',  '2024-12-21 10:30:00'),
(7,     2,  '2024-12-22 17:30:00',  '2024-12-22 19:00:00'),
(12,    1,  '2024-12-23 08:00:00',  '2024-12-23 09:15:00'),
(5,     2,  '2024-12-24 12:00:00',  '2024-12-24 13:30:00'),
(9,     1,  '2024-12-26 16:00:00',  '2024-12-25 17:45:00'),
(1,     2,  '2024-12-26 07:30:00',  '2024-12-26 08:45:00'),
(3,     1,  '2024-12-26 09:00:00',  '2024-12-27 10:30:00'),
(7,     2,  '2024-12-26 17:30:00',  '2024-12-28 19:00:00'),
(12,    1,  '2024-12-29 08:00:00',  '2024-12-29 09:15:00'),
(5,     2,  '2024-12-30 12:00:00',  '2024-12-30 13:30:00'),
(9,     1,  '2024-12-31 16:00:00',  '2024-12-31 17:45:00'),
(1,     2,  '2025-01-01 07:30:00',  '2025-01-01 08:45:00'),
(3,     1,  '2025-01-02 09:00:00',  '2025-01-02 10:30:00'),
(7,     2,  '2025-01-03 17:30:00',  '2025-01-03 19:00:00'),
(12,    1,  '2025-01-07 08:00:00',  '2025-01-04 09:15:00'),
(5,     2,  '2025-01-07 12:00:00',  '2025-01-06 13:30:00'),
(9,     1,  '2025-01-07 16:00:00',  '2025-01-07 17:45:00'),
(1,     2,  '2025-01-07 07:30:00',  '2025-01-08 08:45:00'),
(3,     1,  '2025-01-07 09:00:00',  '2025-01-09 10:30:00'),
(7,     2,  '2025-01-10 17:30:00',  '2025-01-10 19:00:00'),
(12,    1,  '2025-01-11 08:00:00',  '2025-01-11 09:15:00'),
(5,     2,  '2025-01-12 12:00:00',  '2025-01-12 13:30:00'),
(9,     1,  '2025-01-13 16:00:00',  '2025-01-13 17:45:00'),
(1,     2,  '2025-01-13 07:30:00',  '2025-01-14 08:45:00'),
(3,     1,  '2025-01-13 09:00:00',  '2025-01-15 10:30:00'),
(7,     2,  '2025-01-13 17:30:00',  '2025-01-16 19:00:00');

-- Sample data for class_attendance
INSERT INTO class_attendance (schedule_id, member_id, attendance_status)
VALUES 
(1,     3,      'Attended'),
(1,     7,      'Attended'),
(1,     12,     'Attended'),
(3,     12,     'Attended'),
(5,     6,      'Attended'),
(4,     1,      'Attended'),
(2,     5,      'Unattended'),
(8,     8,      'Registered'),
(9,     12,     'Registered'),
(4,     6,      'Attended'),
(5,     13,     'Attended'),
(6,     2,      'Unattended'),
(8,     5,      'Registered'),
(7,     14,     'Registered'),
(3,     9,      'Attended'),
(4,     4,      'Unattended'),
(5,     2,      'Unattended'),
(6,     11,     'Attended'),
(7,     9,      'Registered'),
(9,     1,      'Registered'),
(2,     8,      'Attended'),
(6,     8,      'Attended'),
(9,     5,      'Registered'),
(7,     3,      'Registered'),
(4,     13,     'Attended'),
(3,     4,      'Unattended'),
(8,     2,      'Registered'),
(6,     14,     'Attended'),
(9,     7,      'Registered'),
(7,     12,     'Registered'),
(5,     11,     'Attended'),
(6,     2,      'Unattended'),
(9,     6,      'Registered'),
(8,     8,      'Registered');

-- Sample data for payments
INSERT INTO payments (member_id, amount, payment_date, payment_method, payment_type)
VALUES 
(3,     50.00,  '2024-11-01 10:00:00',  'Credit Card',      'Monthly membership fee'),
(7,     30.00,  '2024-11-05 14:30:00',  'Bank Transfer',    'Monthly membership fee'),
(12,    50.00,  '2024-11-10 09:15:00',  'Credit Card',      'Day pass'),
(5,     30.00,  '2024-11-15 16:45:00',  'PayPal',           'Day pass'),
(12,    50.00,  '2024-11-13 10:15:00',  'Credit Card',      'Day pass'),
(12,    50.00,  '2024-11-18 09:30:00',  'Credit Card',      'Day pass'),
(9,     50.00,  '2024-11-20 11:30:00',  'Credit Card',      'Monthly membership fee'),
(12,    50.00,  '2024-11-23 14:45:00',  'Credit Card',      'Day pass'),
(1,     30.00,  '2024-11-25 13:00:00',  'Bank Transfer',    'Monthly membership fee'),
(5,     30.00,  '2024-11-19 15:00:00',  'PayPal',           'Day pass'),
(5,     30.00,  '2024-11-24 10:45:00',  'PayPal',           'Day pass'),

(14,    50.00,  '2024-12-01 10:30:00',  'Credit Card',      'Day pass'),
(12,    50.00,  '2024-12-01 10:20:00',  'Credit Card',      'Day pass'),
(3,     50.00,  '2024-12-01 10:00:00',  'Credit Card',      'Monthly membership fee'),
(7,     30.00,  '2024-12-05 14:30:00',  'Bank Transfer',    'Monthly membership fee'),
(6,     30.00,  '2024-12-05 15:45:00',  'PayPal',           'Monthly membership fee'),
(12,    50.00,  '2024-12-06 13:50:00',  'Credit Card',      'Day pass'),
(12,    50.00,  '2024-12-12 11:10:00',  'Credit Card',      'Day pass'),
(11,    50.00,  '2024-12-10 08:00:00',  'Credit Card',      'Day pass'),
(2,     30.00,  '2024-12-15 17:30:00',  'Bank Transfer',    'Monthly membership fee'),
(14,    50.00,  '2024-12-04 12:40:00',  'Credit Card',      'Day pass'),
(14,    50.00,  '2024-12-09 09:55:00',  'Credit Card',      'Day pass'),
(14,    50.00,  '2024-12-16 16:10:00',  'Credit Card',      'Day pass'),
(9,     50.00,  '2024-12-20 11:30:00',  'Credit Card',      'Monthly membership fee'),
(1,     30.00,  '2024-12-25 13:00:00',  'Bank Transfer',    'Monthly membership fee'),
(14,    50.00,  '2024-12-25 13:45:00',  'Credit Card',      'Day pass'),
(14,    50.00,  '2025-01-02 10:20:00',  'Credit Card',      'Day pass'),
(5,     30.00,  '2024-12-01 14:20:00',  'PayPal',           'Day pass'),
(5,     30.00,  '2024-12-07 12:35:00',  'PayPal',           'Day pass'),
(5,     30.00,  '2024-12-15 09:50:00',  'PayPal',           'Day pass'),
(12,    50.00,  '2024-12-19 09:45:00',  'Credit Card',      'Day pass'),
(5,     30.00,  '2024-12-23 17:25:00',  'PayPal',           'Day pass'),

(3,     50.00,  '2025-01-01 10:00:00',  'Credit Card',      'Monthly membership fee'),
(5,     30.00,  '2025-01-05 11:10:00',  'PayPal',           'Day pass'),
(7,     30.00,  '2025-01-05 14:30:00',  'Bank Transfer',    'Monthly membership fee'),
(6,     30.00,  '2025-01-05 15:45:00',  'PayPal',           'Monthly membership fee'),
(12,    50.00,  '2025-01-01 12:30:00',  'Credit Card',      'Day pass'),
(12,    50.00,  '2025-01-08 15:00:00',  'Credit Card',      'Day pass'),
(2,     30.00,  '2025-01-15 17:30:00',  'Bank Transfer',    'Monthly membership fee'),
(8,     15.00,  '2025-01-16 09:00:00',  'Cash',             'Day pass'),
(4,     15.00,  '2025-01-16 10:30:00',  'Credit Card',      'Day pass'),
(13,    15.00,  '2025-01-17 14:00:00',  'Cash',             'Day pass'),
(10,    15.00,  '2025-01-18 11:15:00',  'Credit Card',      'Day pass'),
(8,     15.00,  '2025-01-19 09:30:00',  'Cash',             'Day pass'),
(9,     50.00,  '2025-01-20 11:30:00',  'Credit Card',      'Monthly membership fee'),
(4,     15.00,  '2025-01-20 12:00:00',  'Credit Card',      'Day pass'),
(13,    15.00,  '2025-01-21 14:45:00',  'Cash',             'Day pass'),
(10,    15.00,  '2025-01-22 15:30:00',  'Credit Card',      'Day pass'),
(8,     15.00,  '2025-01-23 10:10:00',  'Cash',             'Day pass'),
(1,     30.00,  '2025-01-25 13:00:00',  'Bank Transfer',    'Monthly membership fee'),
(4,     15.00,  '2025-01-25 13:25:00',  'Credit Card',      'Day pass'),
(13,    15.00,  '2025-01-26 11:50:00',  'Cash',             'Day pass'),
(10,    15.00,  '2025-01-27 10:40:00',  'Credit Card',      'Day pass'),
(8,     15.00,  '2025-01-28 15:45:00',  'Cash',             'Day pass'),
(4,     15.00,  '2025-01-30 09:15:00',  'Credit Card',      'Day pass'),

(3,     50.00,  '2025-02-01 10:00:00',  'Credit Card',      'Monthly membership fee'),
(13,    15.00,  '2025-02-01 10:35:00',  'Cash',             'Day pass'),
(10,    15.00,  '2025-02-02 12:15:00',  'Credit Card',      'Day pass'),
(8,     15.00,  '2025-02-03 13:50:00',  'Cash',             'Day pass'),
(7,     30.00,  '2025-02-05 14:30:00',  'Bank Transfer',    'Monthly membership fee'),
(6,     30.00,  '2025-02-05 15:45:00',  'PayPal',           'Monthly membership fee'),
(4,     15.00,  '2025-02-06 11:50:00',  'Credit Card',      'Day pass'),
(13,    15.00,  '2025-02-08 09:25:00',  'Cash',             'Day pass'),
(10,    15.00,  '2025-02-09 14:10:00',  'Credit Card',      'Day pass'),
(8,     15.00,  '2025-02-10 14:30:00',  'Cash',             'Day pass'),
(4,     15.00,  '2025-02-12 16:35:00',  'Credit Card',      'Day pass'),
(13,    15.00,  '2025-02-14 15:00:00',  'Cash',             'Day pass'),
(10,    15.00,  '2025-02-15 10:45:00',  'Credit Card',      'Day pass'),
(2,     30.00,  '2025-02-15 17:30:00',  'Bank Transfer',    'Monthly membership fee'),
(9,     50.00,  '2025-02-20 11:30:00',  'Credit Card',      'Monthly membership fee'),
(1,     30.00,  '2025-02-25 13:00:00',  'Bank Transfer',    'Monthly membership fee');

-- Sample data for personal_training_sessions
INSERT INTO personal_training_sessions (member_id, staff_id, session_date, start_time, end_time, notes)
VALUES 
(3,     1,  '2024-11-05',   '10:00:00',     '11:00:00',     'Focus on upper body strength'),
(7,     4,  '2024-11-20',   '15:00:00',     '16:00:00',     'Cardio and endurance training'),
(12,    6,  '2024-12-07',   '09:00:00',     '10:00:00',     'Core workout and flexibility'),
(9,     8,  '2024-12-19',   '11:00:00',     '12:00:00',     'Full body workout'),
(14,    6,  '2025-01-11',   '13:00:00',     '14:00:00',     'Yoga and stretching'),
(11,    3,  '2025-01-15',   '08:00:00',     '09:00:00',     'Morning cardio session'),
(2,     7,  '2025-01-20',   '12:00:00',     '13:00:00',     'Midday flexibility workout'),
(13,    1,  '2025-01-25',   '15:00:00',     '16:00:00',     'Afternoon endurance training'),
(3,     1,  '2025-02-05',   '10:00:00',     '11:00:00',     'Focus on upper body strength'),
(12,    6,  '2025-02-07',   '09:00:00',     '10:00:00',     'Core workout and flexibility'),
(9,     8,  '2025-02-09',   '11:00:00',     '12:00:00',     'Full body workout'),
(14,    6,  '2025-02-11',   '13:00:00',     '14:00:00',     'Yoga and stretching'),
(11,    3,  '2025-02-15',   '08:00:00',     '09:00:00',     'Morning cardio session'),
(2,     7,  '2025-02-18',   '12:00:00',     '13:00:00',     'Midday flexibility workout'),
(13,    1,  '2025-02-20',   '15:00:00',     '16:00:00',     'Afternoon endurance training');

-- Sample data for member_health_metrics
INSERT INTO member_health_metrics (member_id, measurement_date, weight, body_fat_percentage, muscle_mass, bmi)
VALUES 
(3,     '2024-11-01',   70.5,   22.0,   35.0,   23.5),
(7,     '2024-11-15',   80.0,   18.0,   40.0,   24.0),
(12,    '2024-12-01',   65.0,   24.0,   32.0,   22.5),
(5,     '2024-12-15',   75.5,   20.0,   38.0,   23.8),
(9,     '2025-01-01',   68.0,   23.0,   34.0,   22.8),
(1,     '2025-01-15',   82.5,   17.0,   42.0,   24.5),
(14,    '2025-01-20',   62.0,   25.0,   30.0,   21.5),
(6,     '2025-01-25',   78.0,   19.0,   39.0,   24.2),
(11,    '2025-01-28',   72.5,   21.0,   36.0,   23.2),
(2,     '2025-01-28',   85.0,   16.0,   43.0,   25.0);

-- Sample data for equipment_maintenance_log 
INSERT INTO equipment_maintenance_log (equipment_id, maintenance_date, description, staff_id)
VALUES 
(1,     '2024-11-15',   'Routine maintenance and belt adjustment', 1),
(2,     '2024-11-20',   'Lubrication and safety check', 4),
(3,     '2024-11-25',   'Calibration and software update', 6),
(4,     '2024-11-30',   'Belt replacement and console check', 8),
(5,     '2024-12-01',   'Weight stack inspection and cleaning', 2),
(6,     '2024-12-05',   'Cable tension adjustment', 3),
(7,     '2025-01-01',   'Pedal replacement and chain lubrication', 7),
(8,     '2025-01-05',   'Display repair and sensor calibration', 5),
(9,     '2025-01-20',   'Frame inspection and tightening', 1),
(10,    '2025-01-25',   'Safety features check and padding replacement', 4);