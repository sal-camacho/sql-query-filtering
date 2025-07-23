# Activity Overview
As a security analyst, you’ll often need to query numbers and dates.

For example, you may need to filter patch dates to find machines that need an update. Or you might filter login attempts made during a certain period of time to investigate a security incident.

Common operators for working with numeric or date and time data will help you accurately filter data. These are some of the operators you'll use:

- = (equal)
- '>' (greater than)
- < (less than)
- <> (not equal to)
- '>=' (greater than or equal to)
- <= (less than or equal to)

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

- `SELECT` — retrieve data from a table  
- `WHERE` — apply filters to refine results  
- `AND`, `OR`, `NOT` — logical operators for combining/excluding conditions  
- `>`, `>=`, `<`, `<=`, `=`, `<>` — comparison operators for date, time, and number filters  
- `LIKE` — pattern matching for string fields

---

## Reflections

- Filtering by multiple conditions sharpens your queries for focused analysis  
- Logical operators (`AND`, `OR`, `NOT`) create flexible and layered search logic  
- Date and time filtering supports timeline investigations during breach detection  
- Exclusion filters (`NOT`, `<>`) reduce noise and isolate relevant entries  
- Combining tools helps prepare clean datasets for reporting and decision-making
