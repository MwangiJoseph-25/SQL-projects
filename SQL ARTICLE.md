## Introduction

When I first started learning data analytics, I spent most of my time working with tools like Excel and Power BI for data cleaning, sorting values, and creating simple reports.

But one question kept coming up:

Where does all this data actually come from?

That curiosity led me into the world of databases and SQL.

So, instead of just watching tutorials and memorising all that, I decided to learn by doing and built a simple school database from scratch. In the process, I not only learned how SQL works, but also how data is structured, managed, and queried in real-world systems.

In this article, I will be walking you through that journey step-by-step, using practical examples from the database I created.

### What is a Database?

A database is an organised collection of data stored electronically so it can be easily accessed, managed, and updated.

Think of it as a digital filing system - where instead of papers in cabinets, you store structured information in tables electronically.

### Common Databases

🌍 Some widely used databases include:

- PostgreSQL — powerful and widely used in analytics
- MySQL — common in web applications
- MongoDB — used for flexible, non-relational data

### 🛠️🔨What is a Database Management System (DBMS)?

A DBMS is software that allows users to interact with databases.

It helps you:

- create databases
- insert and update data
- query information
- manage access

### From Databases to SQL

Now that I understood what databases are and how they are managed, the next step was learning how to actually talk to them.

That’s where SQL comes in.

#### So, what is SQL?

SQL **(Structured Query Language)** is used to communicate with relational databases.

It allows you to:
- define structure
- insert data
- modify records
- retrieve insights

SQL is divided into categories:

|Type|Purpose|
|:----|:----|
|Data query language (DQL)|Queries data 
|Data Definition language (DDL)|Define structure
|Data Manipulation Language(DML)|Manipulate data
|Data Control language(DCL)|Control access

**DDL vs DML**

|DDL|DML|
|:---|:---|
|CREATE, ALTER, DROP TRUNCATE|	INSERT, UPDATE, DELETE
|Defines structure|Works with data


### Navigating PostgreSQL

Before writing queries, I had to understand the PostgreSQL interface and what the key areas are.

The key areas include:

- Databases
- Schemas
-Tables
- Query Tool

*Figure 1*: **PostgreSQL Interface Overview**

![screenshot showing navigation panel and query tool](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/rez114zloexvc5cq1bos.png)

**What is a Schema?**

A schema is a logical container that organizes database objects like tables-think of it as a folder inside a database

Before creating tables, I created my schema:

 *Figure 2*: **Creating and Setting a Schema in PostgreSQL**

![screenshot showing CREATE SCHEMA and SET search_path](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/ch34e0l8bvtvckqs7bij.png)


### Case Study: Building a School Database

At this point, theory alone was not enough.

So, I needed a practical scenario, and therefore I created a school database from scratch, used for managing students, subjects, and exam results.

- **Step One: Creating Tables (DDL)**

I created three main tables:

- Students
- Subjects
- Exam Results


```sql
create table Students(student_id INT primary key,
First_name varchar(50) not null,
last_name varchar(50) not null,
gender char(1),
date_of_birth date,
Class char(6),
city varchar(50));
```

```sql

create table Subjects(subject_id int primary key,subject_name varchar(50) not null unique,departments varchar(50),
teacher_name varchar(50),credits int);

```



```sql
create table exam_results(result_id int primary key,student_id INT not null,
subject_id INT not null,marks int not null,exam_date date,grade char(1) not null);
```


- **Step two: Inserting Data (DML)**

Next, I inserted sample data into each table.

 *Figure 3*: **Inserting Data into Tables**
screenshots showing INSERT statements and populated tables 
![Students table](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/wi7jg0hcwgbmfdds1rm1.png) 
![subjects table](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/thjc7pkc5tmgy72c61f0.png)
![Results table](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/060mhlt64zftt0qwh0ts.png)

### Updating, Delete, Alter, Drop, and Truncate

Something you should note📝

**DROP**, **TRUNCATE**, and **ALTER** are used to modify the structure or contents of a table.
- **DROP** completely removes a table from the database, including its data and structure.
- **TRUNCATE** quickly deletes all rows in a table while keeping the table structure intact, making it efficient for clearing large datasets. 
- **ALTER** is used to modify an existing table’s structure, such as adding, renaming, or removing columns.

_Figure 4_: A screenshot showing ALTER operations

![screenshot showing ALTER operations](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/gz8dwdlm3mjorsvwku8n.png)


**DELETE** and **INSERT** are used to manage the data within a table.

- **INSERT** adds new records into a table, allowing you to populate it with data.
- **DELETE**, on the other hand, removes specific rows based on a condition, giving you control over which data is removed without affecting the rest of the table.


To modify records, I used UPDATE and DELETE.

*Figure 5*: **Updating and Deleting Records**

screenshot showing UPDATE and DELETE operations
![screenshot showing UPDATE operation ](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/f6w33grski83rm008go0.png)

![screenshot showing delete operation](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/7rb1lj0umvnlieq3pnph.png)


### Filtering Data Using WHERE

To retrieve specific data, I used the WHERE clause.

_Figure 6_: **Filtering Data Using WHERE Clause**

![screenshot showing query & filtered results](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/9a6401e41r4nka30gvbi.png)


Note that the **WHERE** clause supports conditions like:

- = equal
- greater than
- BETWEEN range
- IN multiple values
- LIKE pattern matching

### Transforming Data Using CASE WHEN
- The CASE expression in SQL allows you to apply conditional logic within a query. It checks conditions one by one and returns the first matching result, or a default value using the ELSE clause if no condition is met.

To make the data more meaningful, I used CASE WHEN.

```sql
CASE
WHEN marks >= 80 THEN 'Distinction.'
WHEN marks >= 60 THEN 'Merit.'
WHEN marks >= 40 THEN 'Pass.'
ELSE 'Fail'
END

```
_Figure 7_: **Categorizing Performance Using CASE WHEN**

![screenshot showing transformed results](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/x39rjq4d2cdc4wrj6o46.png)

### Counting Data

The COUNT() function in SQL is an aggregate function that returns the number of rows matching a specified condition. It is commonly used for analysis, reporting, and checking data accuracy.

To summarize data, I used COUNT.

_Figure 8_: **Counting Records Based on Conditions**

![screenshot showing COUNT query and result](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/zsuv16twc4yz8jjilpo8.png)

### Challenges I Faced 

While writing these queries, everything didn’t go smoothly, and that’s where most of the learning actually happened.

- **Data Inconsistency**

When inserting columns values,I entered **form 3** and **Form 3** note one starts with (f), and the other one starts with (F)

When filtering, some records didn’t appear.

Therefore, always standardize your data.

- **Table Name Errors**

 I also got errors like :

![incorrect naming error](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/v68d68afvcuzpo0ybx1p.png)

This was because I misspelled the table name.

What I realised, SQL requires exact naming — even small mistakes break queries.

- **Filtering Issues**

Missing commas or incorrect syntax caused errors.

You should pay much Attention to detail -it is critical in SQL.

### Final Thoughts

Building this simple school database completely changed how I understand data.

At first, SQL felt like a set of commands I needed to memorize. But through practice, I realized it’s more about structure, consistency, and logical thinking.

Small details, like how data is entered or how queries are written, can completely change your results.

If you're starting, my advice is simple:

Don’t just learn SQL, but also build something with it.
Because the moment you apply it, everything starts to make sense.

Don't just memorise the commands, practice!!