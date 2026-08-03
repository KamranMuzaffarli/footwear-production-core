# Database Deployment Guide

## Purpose

This document describes the procedure for deploying the project database from scratch and bringing it to the current version.

It defines the execution order of all SQL files required to create, populate, update, and verify the database.

---

## Deployment Sequence

Deploy the database in the following order:

1. Create an empty PostgreSQL database.
2. Execute all DDL files.
3. Execute all DML files.
4. Execute all Data Migrations in numerical order.
5. Execute all Schema Migrations in numerical order, if any exist.
6. Execute the verification queries.

---

## Initial Schema

The initial schema defines the database structure, including tables, relationships, constraints, and indexes.

---

## Initial Data

The initial data populates the database with the required reference data and other baseline records.

---

## Data Migrations

Data migrations contain changes to the project data introduced after the initial seed.

They must always be executed in numerical order and remain part of the project history.

---

## Schema Migrations

Schema migrations contain changes to the database structure introduced after the initial schema was created.

They must always be executed in numerical order and remain part of the project history.

---

## Verification

After all deployment steps have been completed, the database should be verified using the project's validation queries.

Successful verification confirms that the deployment has completed correctly.

## Current Deployment Files

Current SQL execution order for this project:

1. `database/ddl/01_reference_tables.sql`
2. `database/dml/01_seed_data.sql`
3. `database/data_migrations/001_add_padding_material_category.sql`
4. `database/schema_migrations/001_update_shoe_models_classification_fields.sql`
