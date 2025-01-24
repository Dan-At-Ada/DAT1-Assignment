# 📝 Fittrack Pro Database Assignment

This README will guide you through the assignment for the Fittrack Pro business

## Assignmnet Overview

This assignment consists for one part broken into multiple steps

You are tasked with initializating and creating queries for a database to allow for deployment in the future.

FitTrack Pro is a comprehensive database management system designed for our chain of fitness centers. This project is crucial for managing our operations efficiently and providing insights into our business performance.

** SQL Query Development **
- Create SQL commands to setup the database tables
- Import precursor data into database
- Write SQL queries to retrieve and manipulate data according to the business requirements
- Test the SQL queries using sqlite3

## ⚙️ Check your installation

We recommend using a [GitHub Codespace](https://docs.github.com/en/codespaces/overview) as your development environment for this project. If you create a Codespace using this repository it should automatically install the core applications and dependencies you need to get started with this assignment. However you should check that you have the correct software installed in your codespace before starting the assignment.

1. Check you have `sqlite3` installed in your project:

```terminal
sqlite3 --version
```

2. Check you have node installed in your project:

```terminal
node -v
```

## 🏗️ SQL query development

You will focus on writing SQL queries to set up the database tables, insert sample data and retrieve data according to the query requirements.

### Database Schema

Create the following tables in your database. We have provided a file `schema.sql` inside the `src` folder where you can create tables and insert data using SQL.

#### `locations` table

- `location_id`: INTEGER, Primary Key
- `name`: TEXT, NOT NULL
- `address`: TEXT, NOT NULL
- `phone_number`: TEXT
- `email`: TEXT
- `opening_hours`: TEXT


#### `members` table

- `member_id`: INTEGER, Primary Key
- `first_name`: TEXT, NOT NULL
- `last_name`: TEXT, NOT NULL
- `email`: TEXT, UNIQUE, NOT NULL
- `phone_number`: TEXT
- `date_of_birth`: DATE
- `join_date`: DATE, DEFAULT CURRENT_DATE
- `emergency_contact_name`: TEXT
- `emergency_contact_phone`: TEXT


#### `staff` table

- `staff_id`: INTEGER, Primary Key
- `first_name`: TEXT, NOT NULL
- `last_name`: TEXT, NOT NULL
- `email`: TEXT, UNIQUE, NOT NULL
- `phone_number`: TEXT
- `position`: TEXT, NOT NULL
- `hire_date`: DATE, DEFAULT CURRENT_DATE
- `location_id`: INTEGER, Foreign Key referencing locations(location_id)


#### `equipment` table

- `equipment_id`: INTEGER, Primary Key
- `name`: TEXT, NOT NULL
- `type`: TEXT, NOT NULL
- `purchase_date`: DATE
- `last_maintenance_date`: DATE
- `next_maintenance_date`: DATE
- `location_id`: INTEGER, Foreign Key referencing locations(location_id)


#### `classes` table

- `class_id`: INTEGER, Primary Key
- `name`: TEXT, NOT NULL
- `description`: TEXT
- `capacity`: INTEGER, NOT NULL
- `duration`: INTEGER, NOT NULL
- `location_id`: INTEGER, Foreign Key referencing locations(location_id)


#### `class_schedule` table

- `schedule_id`: INTEGER, Primary Key
- `class_id`: INTEGER, Foreign Key referencing classes(class_id)
- `staff_id`: INTEGER, Foreign Key referencing staff(staff_id)
- `start_time`: DATETIME, NOT NULL
- `end_time`: DATETIME, NOT NULL


#### `memberships` table

- `membership_id`: INTEGER, Primary Key
- `member_id`: INTEGER, Foreign Key referencing members(member_id)
- `type`: TEXT, NOT NULL
- `start_date`: DATE, NOT NULL
- `end_date`: DATE
- `status`: TEXT, CHECK(status IN ('Active', 'Expired', 'Cancelled', 'Frozen'))


#### `attendance` table

- `attendance_id`: INTEGER, Primary Key
- `member_id`: INTEGER, Foreign Key referencing members(member_id)
- `location_id`: INTEGER, Foreign Key referencing locations(location_id)
- `check_in_time`: DATETIME, DEFAULT CURRENT_TIMESTAMP
- `check_out_time`: DATETIME


#### `class_attendance` table

- `class_attendance_id`: INTEGER, Primary Key
- `schedule_id`: INTEGER, Foreign Key referencing class_schedule(schedule_id)
- `member_id`: INTEGER, Foreign Key referencing members(member_id)
- `attendance_status`: TEXT, CHECK(attendance_status IN ('Attended', 'No Show', 'Cancelled'))


#### `payments` table

- `payment_id`: INTEGER, Primary Key
- `member_id`: INTEGER, Foreign Key referencing members(member_id)
- `amount`: DECIMAL(10, 2), NOT NULL
- `payment_date`: DATETIME, DEFAULT CURRENT_TIMESTAMP
- `payment_method`: TEXT
- `description`: TEXT


#### `personal_training_sessions` table

- `session_id`: INTEGER, Primary Key
- `member_id`: INTEGER, Foreign Key referencing members(member_id)
- `staff_id`: INTEGER, Foreign Key referencing staff(staff_id)
- `session_date`: DATE, NOT NULL
- `start_time`: TIME, NOT NULL
- `end_time`: TIME, NOT NULL
- `notes`: TEXT


#### `member_health_metrics` table

- `metric_id`: INTEGER, Primary Key
- `member_id`: INTEGER, Foreign Key referencing members(member_id)
- `measurement_date`: DATE, DEFAULT CURRENT_DATE
- `weight`: DECIMAL(5, 2)
- `body_fat_percentage`: DECIMAL(4, 2)
- `muscle_mass`: DECIMAL(5, 2)
- `bmi`: DECIMAL(4, 2)


#### `equipment_maintenance_log` table

- `log_id`: INTEGER, Primary Key
- `equipment_id`: INTEGER, Foreign Key referencing equipment(equipment_id)
- `maintenance_date`: DATE, NOT NULL
- `description`: TEXT
- `performed_by`: INTEGER, Foreign Key referencing staff(staff_id)

Once you've created your tables, you'll need to insert some users and todos into your database to check that your tables are defined correctly.

### Database Import

The team has provided us with some initial data alongside creating our own data entries to help test the new database, when the schema is ready they have setup a script to import this new data over.

```shell
npm run import
```

### User Management (user_management.sql)

1. Retrieve all members

- Output: A result set with columns:

```plaintext
member_id | first_name | last_name | email | join_date | membership_type
```

2. Update a member's contact information

- Task: Update the phone number and email for member with ID 5
- New phone number: '555-9876'
- New email: '[emily.jones.updated@email.com](mailto:emily.jones.updated@email.com)'
- Output: No result set. Affects 1 row.

1. Count total number of members

- Output: A single value representing the total number of members.

4. Find member with the most class registrations

- Output: A result set with columns:

```plaintext
member_id | first_name | last_name | registration_count
```

5. Find member with the least class registrations

- Output: A result set with columns:

```plaintext
member_id | first_name | last_name | registration_count
```

6. Calculate the percentage of members who have attended at least one class

- Output: A single value representing the percentage.

### Payment Management (payment_management.sql)

1. Record a payment for a membership

- Task: Insert a new payment record for member with ID 11
- Amount: $50.00
- Payment date: Current date and time
- Payment method: 'Credit Card'
- Description: 'Monthly membership fee'
- Output: No result set. Affects 1 row.

1. Calculate total revenue from membership fees for each month of the current year

- Output: A result set with columns:

```plaintext
month | total_revenue
```

3. Find all day pass purchases

1. Output: A result set with columns:

```plaintext
payment_id | amount | payment_date | payment_method
```

### Equipment Management (equipment_management.sql)

1. Find equipment due for maintenance

1. Task: List all equipment with next_maintenance_date on or before the current date
2. Output: A result set with columns:

```plaintext
equipment_id | name | next_maintenance_date
```

2. Record equipment usage

- Task: Insert a new record for Treadmill 1 (equipment_id 1) usage
- Usage duration: 45 minutes
- Usage date: Current date
- Member ID: 3
- Output: No result set. Affects 1 row.

3. Count equipment types in stock

- Output: A result set with columns:

```plaintext
equipment_type | count
```

4. Calculate average age of equipment by type (in days)

- Output: A result set with columns:

```plaintext
equipment_type | avg_age_days
```

### Class Scheduling (class_scheduling.sql)

1. List all classes with their instructors

- Output: A result set with columns:

```plaintext
class_id | class_name | instructor_name
```

2. Find available classes for a specific date

- Task: List classes available on '2023-03-15'
- Output: A result set with columns:

```plaintext
class_id | name | start_time | end_time | available_spots
```

3. Register a member for a class

- Task: Register member with ID 11 for the HIIT Workout class (class_id 2) on '2023-03-20'
- Output: No result set. Affects 1 row in class_attendance table.


4. Cancel a class registration

- Task: Cancel the registration for member with ID 3 from the Yoga Basics class (class_id 1) on '2023-03-01'
- Output: No result set. Affects 1 row in class_attendance table.
-


5. List top 5 most popular classes

- Output: A result set with columns:

```plaintext
class_id | class_name | registration_count
```





1. Calculate average number of classes per member
- Output: A single value representing the average number of classes per member.





### Membership Management (membership_management.sql)

1. List all active memberships
- Output: A result set with columns:

```plaintext
member_id | first_name | last_name | membership_type | join_date
```





2. Calculate the average duration of gym visits for each membership type

- Output: A result set with columns:

```plaintext
membership_type | avg_visit_duration_minutes
```





3. Identify members with expiring memberships

- Task: List members whose memberships will expire within the next 30 days
- Output: A result set with columns:

```plaintext
member_id | first_name | last_name | email | end_date
```

### Attendance Tracking (attendance_tracking.sql)

1. Record a member's gym visit

- Task: Insert a new attendance record for member with ID 7
- Location: Downtown Fitness (location_id 1)
- Check-in time: Current date and time
- Output: No result set. Affects 1 row in attendance table.



2. Retrieve a member's attendance history

- Task: Get attendance history for member with ID 5
- Output: A result set with columns:

```plaintext
visit_date | check_in_time | check_out_time
```





3. Find the busiest day of the week based on gym visits
- Output: A result set with columns:

```plaintext
day_of_week | visit_count
```





4. Calculate the average daily attendance for each location
- Output: A result set with columns:

```plaintext
location_name | avg_daily_attendance
```







### Staff Management (staff_management.sql)

1. List all staff members by role
- Output: A result set with columns:

```plaintext
staff_id | first_name | last_name | role
```





2. Find trainers with more than 5 personal training sessions in the last 30 days
- Output: A result set with columns:

```plaintext
trainer_id | trainer_name | session_count
```





3. Calculate the total hours worked by each staff member in the current month
- Output: A result set with columns:

```plaintext
staff_id | staff_name | total_hours_worked
```

### Personal Training (personal_training.sql)

1. List all personal training sessions for specific trainer "Ivy Irwin"
- Output: A result set with columns:
   ```
   session_id | member_name | session_date | start_time | end_time
   ```
## 🔍 Checking your SQL queries

`sqlite3` has a CLI (command line interface) which we can use to interact with our Sqlite databases. You can check your SQL queries by running your `.sql` files with the `sqlite3` CLI.

| ℹ️ Double check you have `sqlite3` installed in your codespace. Open a terminal and run `sqlite3 --version` to check you get the sqlite3 version in the command output.

To run any `.sql` file with `sqlite3`, you can:

1. Change into the directory where the file is located.
2. Double check your `.sql` file opens a database using the `.open` statement.
3. Open a terminal and use the `sqlite3` command-line tool:
   ```terminal
   sqlite3 < <name-of-file>.sql
   ```
4. Check the query output when you run the command

For example, to run the file `setup.sql` located in `part-1`. You can:

1. Change directory into the `part-1` directory
2. Open a terminal and run the following command:

```terminal
  sqlite3 < setup.sql
```

3. Check the query output when you run the command


## 📝 Additional Notes

Happy coding and testing!