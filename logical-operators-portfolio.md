## Project Description

As a security professional for a large organization, I investigated login anomalies and employee machine updates using SQL. By applying logical filters such as AND, OR, and NOT, I uncovered patterns that could indicate potential breaches or system misconfigurations. This document showcases those queries and explains how they support real-world security analysis.

## Retrieve After-Hours Failed Login Attempts

**SQL Query:**
```sql
SELECT *
FROM log_in_attempts
WHERE login_time > '18:00' AND success = 0;
```
Explanation: This query filters the log_in_attempts table to identify failed login attempts that occurred after 6:00 PM. It uses the AND operator to combine two conditions: time (login_time > '18:00') and success status (success = 0 for failure). This helps identify unusual activity happening outside business hours.

## Retrieve Login Attempts on Specific Dates

**SQL Query:**
```sql
SELECT *
FROM log_in_attempts
WHERE login_date = '2022-05-08' OR login_date = '2022-05-09';
```
Explanation: This query retrieves login attempts that occurred on May 8 or May 9, 2022. It uses the OR operator to include both dates, pulling all relevant records from the log_in_attempts table for investigation. This helps isolate login events that may be related to a specific suspicious incident.

## Retrieve Login Attempts Outside of Mexico

**SQL Query:**
```sql
SELECT *
FROM log_in_attempts
WHERE country NOT LIKE 'MEX%';
```
Explanation: This query filters the log_in_attempts table to identify login activity that did not originate from Mexico. The condition country NOT LIKE 'MEX%' excludes records where the country value starts with "MEX", covering variations like "MEX" or "MEXICO". This helps isolate login attempts from other regions, supporting geographic-based investigation.

## Retrieve Employees in Marketing Department (East Building)

**SQL Query:**
```sql
SELECT *
FROM employees
WHERE department LIKE '%Marketing%' AND office LIKE 'East%';
```
Explanation: This query targets employees whose department includes “Marketing” and whose office is located in the East building. The LIKE '%Marketing%' condition matches any variation that contains “Marketing”, while LIKE 'East%' filters offices starting with “East”. Together, they isolate employees who need updates specific to Marketing roles in East locations.

## Retrieve Employees in Finance or Sales Departments

**SQL Query:**
```sql
SELECT *
FROM employees
WHERE department LIKE '%Finance%' OR department LIKE '%Sales%';
```
Explanation: This query pulls employees working in either the Finance or Sales departments. Using the OR operator allows the inclusion of both departments, helping security teams apply role-specific updates or policies to key business units. It filters rows from the employees table where the department contains either term.

## Retrieve All Employees NOT in Information Technology

**SQL Query:**
```sql
SELECT *
FROM employees
WHERE department NOT LIKE '%Information Technology%';
```
Explanation: This query filters out employees in the Information Technology department using the NOT LIKE operator. By excluding records where the department contains “Information Technology,” it helps focus on users who still require updates or whose machines may need further investigation—especially outside IT-maintained systems.

## Summary

Through targeted SQL queries, I identified specific login events, employee groups, and security-related anomalies. This exercise demonstrated my ability to filter large datasets using multiple logic operators and pattern matching. These skills are foundational for real-world threat detection and supporting secure infrastructure management.
