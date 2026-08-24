-- ======================================================================
-- 1. Database Overview
-- ======================================================================

-- Row counts for the main database tables
select 'shoe_models' as table_name,
count(*) as row_count
from shoe_models

union all

select 'shoe_lasts' as table_name,
count(*) as row_count
from shoe_lasts

union all

select 'shoe_model_classes' as table_name,
count(*) as row_count
from shoe_model_classes

union all

select 'shoe_construction_methods' as table_name,
count(*) as row_count
from shoe_construction_methods

union all

select 'materials' as table_name,
count(*) as row_count
from materials;

-- ======================================================================
-- 2. Shoe Last Queries
-- ======================================================================

-- Available sizes for a specific shoe last
select
    shoe_lasts.last_name,
    shoe_last_sizes.size_value
from shoe_last_sizes
join shoe_lasts
    on shoe_lasts.shoe_last_id = shoe_last_sizes.shoe_last_id
where shoe_lasts.last_name = 'Last E009'
order by shoe_last_sizes.size_value asc;

-- Shoe models associated with a specific shoe last
select
    shoe_models.model_code,
    shoe_lasts.last_code
from shoe_models
join shoe_lasts
    on shoe_models.shoe_last_id = shoe_lasts.shoe_last_id
where shoe_lasts.last_code = '5055-T1';

-- ======================================================================
-- 3. Shoe Model Queries
-- ======================================================================

-- Model classes for a specific shoe model
select
    shoe_models.model_code,
    shoe_model_classes.class_code
from shoe_model_classes
join shoe_models
    on shoe_models.shoe_model_id = shoe_model_classes.shoe_model_id
where shoe_models.model_code = '009-3-4';

-- Construction methods assigned to model classes
select
    shoe_model_classes.class_code,
    shoe_construction_methods.construction_method_code
from shoe_model_classes
join shoe_construction_methods
    on shoe_construction_methods.construction_method_id = shoe_model_classes.construction_method_id;

-- ======================================================================
-- 4. Material Queries
-- ======================================================================

-- Materials and usage roles for a model class
select
    shoe_model_classes.class_code,
    materials.material_name,
    material_usage_roles.material_role_name
from shoe_model_classes
join shoe_model_class_materials
    on shoe_model_classes.shoe_model_class_id = shoe_model_class_materials.shoe_model_class_id
join materials
    on materials.material_id = shoe_model_class_materials.material_id
join material_usage_roles
    on material_usage_roles.material_usage_role_id = shoe_model_class_materials.material_usage_role_id
where shoe_model_classes.class_code = 'A';

-- Attribute values for a specific material
select
    materials.material_name,
	material_attributes.material_attribute_name,
	case
        when material_attribute_values.value_text is not null
            then material_attribute_values.value_text
        when material_attribute_values.value_numeric is not null
            then material_attribute_values.value_numeric::text
        when material_attribute_values.value_boolean is not null
            then material_attribute_values.value_boolean::text
    end as attribute_value
from materials
join material_attribute_values
	on materials.material_id = material_attribute_values.material_id
join material_attributes
	on material_attributes.material_attribute_id = material_attribute_values.material_attribute_id
where materials.material_name = 'Natural Vegetable Tanned Leather 2.0 mm';

-- Materials in a specific material category
select
    material_categories.material_category_name,
    materials.material_name
from material_categories
join materials
    on materials.material_category_id = material_categories.material_category_id
where material_categories.material_category_name = 'Leather';

-- ======================================================================
-- 5. Production Overview
-- ======================================================================

-- Main production relationships across the database
select
    shoe_models.model_name,
	shoe_model_classes.class_code,
	shoe_construction_methods.construction_method_name,
	materials.material_name,
	material_usage_roles.material_role_name
from shoe_models
join shoe_model_classes
	on shoe_model_classes.shoe_model_id = shoe_models.shoe_model_id
join shoe_construction_methods
	on shoe_model_classes.construction_method_id = shoe_construction_methods.construction_method_id
join shoe_model_class_materials
	on shoe_model_class_materials.shoe_model_class_id = shoe_model_classes.shoe_model_class_id
join materials
	on shoe_model_class_materials.material_id = materials.material_id
join material_usage_roles
	on shoe_model_class_materials.material_usage_role_id = material_usage_roles.material_usage_role_id;
