# SQL Assignment 2

This repository contains SQL assignment exercises covering various SQL concepts and functions. The assignment is divided into 6 main topics with practical examples.

## 📋 Contents

### a_String_functions-10.sql
Demonstrates PostgreSQL string manipulation functions:
- **CONCAT()** - Concatenate strings with separators
- **UPPER()** & **LOWER()** - Convert text to uppercase/lowercase
- **LENGTH()** - Get the length of strings
- **SUBSTR()** - Extract substring from text
- **Practical Examples:**
  - Display students' full names in uppercase with their cities
  - Show students' first names sorted by length
  - Create abbreviated subject names (4 characters)
  - Generate student summary sentences combining multiple fields

### b_Number_functions-10.sql
Covers numeric operations and aggregations:
- **ROUND()** - Round numbers to specified decimal places
- **CEIL()** & **FLOOR()** - Round up/down to nearest integer
- **COUNT(), AVG(), MAX(), MIN(), SUM()** - Aggregate functions
- **Practical Examples:**
  - Round, ceil, and floor exam marks
  - Calculate statistics (count, average, max, min, total) of marks
  - Apply bonus calculations (10% boost to marks)

### c_date&time_functions-10.sql
Handles date and time operations:
- **TO_CHAR()** - Format dates to strings
- **EXTRACT()** - Extract date components (year, month, day)
- **AGE()** - Calculate age from date of birth
- **Practical Examples:**
  - Extract birth day, month, and year from dates
  - Calculate student ages and display with full names
  - Format exam dates in readable format (e.g., "Friday, 15th March 2025")

### d_SQL_JOINS-10.sql
Demonstrates different types of SQL joins:
- **INNER JOIN** - Return matching records from both tables
- **LEFT JOIN** - Return all records from left table and matching from right
- **RIGHT JOIN** - Return all records from right table and matching from left
- **WHERE IS NULL** - Find unmatched records
- **Practical Examples (using hospital database):**
  - Combine appointment, patient, and doctor information
  - Find all patients and their appointments (including those without)
  - Identify patients who have never had an appointment
  - Retrieve prescription details with patient and doctor names

### e_Window_functions-10.sql
Advanced analytics using window functions:
- **ROW_NUMBER()** - Assign unique sequential number
- **RANK()** & **DENSE_RANK()** - Rank results (with/without gaps)
- **NTILE()** - Partition data into buckets
- **LAG()** - Access previous row values
- **PARTITION BY** - Group data for calculations
- **Practical Examples:**
  - Rank students by marks
  - Partition marks into performance tiers (top, middle, bottom)
  - Calculate average marks by student
  - Track exam improvements using LAG function

### f_Set_operators-10.sql
Combines results from multiple queries:
- **UNION** - Combine distinct results from multiple queries
- **UNION ALL** - Combine results including duplicates
- **INTERSECT** - Find common records between queries
- **Practical Examples:**
  - Combine cities from students and patients
  - Merge names from different tables with source labels
  - Find cities that have both students and patients
  - Create unified lists of people (students, patients, doctors)

## 🗄️ Databases Used

- **nairobi_academy** - Contains students, exam results, and subjects
- **city_hospital** - Contains departments, doctors, patients, appointments, and prescriptions

## 🎯 Learning Outcomes

Upon completing these assignments, you will understand:
- String manipulation and text processing
- Numeric operations and aggregate functions
- Date/time handling and formatting
- SQL JOIN operations and data relationships
- Window functions for analytical queries
- Set operations for combining datasets

## 🚀 How to Use

1. Connect to the appropriate database (nairobi_academy or city_hospital)
2. Copy each SQL query into your SQL client
3. Execute the queries to see results
4. Modify values and explore different outcomes
5. Study the patterns for use in real-world scenarios

## 📝 Notes

- Ensure you have appropriate permissions on the databases
- Some queries reference different schemas, make sure search_path is set correctly
- Results may vary based on the data in your database
