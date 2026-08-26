# Database Deployment Guide

## Purpose

This document describes the procedure for deploying the project database from scratch and bringing it to the current version.

It defines the execution order of all SQL files required to create, update, populate, and verify the database.

---

## Deployment Sequence

Deploy the database in the following order:

1. Create an empty PostgreSQL database.
2. Execute all DDL files.
3. Execute all Schema Migrations in numerical order, if any exist.
4. Execute all Data Migrations in numerical order, if any exist.
5. Execute all DML files.
6. Execute the project demonstration and verification queries as needed.

This order is required because the current seed data is designed for the current database structure and depends on changes introduced by the existing schema and data migrations.

---

## Initial Schema

The initial schema defines the original database structure, including tables, relationships, constraints, and indexes.

Schema migrations must then be applied to bring this structure to the current project version before the current seed data is loaded.

---

## Schema Migrations

Schema migrations contain structural changes introduced after the initial schema was created.

They must always be executed in numerical order and remain part of the project history.

For a clean deployment, all required schema migrations must be applied before the current seed data is loaded.

---

## Data Migrations

Data migrations contain project data changes introduced after the initial database structure and seed design were created.

They must always be executed in numerical order and remain part of the project history.

For a clean deployment, data migrations required by the current seed data must be applied before the seed file is executed.

---

## Initial Data

The current seed data populates the database with the required reference data and baseline records.

It is designed for the current version of the database and therefore must be executed only after all required schema and data migrations have been applied.

---

## Verification

After all deployment steps have been completed, the database can be checked using the project's demonstration queries.

These queries provide an overview of the populated database and demonstrate that the main relationships and retrieval scenarios work against the deployed data.

---

## Current Deployment Files

Current SQL execution order for this project:

1. `database/ddl/01_reference_tables.sql`
2. `database/schema_migrations/001_update_shoe_models_classification_fields.sql`
3. `database/data_migrations/001_add_padding_material_category.sql`
4. `database/dml/01_seed_data.sql`
5. `database/queries/01_demo_queries.sql`
