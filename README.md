# 🏋️ Gym Management Database

A relational database project developed for a fictional gym management system.

The database was designed following relational modeling principles to manage students, employees, membership plans, workout routines, equipment and maintenance records.

---

## Features

- Student management
- Employee management
- Membership plans
- Contracts
- Workout routines
- Exercise catalog
- Equipment inventory
- Equipment maintenance tracking

---

## Technologies

- SQL
- Relational Database Modeling

---

## Database Structure

The project contains eight main entities:

- Employee
- Student
- Membership Plan
- Contract
- Exercise
- Workout Sheet
- Equipment
- Equipment Maintenance

Relationships are implemented using primary and foreign keys to ensure referential integrity.

---

## Database Model

```
Employee
    │
    ├────────── Contract ────────── Student
    │                 │
    │                 │
    │              Membership Plan
    │
    ├──────── Workout Sheet ─────── Exercise
    │
    └──────── Equipment Maintenance ─── Equipment
```

---

## Concepts Applied

- Relational database modeling
- Primary Keys
- Foreign Keys
- One-to-Many relationships
- Referential Integrity
- Data normalization

---

## Project Structure

```
Gym-Management-Database/
│
├── schema.sql
├── inserts.sql
├── queries.sql
├── README.md
└── images/
```

---

## Future Improvements

- Views
- Stored Procedures
- Triggers
- Index optimization
- Sample data generation
- Advanced analytical queries

---

## Academic Context

This project was developed as the final assignment for a Database course, applying relational modeling concepts and SQL to solve a real-world business scenario.

---

## License

MIT
