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

- **Filtered by date**
  - Retrieved logins after a specific date  
  - Expanded query to include a set starting date  
  - Used a date range to focus results between known incident days

- **Filtered by time**
  - Investigated login attempts before work hours  
  - Narrowed query to logins between 06:00:00 and 07:00:00

- **Filtered by event ID**
  - Retrieved specific login events using `event_id`  
  - Applied range filtering to view grouped login actions  
  - Targeted result columns to focus on `event_id`, `username`, and `login_date`
    
---

## Tools Used

- `SELECT` — retrieve data from a table  
- `WHERE` — apply filters to refine results  
- `AND`, `OR`, `NOT` — logical operators for combining/excluding conditions  
- `>`, `>=`, `<`, `<=`, `=`, `<>` — comparison operators for date, time, and number filters  
- `LIKE` — pattern matching for string fields

---

## Reflections

- Filtering by time, date, and ID improves incident traceability and investigation accuracy  
- Inclusive range filtering simplifies multi-day or hour-by-hour analysis  
- Selecting specific columns strengthens query focus and supports clean reporting
