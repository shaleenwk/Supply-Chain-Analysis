# SCA_PROJECT

Streamlined dataset + SQL for exploring and transforming SCA data.

## Repository contents

- `sca_excel_csv.csv` — source dataset exported as CSV
- `sca_sql_project.sql` — SQL schema, example queries, and transformations
- `README.md` — this file

## Overview

This repository contains a CSV dataset and an accompanying SQL script for loading, cleaning, and querying the data. It's intended as a simple starting point for data analysis, educational work, or quick prototyping with a local SQL engine.

## Quick start
- Open the CSV in Excel or a text editor to preview.
- To use with SQLite:
  ```bash
  sqlite3 sca.db
  .mode csv
  .import sca_excel_csv.csv sca_table
  sqlite3 sca.db < sca_sql_project.sql
  ```


