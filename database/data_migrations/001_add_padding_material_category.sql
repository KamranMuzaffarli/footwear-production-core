-- Migration: Add padding material category
-- Purpose: Introduce a new material category for padding and cushioning materials.

insert into material_categories (
    material_category_code,
    material_category_name,
    description,
    is_active
)
values (
    'padding_material',
    'Padding Material',
    'Materials used for padding, cushioning, and soft filling in footwear components.',
    true
);
