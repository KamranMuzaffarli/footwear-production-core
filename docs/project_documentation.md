# FootwearProductionCore

## Table of Contents

- [Project Purpose](#project-purpose)
- [Architectural Principles](#architectural-principles)
- [Project Scope](#project-scope)
- [Database Structure](#database-structure)
- [Table Creation Order](#table-creation-order)
- [Shoe Lasts](#shoe-lasts)
- [Construction Methods](#construction-methods)
- [Materials](#materials)
- [Shoe Models](#shoe-models)
- [Core Relationships](#core-relationships)
- [Material Usage Logic](#material-usage-logic)
- [Core Architectural Model](#core-architectural-model)
- [Adding a New Material](#adding-a-new-material)
- [Supported Query Scenarios](#supported-query-scenarios)
- [Core Production Model](#core-production-model)
- [Potential System Extensions](#potential-system-extensions)
- [Architectural Considerations](#architectural-considerations)

---

## Project Purpose

FootwearProductionCore is a PostgreSQL database project designed to model the core production domain of a footwear manufacturing system.

The primary goal of the project is to provide a scalable, extensible, and logically consistent data structure for representing shoe lasts, footwear models, construction methods, materials, and production standards without requiring frequent structural changes to the database.

The system is designed so that most future growth can be handled by adding data and relationships rather than repeatedly redesigning the schema.

---

## Architectural Principles

The project is based on the following principles:

- each production entity is stored in a dedicated table;
- data duplication is minimized;
- new materials are introduced as data rather than through new tables;
- new material properties are introduced through data rather than schema changes;
- new material usage roles are introduced through data rather than schema changes;
- the database structure remains stable as the range of materials and footwear models grows;
- relationships between entities are explicitly defined and enforced through foreign keys.

---

## Project Scope

The current project covers the following areas of footwear production:

- shoe lasts;
- shoe last sizes;
- footwear construction methods;
- material categories;
- material attributes;
- material usage roles;
- production materials;
- footwear models;
- model classes;
- material composition of model classes.

---

## Database Structure

The database is organized into four main functional areas.

### Shoe Lasts

#### `shoe_lasts`

#### `shoe_last_sizes`

### Construction Methods

#### `shoe_construction_methods`

### Materials

#### `material_categories`

#### `material_attributes`

#### `material_usage_roles`

#### `materials`

#### `material_attribute_values`

### Shoe Models

#### `shoe_models`

#### `shoe_model_classes`

#### `shoe_model_class_materials`

---

## Table Creation Order

The tables are created in the following dependency-safe order:

1. `shoe_lasts`
2. `shoe_last_sizes`
3. `shoe_construction_methods`
4. `material_categories`
5. `material_attributes`
6. `material_usage_roles`
7. `materials`
8. `material_attribute_values`
9. `shoe_models`
10. `shoe_model_classes`
11. `shoe_model_class_materials`

This order ensures that referenced entities exist before dependent foreign-key relationships are created.

---

## Shoe Lasts

### `shoe_lasts`

Stores shoe lasts used by footwear models.

A shoe last is an independent production entity that defines the shape, fit, and basic geometry of footwear.

The table stores:

- last code;
- last name;
- last type;
- gender category;
- sizing system;
- toe shape;
- base size;
- description;
- system metadata.

A single shoe last can be used by multiple footwear models.

### `shoe_last_sizes`

Stores the available sizes and dimensional parameters of a specific shoe last.

A shoe last can have multiple size records. Each size belongs to exactly one shoe last and cannot exist independently of it.

The table stores:

- last size;
- reference to the shoe last;
- length;
- instep height;
- ball girth;
- waist girth;
- heel height;
- system metadata.

---

## Construction Methods

### `shoe_construction_methods`

Reference table containing footwear construction methods.

A construction method represents a recognized method of footwear construction or assembly. It is assigned to a model class as one element of its production standard.

The table stores:

- construction method code;
- construction method name;
- description;
- complexity level;
- active status;
- system metadata.

Examples include:

- `cemented`
- `stitched`
- `welted`
- `strobel`
- `direct_injection`

A single construction method can be used by multiple model classes.

---

## Materials

### `material_categories`

Reference table containing material categories.

A category defines the general type of a production material.

The table stores:

- category code;
- category name;
- category description;
- active status;
- system metadata.

Examples include:

- `leather`
- `suede`
- `textile`
- `lining_material`
- `thread`
- `adhesive`
- `insole_material`
- `outsole_material`
- `reinforcement_material`
- `hardware`
- `padding_material`

### `material_attributes`

Reference table containing definitions of material properties.

The table stores attribute definitions rather than the property values of individual materials.

The table stores:

- attribute code;
- attribute name;
- value type;
- unit of measurement;
- description;
- active status;
- system metadata.

Examples include:

- `color`
- `thickness`
- `grade`
- `finish`
- `material_type`
- `composition`
- `density`
- `hardness`
- `thread_number`
- `adhesive_base`
- `drying_time`
- `water_resistance`
- `vapor_permeability`
- `supplier`
- `country_of_origin`

### `material_usage_roles`

Reference table containing the roles that materials can perform within footwear production.

The same material can serve different functions in different footwear models.

The table stores:

- role code;
- role name;
- description;
- active status;
- system metadata.

Examples include:

- `upper`
- `lining`
- `insole`
- `outsole`
- `reinforcement`
- `thread`
- `adhesive`
- `hardware`
- `decorative`

### `materials`

Central catalog of production materials.

Each row represents a specific production material item.

The table stores:

- material code;
- material name;
- material category;
- base description;
- unit of measure;
- active status;
- system metadata.

Examples include:

- `black_chrome_tanned_leather_1_4`
- `natural_vegetable_tanned_leather_2_0`
- `black_suede_1_2`
- `polyurethane_adhesive`
- `black_waxed_thread_6`
- `thermoplastic_reinforcement_sheet_0_6`
- `dense_foam_material_4_mm`

If a material differs by a production-relevant parameter, it is represented as a separate catalog entry.

### `material_attribute_values`

Stores actual attribute values assigned to individual materials.

A material can have multiple properties, with each property defined by an entry in `material_attributes`.

The table stores:

- material reference;
- attribute reference;
- attribute value;
- system metadata.

For example, `black_chrome_tanned_leather_1_4` can have the following properties:

- `color = black`
- `thickness = 1.4`
- `material_type = chrome_tanned_leather`
- `composition = natural_leather`
- `finish = smooth`
- `water_resistance = false`

---

## Shoe Models

### `shoe_models`

Stores footwear models.

A footwear model is an independent production entity. Each model is associated with one specific shoe last.

The table stores:

- model code;
- model name;
- shoe last reference;
- footwear category;
- footwear type;
- target group;
- description;
- active status;
- system metadata.

### `shoe_model_classes`

Stores model classes representing production standards for specific variants of a footwear model.

A model can have multiple classes. Each class defines a particular production configuration for that model.

A class can define:

- its construction method;
- its material composition;
- its production standard.

The table stores:

- footwear model reference;
- class code;
- construction method;
- quality level;
- warranty period;
- standard description;
- active status;
- system metadata.

### `shoe_model_class_materials`

Stores the material composition of a model class.

The table connects a model class with the materials it uses and the roles those materials perform.

The table stores:

- model class reference;
- material reference;
- material usage role;
- consumption rate;
- consumption unit;
- required-use flag;
- description;
- active status;
- system metadata.

Each row defines which material is used by a specific model class and what function that material performs.

---

## Core Relationships

### Shoe Lasts

- one shoe last can have multiple sizes;
- one shoe last can be used by multiple footwear models.

### Construction Methods

- one construction method can be used by multiple model classes.

### Materials

- one material category can contain multiple materials;
- one material can have multiple attribute values;
- one material attribute can be assigned to multiple materials.

### Shoe Models

- each footwear model belongs to one shoe last;
- one footwear model can have multiple model classes;
- one model class can use multiple materials;
- one material can be used by multiple model classes.

---

## Material Usage Logic

A material is an independent production entity.

A material category defines the general type of material.

A material attribute defines a property that can be assigned to a material.

An attribute value defines the actual value of a particular property for a particular material.

A material usage role defines the function performed by a material within a footwear model.

A model class defines the set of materials required for a specific production variant of a footwear model.

---

## Core Architectural Model

The core domain model follows these principles:

- a shoe last is an independent production entity;
- a footwear model is an independent production entity associated with a shoe last;
- a model class defines a production standard for a particular model variant;
- a construction method defines how footwear is constructed;
- a material is an independent production item;
- a material category defines the material type;
- a material attribute defines a material property;
- an attribute value defines the value of that property for a specific material;
- a material usage role defines the purpose of a material within a model class;
- material composition defines the materials required to produce a particular model class.

---

## Adding a New Material

When a new material is introduced, the following process is used:

1. Check whether the required material category already exists.
2. Create a new category if necessary.
3. Check whether the required material attributes already exist.
4. Create new attribute definitions if necessary.
5. Add the material to the `materials` catalog.
6. Add the material's attribute values.
7. If the material is used by a footwear model, associate it with the appropriate model class and usage role.

---

## Supported Query Scenarios

The database is designed to support queries such as:

- which sizes are available for a particular shoe last;
- which shoe last is used by a particular footwear model;
- which footwear models use a particular shoe last;
- which construction methods exist in the system;
- which construction method is used by a particular model class;
- which model classes exist for a particular footwear model;
- which materials are used by a particular model class;
- which role each material performs within a model class;
- which properties are assigned to a particular material;
- which materials belong to a particular category;
- which materials use a particular attribute;
- which production standards exist for a particular footwear model.

---

## Core Production Model

The principal production hierarchy is:

```text
Shoe Last
    ↓
Footwear Model
    ↓
Model Class / Production Standard
    ├── Construction Method
    └── Material Composition
            ↓
        Materials
            ↓
    Material Attributes
```

A model class is the central production configuration for a footwear model. It references a construction method and independently defines its required material composition. Materials in that composition can carry their own attribute values and are assigned explicit usage roles.

This structure provides a unified production model in which each entity has a clearly defined responsibility and the system can evolve primarily through data and relationships rather than repeated schema redesign.

---

## Potential System Extensions

The following modules are outside the current implementation scope but can be added as future extensions of the production core.

### Localization and Translation

A localization module could provide multilingual support through:

- a language reference catalog;
- translations of reference data;
- translations of terminology and descriptions;
- multilingual interfaces and reporting.

The current project uses English as the primary language for stored domain data.

### Personnel Management

A personnel module could extend the system with:

- employee records;
- positions and departments;
- personnel information;
- payroll-related data;
- relationships between employees and production processes.

### Inventory Management

An inventory module could extend the material model with:

- warehouses and storage zones;
- material stock balances;
- material receipts;
- material consumption and write-offs;
- transfers between storage locations.

### Sole Management

In the current implementation, soles are represented through the general material catalog and material usage roles, for example as a material assigned the `outsole` role. This is sufficient for the current production core.

If more detailed sole-specific modeling becomes necessary, a dedicated module could introduce:

- a sole catalog;
- sole size ranges;
- compatibility with shoe lasts;
- relationships with footwear models or model classes;
- sole material;
- sole type;
- heel or platform height;
- tread pattern;
- compatibility with construction methods.

Such a module could be added through new tables and relationships to existing entities without redesigning the current production core.

---

## Architectural Considerations

The current architecture intentionally keeps several areas simple. The following points represent potential refinements rather than missing requirements of the current implementation.

### Production Standard Terminology

Production standards are currently represented by `shoe_model_classes`.

From a domain-modeling perspective, the entity could be named more explicitly in a future revision. A possible refinement would be to:

- rename `shoe_model_classes` to `production_standards`;
- use the term *production standard* throughout the architecture instead of *model class*;
- retain letter-based identifiers such as A, B, C, and T as internal production-standard codes;
- preserve the existing relationships and behavior.

This would primarily be a terminology refinement rather than a structural redesign of the production core.

### Material Variants

In the current implementation, each row in `materials` represents a distinct production material item.

A future extension could separate base material definitions from their concrete production variants. This could support:

- a dedicated material-variant entity;
- separation of base materials from production-specific variants;
- multiple colors, thicknesses, and finishes for the same base material;
- supplier- and batch-specific variants;
- reduced duplication as the material catalog grows.

This refinement could be introduced as an extension of the existing material model while preserving compatibility with the current core entities and relationships.
