
## Perform a SQL Query — Retrieve and Sort Data from a Database

This report was completed as part of the Google Cybersecurity Certificate. It documents how to use SQL queries in the MariaDB shell to retrieve and organize data. These skills are essential for analyzing login activity, device usage, and user behavior in cybersecurity investigations.

---

# Activity Overview

- Queried a database to return information on employee devices  
- Examined login attempts using SELECT statements  
- Sorted query results using ORDER BY  
- Interpreted table structure and field relationships

---

## Perform a SQL Query — Retrieve and Sort Data from a Database

This report was completed as part of the Google Cybersecurity Certificate. It documents how to use SQL queries in the MariaDB shell to retrieve and organize data. These skills are essential for analyzing login activity, device usage, and user behavior in cybersecurity investigations.

## My Contributions

- **Return information on employee devices**
  - Used `SELECT * FROM devices;` to retrieve all device records  
  - Verified fields such as `device_id`, `employee_id`, and `device_type`

- **Examine login attempts**
  - Queried `login_attempts` using `SELECT * FROM login_attempts;`  
  - Identified fields such as `username`, `timestamp`, and `success`

- **Sort the data returned from a query**
  - Applied `ORDER BY timestamp DESC;` to view most recent login attempts first  
  - Confirmed sorting behavior using sample output

---

## Tools Used

- `SELECT` — to retrieve data from tables  
- `FROM` — to specify the source table  
- `ORDER BY` — to sort results by column

---

## Reflections

- SQL queries allow analysts to extract meaningful patterns from raw data.  
- Sorting login attempts supports incident detection and response.  
- Understanding table relationships helps build accurate queries for investigations.

- Add terminal screenshots showing:
  - Full table output  
  - Sorted login attempts
