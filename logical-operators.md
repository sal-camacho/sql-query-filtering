# Activity Overview
As a security analyst, you’ll likely need to analyze data. And often finding the specific data you’ll need depends on more than one factor.

To retrieve specific pieces of information from the database, you can filter for multiple conditions. You can also filter for what does not match a particular condition.

In this activity, you’ll use the AND, OR, and NOT operators to create more complex filters for SQL queries.
You learned how to use logical operators in SQL to retrieve and refine information from a database. You practiced using the `AND`, `OR`, and `NOT` operators to filter records based on multiple conditions. These techniques are essential when analyzing login data, tracking employee behavior, and excluding or combining specific datasets in a security investigation.

You should know how to:
- Filter queries using multiple conditions with `AND`
- Broaden filters using alternative values with `OR`
- Exclude specific entries using `NOT`
- Combine logical operators to create complex conditions

---

## Perform A Query — Use Logical Operators to Filter Results

This report was completed as part of the Google Cybersecurity Certificate. It documents how to use SQL logical operators in the MariaDB shell to extract meaningful records from organizational datasets. These skills are critical for cybersecurity analysts working with login data, employee systems, and cross-departmental updates.

## My Contributions

- **Filter for after-hours failed login attempts**  
  - Used `WHERE login_time > '18:00' AND success = FALSE;`  
  - Retrieved 19 failed login attempts occurring after business hours

- **Filter for login attempts on specific dates**  
  - Used `WHERE login_date = '2022-05-09' OR login_date = '2022-05-08';`  
  - Identified 75 login attempts made across two days of investigation

- **Filter for login attempts outside of Mexico**  
  - Used `WHERE NOT country LIKE 'MEX%';` to exclude Mexican-origin logins  
  - Retrieved 144 login attempts outside of Mexico for deeper analysis

- **Filter for employees in Marketing located in East offices**  
  - Used `WHERE department = 'Marketing' AND office LIKE 'East%';`  
  - Found user `elarson` among East-building Marketing team

- **Filter for employees in Finance or Sales departments**  
  - Used `WHERE department = 'Finance' OR department = 'Sales';`  
  - Found user `lrodriqu` among first returned Sales employees

- **Filter for employees not in the Information Technology department**  
  - Used `WHERE NOT department = 'Information Technology';`  
  - Retrieved 161 employees outside the IT department scope

---

## Tools Used

- `SELECT` — to retrieve results from tables  
- `FROM` — to specify the table to query  
- `WHERE` — to apply filters  
- `AND`, `OR`, `NOT` — to combine and exclude conditions  
- `LIKE` — to match patterns in column values

---

## Reflections

- Logical operators help build targeted queries for real-world security analysis  
- `AND` narrows down results by requiring multiple true conditions  
- `OR` allows for broader filtering when multiple values are valid  
- `NOT` effectively removes irrelevant records from the result set  
- Parentheses and careful ordering ensure accurate filtering logic
