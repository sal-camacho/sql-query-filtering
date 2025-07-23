# Activity Overview

You learned how to use logical operators in SQL to retrieve and refine information from a database. In this activity, you practiced using the `AND`, `OR`, and `NOT` operators to filter records based on multiple conditions. These techniques are essential when analyzing login data, tracking employee behavior, and excluding or combining specific datasets in a security investigation.

You should know how to:
- Filter queries using multiple conditions with `AND`
- Broaden filters using alternative values with `OR`
- Exclude specific entries using `NOT`
- Combine logical operators to create complex conditions

---

## Perform a SQL Query — Use Logical Operators to Filter Results

This report was completed as part of the Google Cybersecurity Certificate. It documents how to use SQL logical operators in the MariaDB shell to extract meaningful records from organizational datasets. These skills are critical for cybersecurity analysts working with login data, employee systems, and cross-departmental updates.

## My Contributions

- **Retrieve failed login attempts after hours**
  - Used `AND` to combine time and success conditions  
  - Queried `log_in_attempts` with:
    ```sql
    SELECT * 
    FROM log_in_attempts 
    WHERE login_time > '18:00' AND success = FALSE;
    ```

- **Retrieve login attempts on specific dates**
  - Used `OR` to combine two date filters  
  - Queried `log_in_attempts` with:
    ```sql
    SELECT * 
    FROM log_in_attempts 
    WHERE login_date = '2022-05-09' OR login_date = '2022-05-08';
    ```

- **Exclude login attempts from Mexico**
  - Used `NOT` and `LIKE` to remove rows starting with 'MEX'  
  - Queried `log_in_attempts` with:
    ```sql
    SELECT * 
    FROM log_in_attempts 
    WHERE NOT country LIKE 'MEX%';
    ```

- **Filter employees in Marketing, East offices**
  - Used `AND` and `LIKE` on `department` and `office` fields  
  - Queried `employees` with:
    ```sql
    SELECT * 
    FROM employees 
    WHERE department = 'Marketing' AND office LIKE 'East%';
    ```

- **Retrieve employees in Finance or Sales**
  - Used `OR` on the same column to include multiple departments  
  - Queried `employees` with:
    ```sql
    SELECT * 
    FROM employees 
    WHERE department = 'Finance' OR department = 'Sales';
    ```

- **Exclude employees in Information Technology**
  - Used `NOT` to remove rows from a specific department  
  - Queried `employees` with:
    ```sql
    SELECT * 
    FROM employees 
    WHERE NOT department = 'Information Technology';
    ```

---

## Tools Used

- `SELECT` — to retrieve
