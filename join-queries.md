# Activity Overview
As a security analyst, you’ll often find that you need data from more than one table.

Previously, you learned that a relational database is a structured database containing tables that are related to each other.

SQL joins enable you to combine tables that contain a shared column. This is helpful when you need to connect information that appears in different tables.

In this activity, you’ll use SQL joins to connect separate tables and retrieve needed information.
- Use `INNER JOIN` to match records between tables  
- Apply `LEFT JOIN` and `RIGHT JOIN` to capture unmatched entries from each side  
- Join tables using shared keys like `device_id` and `username`  

---

## Perform a SQL Join — Link Records from Machines, Employees, and Login Logs

This report was completed as part of the Google Cybersecurity Certificate. It demonstrates how SQL joins in the MariaDB shell support investigation workflows by unifying data across tables and identifying incomplete relationships.

## My Contributions

## Match employees to their machines
- Used `INNER JOIN` between `machines` and `employees` tables using the `device_id` column  
- Confirmed 185 matched records showing which employees are actively assigned to devices  

## Return more data using LEFT and RIGHT JOIN
- Applied a `LEFT JOIN` to display all machines, including those not yet linked to any employee  
- Executed a `RIGHT JOIN` to show all employees, even those without a machine assignment  

## Retrieve login attempt data
- Performed an `INNER JOIN` using the `username` column between `employees` and `log_in_attempts`  
- Returned 200 records capturing employee login behavior for incident analysis  

---

## Tools Used

- `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN` — to merge data across tables  
- Shared columns (`device_id`, `username`) — served as join keys  
- Table targeting — used joins to create wide relational views across employee systems  

---

## Reflections

- Joins make it easier to trace device usage and login activity across systems  
- Each join type provides control over the completeness of the result set  
- Connecting user and device data reveals gaps that may signal misconfigurations or issues

