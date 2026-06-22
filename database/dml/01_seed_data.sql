-- ======================================================================
-- Core Reference Data
-- ======================================================================

insert into shoe_construction_methods (
    construction_method_code,
    construction_method_name,
    difficulty_level,
    description,
    is_active
)
values
    (
        'cemented',
        'Cemented Construction',
        'medium',
        'A footwear construction method where the outsole is attached to the upper using adhesive bonding.',
        true
    ),
    (
        'stitched',
        'Stitched Construction',
        'medium',
        'A footwear construction method where components are joined using stitching as part of the structural assembly.',
        true
    ),
    (
        'welted',
        'Welted Construction',
        'high',
        'A footwear construction method where the upper, insole, welt, and outsole are connected through a welt-based structure.',
        true
    ),
    (
        'strobel',
        'Strobel Construction',
        'medium',
        'A footwear construction method where the upper is stitched to a strobel insole before the sole is attached.',
        true
    ),
    (
        'direct_injection',
        'Direct Injection Construction',
        'high',
        'A footwear construction method where the sole material is injected directly onto the assembled upper.',
        true
    );

insert into material_categories (
    material_category_code,
    material_category_name,
    description,
    is_active
)
values
    (
        'leather',
        'Leather',
        'Natural and synthetic leather materials used in footwear production.',
        true
    ),
    (
        'suede',
        'Suede',
        'Suede materials used for uppers, decorative parts, and other footwear components.',
        true
    ),
    (
        'textile',
        'Textile',
        'Textile materials used in footwear production.',
        true
    ),
    (
        'lining_material',
        'Lining Material',
        'Materials used for the inner lining of footwear.',
        true
    ),
    (
        'thread',
        'Thread',
        'Threads used for stitching footwear components.',
        true
    ),
    (
        'adhesive',
        'Adhesive',
        'Adhesive materials used for bonding footwear components.',
        true
    ),
    (
        'insole_material',
        'Insole Material',
        'Materials used for insoles and internal footbed components.',
        true
    ),
    (
        'outsole_material',
        'Outsole Material',
        'Materials used for outsoles and bottom footwear components.',
        true
    ),
    (
        'reinforcement_material',
        'Reinforcement Material',
        'Materials used to reinforce structural areas of footwear such as toe and heel sections.',
        true
    ),
    (
        'hardware',
        'Hardware',
        'Metal and plastic hardware components used in footwear production.',
        true
    );

insert into material_attributes (
    material_attribute_code,
    material_attribute_name,
    value_type,
    unit_of_measure,
    description,
    is_active
)
values
    (
        'color',
        'Color',
        'text',
        null,
        'Material color.',
        true
    ),
    (
        'thickness',
        'Thickness',
        'numeric',
        'mm',
        'Material thickness.',
        true
    ),
    (
        'grade',
        'Grade',
        'text',
        null,
        'Material quality grade or classification.',
        true
    ),
    (
        'finish',
        'Finish',
        'text',
        null,
        'Surface finish of the material.',
        true
    ),
    (
        'material_type',
        'Material Type',
        'text',
        null,
        'Specific material type classification.',
        true
    ),
    (
        'composition',
        'Composition',
        'text',
        null,
        'Material composition or content.',
        true
    ),
    (
        'density',
        'Density',
        'numeric',
        'g/cm3',
        'Material density.',
        true
    ),
    (
        'hardness',
        'Hardness',
        'numeric',
        'shore_a',
        'Material hardness rating.',
        true
    ),
    (
        'thread_number',
        'Thread Number',
        'text',
        null,
        'Thread size or number designation.',
        true
    ),
    (
        'adhesive_base',
        'Adhesive Base',
        'text',
        null,
        'Base type of adhesive.',
        true
    ),
    (
        'drying_time',
        'Drying Time',
        'numeric',
        'min',
        'Required drying time.',
        true
    ),
    (
        'water_resistance',
        'Water Resistance',
        'boolean',
        null,
        'Indicates whether the material is water resistant.',
        true
    ),
    (
        'vapor_permeability',
        'Vapor Permeability',
        'numeric',
        'mg/cm2',
        'Material vapor permeability.',
        true
    ),
    (
        'supplier',
        'Supplier',
        'text',
        null,
        'Material supplier.',
        true
    ),
    (
        'country_of_origin',
        'Country of Origin',
        'text',
        null,
        'Country where the material was produced.',
        true
    );

insert into material_usage_roles (
    material_role_code,
    material_role_name,
    description,
    is_active
)
values
    (
        'upper',
        'Upper',
        'Material used for the upper part of footwear.',
        true
    ),
    (
        'lining',
        'Lining',
        'Material used for the inner lining of footwear.',
        true
    ),
    (
        'insole',
        'Insole',
        'Material used for insoles and footbed components.',
        true
    ),
    (
        'outsole',
        'Outsole',
        'Material used for outsoles and bottom components.',
        true
    ),
    (
        'reinforcement',
        'Reinforcement',
        'Material used for structural reinforcement such as toe and heel support.',
        true
    ),
    (
        'thread',
        'Thread',
        'Thread used for stitching footwear components.',
        true
    ),
    (
        'adhesive',
        'Adhesive',
        'Adhesive used for bonding footwear components.',
        true
    ),
    (
        'hardware',
        'Hardware',
        'Hardware components such as eyelets, hooks, and decorative fittings.',
        true
    ),
    (
        'decorative',
        'Decorative',
        'Material used primarily for decorative purposes.',
        true
    );

-- ======================================================================
-- Shoe Last Master Data
-- ======================================================================

Сделать коммит после заполнения раздела

✓

shoe_lasts
shoe_last_sizes

-- ======================================================================
-- Material Master Data
-- ======================================================================

Сделать коммит после заполнения раздела

✓

materials
material_attribute_values

-- ======================================================================
-- Shoe Model Master Data
-- ======================================================================

Сделать коммит после заполнения раздела

✓

shoe_models
shoe_model_classes

-- ======================================================================
-- Production Composition Data
-- ======================================================================

Сделать коммит после заполнения раздела

✓

shoe_model_class_materials
