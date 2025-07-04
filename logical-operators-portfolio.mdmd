## Project Description

As a security professional for a large organization, I investigated login anomalies and employee machine updates using SQL. I applied filtering logic to identify patterns that could indicate a potential breach or system misconfiguration. This document outlines SQL queries using logical operators (AND, OR, NOT) to extract meaningful insights from employee and login datasets.

## Retrieve After-Hours Failed Login Attempts

**SQL Query:**
```sql
SELECT * FROM log_in_attempts
WHERE login_time > '18:00' AND success = 0;
```
Explanation: This query filters the log_in_attempts table to identify failed login attempts that occurred after 6:00 PM. It uses the AND operator to combine two conditions: time (login_time > '18:00') and success status (success = 0 for failure). This helps identify unusual activity happening outside business hours.

Just update that pattern for each remaining query:

- Logins on 2022-05-08 or 2022-05-09
- Logins outside Mexico (`NOT LIKE 'MEX%'`)
- Marketing employees in East building
- Employees in Finance or Sales
- All employees NOT in Information Technology

Let me know if you want to paste those queries in together—I can format the whole thing in Markdown for you.

---

## 📌 Step 4: Add the Summary (at the bottom)

```markdown
## Summary

Through targeted SQL queries, I identified specific login events, employee groups, and security-related anomalies. This exercise demonstrated my ability to filter large datasets using multiple logic operators and pattern matching. These skills are foundational for real-world threat detection and supporting secure infrastructure management.
# SQL Filtering Lab Portfolio

## Project Description

As a security professional for a large organization, I investigated login anomalies and employee machine updates using SQL. I applied filtering logic to identify patterns that could indicate a potential breach or system misconfiguration. This document outlines SQL queries using logical operators (AND, OR, NOT) and pattern matching to extract meaningful insights from employee and login datasets.

---

## Retrieve After-Hours Failed Login Attempts

**SQL Query:**
```sql
SELECT *
FROM log_in_attempts
WHERE login_time > '18:00'
  AND success = 0;
