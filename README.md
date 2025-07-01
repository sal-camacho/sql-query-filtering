# SQL Query Filtering

This project demonstrates hands-on experience filtering data in a MariaDB database using SQL. It emphasizes the use of `SELECT`, `FROM`, `WHERE`, and `LIKE` clauses to refine queries—critical skills for information security and diagnostics.

## 🧰 Environment
- **Database**: MariaDB 10.3 (Debian)
- **Platform**: Linux CLI via MariaDB Monitor
- **Objective**: Efficiently retrieve targeted security-related data through query filtering

## 📄 Example Query
```sql
SELECT device_id, operating_system
FROM machines
WHERE operating_system = 'OS 1';
```
```text
sql-query-filtering/
├── basic-filters.sql     # Comprehensive collection of filtered SQL queries from the lab  
└── README.md             # Overview and usage examples for the project
