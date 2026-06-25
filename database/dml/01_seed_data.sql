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

insert into shoe_lasts (
    last_code,
    last_name,
    last_type,
    gender_category,
    size_system,
    base_size,
    toe_shape,
    description,
    is_active
)
values
    (
        '302-T1',
        'Last 302-T1',
        'casual',
        'men',
        'EU',
        42,
        'round',
        'Men''s casual last with round toe shape, suitable for moccasin-style footwear.',
        true
    ),
    (
        '0537',
        'Last 0537',
        'casual',
        'men',
        'EU',
        42,
        'almond',
        'Men''s casual last with almond toe shape.',
        true
    ),
    (
        '1034',
        'Last 1034',
        'casual',
        'men',
        'EU',
        42,
        'almond',
        'Men''s casual last with almond toe shape.',
        true
    ),
    (
        '1191-E1',
        'Last 1191-E1',
        'sport',
        'men',
        'EU',
        42,
        'round',
        'Men''s sport last with round toe shape.',
        true
    ),
    (
        '3816',
        'Last 3816',
        'classic',
        'men',
        'EU',
        42,
        'almond',
        'Men''s classic last with almond toe shape.',
        true
    ),
    (
        '5055-T1',
        'Last 5055-T1',
        'sport',
        'men',
        'EU',
        42,
        'semi_round',
        'Men''s sport last with semi-round toe shape.',
        true
    ),
    (
        'E009',
        'Last E009',
        'boot',
        'men',
        'EU',
        42,
        'round',
        'Men''s boot last with round toe shape.',
        true
    ),
    (
        'E011',
        'Last E011',
        'boot',
        'kids',
        'EU',
        34,
        'round',
        'Kids'' boot last with round toe shape.',
        true
    ),
    (
        '5161397',
        'Kreps',
        'comfort',
        'women',
        'EU',
        38,
        'round',
        'Women''s comfort last with round toe shape.',
        true
    );

insert into shoe_last_sizes (
    shoe_last_id,
    size_value,
    heel_height_mm,
    instep_height_mm,
    ball_girth_mm,
    waist_girth_mm,
    last_length_mm,
    is_active
)
select
    sl.shoe_last_id,
    v.size_value,
    null,
    null,
    null,
    null,
    null,
    true
from (
    values
        ('302-T1', 39),
        ('302-T1', 40),
        ('302-T1', 41),
        ('302-T1', 42),
        ('302-T1', 43),
        ('302-T1', 44),

        ('0537', 40),
        ('0537', 41),
        ('0537', 42),
        ('0537', 43),
        ('0537', 44),

        ('1034', 37),
        ('1034', 38),
        ('1034', 39),
        ('1034', 40),
        ('1034', 41),
        ('1034', 42),
        ('1034', 43),
        ('1034', 44),

        ('1191-E1', 36),
        ('1191-E1', 37),
        ('1191-E1', 38),
        ('1191-E1', 39),
        ('1191-E1', 40),
        ('1191-E1', 41),
        ('1191-E1', 42),
        ('1191-E1', 43),
        ('1191-E1', 44),

        ('3816', 39),
        ('3816', 40),
        ('3816', 41),
        ('3816', 42),
        ('3816', 43),
        ('3816', 44),

        ('5055-T1', 39),
        ('5055-T1', 40),
        ('5055-T1', 41),
        ('5055-T1', 42),
        ('5055-T1', 43),
        ('5055-T1', 44),

        ('E009', 39),
        ('E009', 40),
        ('E009', 41),
        ('E009', 42),
        ('E009', 43),
        ('E009', 44),

        ('E011', 32),
        ('E011', 33),
        ('E011', 34),
        ('E011', 35),
        ('E011', 36),

        ('5161397', 36),
        ('5161397', 37),
        ('5161397', 38),
        ('5161397', 39),
        ('5161397', 40)
) as v(last_code, size_value)
join shoe_lasts sl
    on sl.last_code = v.last_code;

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
