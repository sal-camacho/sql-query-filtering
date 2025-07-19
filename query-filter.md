# Activity Overview
As a security analyst, knowing how to make better queries to retrieve specific pieces of data can help you find the security-related information you need more efficiently.

In this activity, you’ll apply basic filters to SQL queries to retrieve information from a MariaDB database.

MariaDB is a popular open source relational database that is compatible with MySQL.

This activity provides you with a great opportunity to apply what you’ve learned and add filters to SQL queries:
- Filtered queries using the `WHERE` clause  
- Extracted data based on country and login success  
- Applied conditional operators (`=`, `!=`, `<`)  
- Verified filtered results and discussed their relevance

---

## Filter a SQL Query — Extract Targeted Records from a Database

This report was completed as part of the Google Cybersecurity Certificate. It documents how to use SQL filters to extract specific records from a database. These filters help security analysts isolate suspicious activity, monitor access attempts, and track device usage.

## My Contributions

- **Filter login attempts by country**
  - Used `WHERE country = 'Canada';` to isolate access attempts from Canada  
  - Analyzed frequency and distribution of Canadian logins

- **Filter by login success status**
  - Queried `WHERE success = 0;` to isolate failed attempts  
  - Flagged patterns and users with multiple failures

- **Combine filters**
  - Used `WHERE country = 'United States' AND success = 1;`  
  - Verified successful logins coming from U.S. IP addresses

- **Apply filters to device info**
  - Queried machines with email client as 'Thunderbird'  
  - Used: `WHERE email_client = 'Thunderbird';`

---

## Tools Used

- `SELECT` — retrieves specified fields  
- `WHERE` — filters records by condition  
- `AND`, `OR` — combine multiple filter conditions  
- `=` and `!=` — match or exclude values  

---

## Reflections

- SQL filters help narrow down suspicious access patterns. 
- Failed login queries assist in early incident detection.
- Country-based filtering adds contextual awareness to threats.
