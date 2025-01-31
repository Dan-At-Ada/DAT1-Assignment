-- FitTrack Pro Database Schema

-- Initial SQLite setup
.open fittrackpro.db
.mode column

-- Enable foreign key support
PRAGMA foreign_keys = ON;

-- Create your tables here

CREATE TABLE locations (
    location_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    address TEXT NOT NULL,
    phone_number TEXT,
    email TEXT,
    opening_hours TEXT
);

CREATE TABLE members (
    member_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone_number TEXT,
    date_of_birth DATE,
    join_date DATE NOT NULL,
    emergency_contact_name TEXT,
    emergency_contact_phone TEXT,
    membership_id INTEGER,
    FOREIGN KEY (membership_id) REFERENCES memberships(membership_id)
);

CREATE TABLE staff (
    staff_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone_number TEXT,
    position TEXT,
    hire_date DATE NOT NULL,
    location_id INTEGER,
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

CREATE TABLE equipment (
    equipment_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    type TEXT,
    purchase_date DATE NOT NULL,
    last_maintenance_date DATE,
    next_maintenance_date DATE,
    location_id INTEGER,
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

CREATE TABLE classes (
    class_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    capacity INTEGER,
    duration INTEGER,
    location_id INTEGER,
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

CREATE TABLE class_schedule (
    schedule_id INTEGER PRIMARY KEY,
    class_id INTEGER,
    staff_id INTEGER,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    FOREIGN KEY (class_id) REFERENCES classes(class_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

CREATE TABLE memberships (
    membership_id INTEGER PRIMARY KEY,
    member_id INTEGER,
    type TEXT NOT NULL,
    start_date DATE,
    end_date DATE,
    status TEXT,
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

CREATE TABLE attendance (
    attendance_id INTEGER PRIMARY KEY,
    member_id INTEGER,
    location_id INTEGER,
    check_in_time DATETIME NOT NULL,
    check_out_time DATETIME,
    FOREIGN KEY (member_id) REFERENCES members(member_id),
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

CREATE TABLE class_attendance (
    class_attendance_id INTEGER PRIMARY KEY,
    schedule_id INTEGER,
    member_id INTEGER,
    attendance_status TEXT,
    FOREIGN KEY (schedule_id) REFERENCES class_schedule(schedule_id),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

CREATE TABLE payments (
    payment_id INTEGER PRIMARY KEY,
    member_id INTEGER,
    amount REAL NOT NULL,
    payment_date DATE NOT NULL,
    payment_method TEXT,
    payment_type TEXT,  -- Added missing column
    description TEXT,
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

CREATE TABLE personal_training_sessions (
    session_id INTEGER PRIMARY KEY,
    member_id INTEGER,
    staff_id INTEGER,
    session_date DATE NOT NULL,
    start_time DATETIME,
    end_time DATETIME,
    notes TEXT,
    FOREIGN KEY (member_id) REFERENCES members(member_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

CREATE TABLE member_health_metrics (
    metric_id INTEGER PRIMARY KEY,
    member_id INTEGER,
    measurement_date DATE NOT NULL,
    weight REAL,
    body_fat_percentage REAL,
    muscle_mass REAL,
    bmi REAL,
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

CREATE TABLE equipment_maintenance_log (
    log_id INTEGER PRIMARY KEY,
    equipment_id INTEGER,
    maintenance_date DATE NOT NULL,
    description TEXT,
    staff_id INTEGER,
    FOREIGN KEY (equipment_id) REFERENCES equipment(equipment_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

-- After creating the tables, you can import the sample data using:
-- `.read data/sample_data.sql` in a sql file or `npm run import` in the terminal