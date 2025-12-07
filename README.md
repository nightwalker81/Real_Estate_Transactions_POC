# 🏡 Project 02 — Real Estate Transactions POC (Laplace Immo)

This project is part of my Data Engineer training and simulates a real mission inside **Laplace Immo**, a national network of real estate agencies.  
The company wants to leverage data to gain competitive advantage by analyzing **property transaction prices in France**.

The goal of this project is to build a **Proof of Concept (POC)** demonstrating the feasibility of:

- collecting and structuring national real estate transaction data,  
- designing a normalized relational database,  
- analyzing the housing market with SQL queries,  
- documenting the dataset through a complete **data dictionary**,  
- and presenting results to decision-makers through a slide deck.

---

## 📘 Project Context

Laplace Immo wants to understand:

- the evolution of the price per square meter in France,  
- which regions or departments have the most dynamic market,  
- and global trends in real estate transactions.

To achieve this, the company requests a first functional version (POC) of a **structured database** built from open real estate transaction data.

The project is divided into **3 phases**, leading to two main deliverables:

### ✔ Deliverable 1 — **Data Dictionary (Spreadsheet)**  
Includes field definitions, formats, constraints, and descriptions.

### ✔ Deliverable 2 — **Presentation (PowerPoint / Google Slides)**  
Contains:
- project context,  
- data transformation steps,  
- an extract of the data dictionary,  
- the normalized relational schema,  
- screenshot of the database with populated tables,  
- SQL queries answering business needs,  
- the results of these queries.

---

## 🛠 Tools & Technologies Used

- **SQL (PostgreSQL recommended)**  
- **Relational Modeling (ERD / UML)**  
- **Spreadsheet tools** for the data dictionary  
- **PowerPoint / Google Slides** for the presentation  
- **Data transformation techniques**  
- **Normalization (1NF → 3NF)**  

---

## 📂 Repository Structure

```
project-02-laplace-immo-real-estate/
│
├── project_files/
│   └── raw/                  # Raw transaction data and instructions
│
├── sql/
│   └── queries.sql           # Queries answering business needs
│
├── diagrams/
│   └── relational_schema.draw.io  # Normalized ER diagram
│
├── db_tables/
│   ├── data_dictionary.xlsx  # Completed data dictionary
│   └── tables.csvs           # All tables of the database
│
└── README.md
```

---

## 🧱 Database Modeling

The relational schema was designed by:

1. Analyzing the structure of real estate transactions  
2. Identifying entities (e.g., property, transaction, location)  
3. Defining relationships and cardinalities  
4. Applying **normalization** to avoid redundancy and ensure consistency  
5. Creating the SQL schema with **constraints**:
   - Primary keys  
   - Foreign keys  
   - Normalized attributes  
   - Adequate data types  

The final database supports clean querying and scalable enrichment.

---

## 🔎 SQL Queries Answering Business Needs

The agency requested insights such as:

- What is the **average price per square meter** per region?  
- Which **departments** show the highest number of transactions?  
- What is the **median property price** per city?  
- Which areas show the fastest year-over-year price growth?  

These queries were implemented in `queries.sql` and demonstrated in the final presentation.

---

## 🧾 Deliverables Summary

### ✔ **Data Dictionary**  
Includes definitions for:
- each column,  
- allowable values,  
- constraints,  
- source details,  
- transformations applied.

### ✔ **Presentation File**
Contains:
- Context & objectives  
- Data cleaning & transformation pipeline  
- Normalized data model  
- Screenshots of the database with loaded tables  
- SQL queries + results  

---

## ▶️ How to Reproduce the Project

1. Clone the repository  
2. Create a PostgreSQL database  
3. Consult the DB schema in the `diagrams/` folder  
4. Insert the tables from `db_tables/`  
5. Run queries from `sql/queries.sql` to reproduce insights  

---
