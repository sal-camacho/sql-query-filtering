# Use SQL Joins to Investigate Employee, Machine, and Login Data

You explored different join techniques in SQL to combine data across multiple tables. This activity involved matching employees to their machines, identifying unmatched records, and analyzing login attempt behavior. These skills are key when tracing connections across systems in a cybersecurity environment.

You should know how to:
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

