# Activity Overview

You learned how to apply filters to refine SQL queries using comparison and logical operators. This activity focused on filtering by dates, numbers, and string values in support of security investigations. As a security analyst, using multiple filter conditions helps isolate relevant login data and employee information quickly and efficiently.

You should know how to:
- Use `WHERE` with operators like `=`, `>`, `<`, `<=`, and `<>`
- Apply `AND`, `OR`, and `NOT` to layer conditions
- Filter by date, number, and string fields
- Combine filters to narrow or broaden results

---

## Perform a SQL Query — Apply Multiple Filters to Security Data

This report was completed as part of the Google Cybersecurity Certificate. It documents how to refine SQL queries in the MariaDB shell by applying multiple filters across various data types. These skills are essential for investigating login anomalies, isolating employee records, and identifying patterns across logs.

## My Contributions
# Apply More Filters in SQL

You learned how to apply more specific filters in SQL using comparison and range operators to retrieve relevant records for security investigations. This activity emphasized filtering by date, time, and event ID to isolate login behavior. These techniques are critical for narrowing data and identifying suspicious or noteworthy activity.

You should know how to:
- Use comparison operators (`=`, `>`, `<`, `>=`, `<=`, `<>`) to target records  
- Filter data using `BETWEEN` for inclusive date or time ranges  
- Narrow queries using event identifiers  
- Apply layered filtering based on timeframes and conditions

---

## Perform a SQL Query — Refine Results by Date, Time, and Event ID

This report was completed as part of the Google Cybersecurity Certificate. It documents how SQL filters were used in the MariaDB shell to examine login events tied to incident response. The queries support retrieval of targeted records for time-based analysis, off-hour access, and user-specific tracking.

## My Contributions

- Retrieved login attempts made after a specified date to evaluate post-incident activity  
- Refined the same query to include a specific start date for a broader investigation window  
- Used inclusive ranges to isolate login events between key dates  
- Investigated logins occurring before standard work hours to identify off-hour access  
- Narrowed time-based filters to focus between 06:00:00 and 07:00:00  
- Queried login attempts using event IDs to focus on individual events  
- Applied range filters to event IDs for grouped review of login behavior  
- Interpreted result records to extract usernames and timestamps relevant to the security scenario

---

## Tools Used

- `WHERE` — apply filtering logic to database queries  
- Comparison operators (`>`, `>=`, `<`, `<=`, `=`, `<>`) — used across date

---

## Tools Used

- `SELECT` — retrieve data from a table  
- `WHERE` — apply filters to refine results  
- `AND`, `OR`, `NOT` — logical operators for combining/excluding conditions  
- `>`, `<`, `<>` — comparison operators for date, time, and number filters  
- `LIKE` — pattern matching for string fields

---

## Reflections

- Filtering by multiple conditions sharpens your queries for focused analysis  
- Logical operators (`AND`, `OR`, `NOT`) create flexible and layered search logic  
- Date and time filtering supports timeline investigations during breach detection  
- Exclusion filters (`NOT`, `<>`) reduce noise and isolate relevant entries  
- Combining tools helps prepare clean datasets for reporting and decision-making
