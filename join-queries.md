## Project Description

As a security analyst, I investigated a machine compromise incident using SQL joins to connect multiple tables across a relational database. This file demonstrates how INNER JOIN, LEFT JOIN, and RIGHT JOIN queries can be applied to trace device ownership, user-machine relationships, and login history. Each example connects distinct datasets to support comprehensive analysis.

---

## Match Employees to Their Machines

**SQL Query:**
```sql
SELECT *
FROM machines
INNER JOIN employees ON machines.device_id = employees.device_id;
```
**Explanation: This query uses an INNER JOIN to connect the machines and employees tables via the shared device_id column. It returns only rows where a match exists in both tables—i.e., machines that are actively assigned to employees. This helps identify who is using which device, which is critical when tracing compromised hardware.**

## Return All Machines with or Without Users (LEFT JOIN)

**SQL Query:**
```sql
SELECT *
FROM machines
LEFT JOIN employees ON machines.device_id = employees.device_id;
```
**Explanation: This query returns all records from the machines table—even if a matching employee record does not exist. The LEFT JOIN ensures visibility into machines that may not be currently assigned. Null username values indicate unassigned machines that may be vulnerable or improperly configured.**

## Return All Employees with or Without Machines (RIGHT JOIN)

**SQL Query:**
```sql
SELECT *
FROM machines
RIGHT JOIN employees ON machines.device_id = employees.device_id;
```
**Explanation: This RIGHT JOIN retrieves all employee records whether they have a machine assigned or not. It highlights personnel who may not be linked to a device, which could represent misconfigured accounts or identify users whose machines were recently deactivated.**


## Retrieve Login Attempts Per Employee

**SQL Query:**
```sql
SELECT *
FROM employees
INNER JOIN log_in_attempts ON employees.username = log_in_attempts.username;
```
**Explanation: This query links employees to their login activity through the username field using an INNER JOIN. It returns only employees who have recorded login attempts. This helps narrow the investigation to users who were active near the time of the incident.**

## Summary

By leveraging SQL joins across multiple tables, I connected machine inventory, employee assignments, and login history to assist in a security investigation. Using INNER JOIN, LEFT JOIN, and RIGHT JOIN, I mapped relationships between users and devices and identified gaps in machine usage. These queries demonstrate core data-wrangling capabilities required for real-world forensic analysis.
