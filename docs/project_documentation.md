# Project — FootwearProductionCore

## 1. Project Purpose

`FootwearProductionCore` is a PostgreSQL database project designed to model the core production logic of a footwear manufacturing process.

The project focuses on:

- footwear models;
- construction-related model data;
- production batches;
- finished products;
- serial number traceability.

This project is not intended to be a sales system, CRM, warehouse system, or purchasing system in version 1.0.

---

## 2. Database Scope

The database is divided into three main layers:

1. Reference Data
2. Model Construction Data
3. Production Data

---

## 3. Reference Data Layer

The reference layer contains stable entities used by the production database.

Initial reference tables:

| Table | Purpose |
|---|---|
| `lasts` | Stores footwear lasts |
| `model_classes` | Stores construction classes of footwear models |
| `soles` | Stores sole types used by models |
| `sizes` | Stores footwear sizes |
| `batch_statuses` | Stores production batch statuses |
| `quality_statuses` | Stores finished product quality statuses |

---

## 4. Model Construction Layer

The construction layer describes footwear models and their technical structure.

Main table:

| Table | Purpose |
|---|---|
| `models` | Stores footwear models |

Each model references:

- one last;
- one construction class;
- one main sole.

This allows each model to be connected to its construction foundation without duplicating data.

---

## 5. Production Layer

The production layer describes the manufacturing process and the produced items.

Main tables:

| Table | Purpose |
|---|---|
| `production_batches` | Stores production batches |
| `finished_products` | Stores finished produced pairs |

Each production batch belongs to one model.

Each finished product belongs to one production batch.

Each finished product has a serial number used for traceability.

---

## 6. Core Relationship Logic

The main relationship logic is:

1. One last can be used by many models.
2. One model class can be used by many models.
3. One sole can be used by many models.
4. One model belongs to one last, one model class, and one sole.
5. One production batch belongs to one model.
6. One finished product belongs to one production batch.
7. One serial number identifies one finished product.
8. The serial number does not store all product information directly.
9. The serial number points to a finished product, and the related data is resolved through database relationships.

Through the serial number, the system should be able to identify:

- model;
- model class;
- last;
- sole;
- size;
- production date;
- warranty information.

---

## 7. Version 1.0 Exclusions

The following modules are intentionally excluded from version 1.0:

- sales;
- customers;
- customer orders;
- warehouse management;
- purchasing;
- separate material accounting;
- complex cost calculation.

Materials are temporarily described at the model class level.

These modules may be added in later versions if the project scope expands.

---

## 8. Future Worker Module

The worker and payroll logic is planned as a future module after the core production database is completed.

Possible future entities:

- workers;
- production assignments;
- produced quantity;
- model-based rates;
- monthly payment calculation.

This module is intentionally separated from the version 1.0 core schema.

---

## 9. Initial Design Workflow

The database design process follows these steps:

1. Define all version 1.0 tables.
2. Define the purpose of each table.
3. Define primary keys.
4. Define foreign keys.
5. Validate one-to-many relationships.
6. Create the initial ERD.
7. Create SQL DDL files.
8. Add test data.
9. Write verification queries.
10. Prepare repository documentation.

---

## 10. Version 1.0 Tables

Initial tables:

1. `lasts`
2. `model_classes`
3. `soles`
4. `sizes`
5. `batch_statuses`
6. `quality_statuses`
7. `models`
8. `production_batches`
9. `finished_products`

---

## 11. Main Production Chain

The main database chain is:

```text
last / model class / sole
        ↓
      model
        ↓
 production batch
        ↓
 finished product
        ↓
 serial number

 The goal is to build a connected production system rather than a disconnected set of tables.

12. Validation Questions

The database should be able to answer the following questions:

Which last is used by a specific model?
Which construction class does a model belong to?
Which sole is used by a model?
Which production batches were created?
How many pairs were produced in a batch?
Which finished products belong to a batch?
What serial number belongs to a finished product?
What product data can be retrieved by serial number?
What is the warranty information for a product?
What is the size of a specific finished product?
13. Next Design Step

The next step is to create the draft ERD and define the first version of table relationships before writing SQL DDL files.