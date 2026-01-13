# Rails Day 2 – Database & Scaffolding

This repository contains **Day 2 learning work** for Ruby on Rails, focused on **database setup, migrations, scaffolding, and CRUD operations** using PostgreSQL.

---

## 📌 Topics Covered

### Database Clients
- **DBeaver (GUI Tool)**
  - Supports PostgreSQL, MySQL, Oracle, SQL Server, NoSQL
  - Useful for ER diagrams and visual queries
  - Requires database server to be running

- **psql (Command Line)**
  - PostgreSQL only
  - Lightweight and fast
  - Commonly used for terminal-based database work

---

## Rails Project Setup

### Create Rails App with PostgreSQL
```bash
rails new my_application -d postgresql

### Database Initialization
rails db:create
rails db:migrate
db:create → Creates the database
db:migrate → Runs migrations and creates tables

### Scaffolding (CRUD)
Generate Scaffold
rails generate scaffold Customer name:string email:string age:integer
