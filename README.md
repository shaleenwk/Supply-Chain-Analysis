
# SCA_PROJECT

Lightweight dataset + SQL project for exploring and transforming SCA data.

## Repository contents

- [sca_excel_csv.csv](sca_excel_csv.csv) — source dataset exported as CSV.
- [sca_sql_project.sql](sca_sql_project.sql) — SQL schema, example queries, and transformations.
- [README.md](README.md) — this file.

## Overview

This repository contains a CSV dataset and an accompanying SQL script for loading, cleaning, and querying the data. It's intended as a simple starting point for data analysis, educational work, or quick prototyping with a local SQL engine.

## Getting started

No special dependencies are required to view the dataset. Choose one of the options below to work with the files.

- Quick preview: open `sca_excel_csv.csv` in Excel, LibreOffice Calc, or a text editor.

- Import into SQLite (example):

```bash
sqlite3 sca.db
.mode csv
.import sca_excel_csv.csv sca_table
```

- Run the supplied SQL script against the database you created or an existing database:

```bash
sqlite3 sca.db < sca_sql_project.sql
# or for PostgreSQL
psql -d your_db -f sca_sql_project.sql
```

## Usage

- Inspect and adapt `sca_sql_project.sql` to match your target database and desired transformations.
- Use the CSV as the raw input when experimenting with data-cleaning, aggregation, and reporting queries.

## Notes

- Column names and data types may require normalization before importing into strict SQL schemas.
- Back up your data before running destructive queries.

## Contributing

Contributions are welcome. Open an issue or submit a pull request with suggested improvements, tests, or additional documentation.

## License

No license is specified. Add a LICENSE file if you want to set explicit reuse terms (for example, MIT).

## Contact

For questions or help, add an issue in this repository or contact the project owner.
