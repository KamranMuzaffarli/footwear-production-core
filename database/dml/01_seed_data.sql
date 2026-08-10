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

-- ----------------------------------------------------------------------

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

-- ----------------------------------------------------------------------

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

-- ----------------------------------------------------------------------

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

-- ----------------------------------------------------------------------

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

insert into materials (
    material_category_id,
    material_code,
    material_name,
    unit_of_measure,
    description,
    is_active
)
select
    mc.material_category_id,
    v.material_code,
    v.material_name,
    v.unit_of_measure,
    v.description,
    true
from (
    values
        ('leather', 'black_chrome_tanned_leather_1_4', 'Black Chrome Tanned Leather 1.4 mm', 'sq_dm', 'Black chrome tanned leather used for footwear uppers and other leather components.'),
        ('leather', 'natural_vegetable_tanned_leather_2_0', 'Natural Vegetable Tanned Leather 2.0 mm', 'sq_dm', 'Natural vegetable tanned leather used for structured leather footwear components.'),
        ('leather', 'brown_oil_tanned_leather_1_8', 'Brown Oil Tanned Leather 1.8 mm', 'sq_dm', 'Brown oil tanned leather used for durable and flexible footwear components.'),
        ('suede', 'black_suede_1_2', 'Black Suede 1.2 mm', 'sq_dm', 'Black suede leather material used for uppers and decorative footwear parts.'),
        ('leather', 'brown_nubuck_1_4', 'Brown Nubuck 1.4 mm', 'sq_dm', 'Brown nubuck leather material used for footwear uppers.'),
        ('suede', 'black_synthetic_suede', 'Black Synthetic Suede', 'meter', 'Black synthetic suede material used for upper or decorative footwear parts.'),
        ('leather', 'black_synthetic_leather_1_0', 'Black Synthetic Leather 1.0 mm', 'meter', 'Black synthetic leather material used as an artificial leather alternative.'),
        ('textile', 'black_textile_upper_fabric', 'Black Textile Upper Fabric', 'meter', 'Black textile fabric used for footwear uppers.'),

        ('lining_material', 'beige_sheep_lining_leather_0_8', 'Beige Sheep Lining Leather 0.8 mm', 'sq_dm', 'Beige sheep leather used for footwear lining.'),
        ('lining_material', 'natural_goat_lining_leather_0_8', 'Natural Goat Lining Leather 0.8 mm', 'sq_dm', 'Natural goat leather used for footwear lining.'),
        ('lining_material', 'black_dense_textile_lining', 'Black Dense Textile Lining', 'meter', 'Black dense textile material used as footwear lining.'),
        ('lining_material', 'beige_textile_lining', 'Beige Textile Lining', 'meter', 'Beige textile material used for inner footwear lining.'),
        ('lining_material', 'natural_fur_lining', 'Natural Fur Lining', 'meter', 'Natural fur material used for warm footwear lining.'),
        ('lining_material', 'black_artificial_fur_lining', 'Black Artificial Fur Lining', 'meter', 'Black artificial fur material used for warm footwear lining.'),

        ('reinforcement_material', 'solvent_activated_reinforcement_sheet_1_0', 'Solvent-Activated Reinforcement Sheet 1.0 mm', 'sheet', 'Solvent-activated sheet material used for forming structural footwear components such as toe puffs and heel counters.'),
        ('reinforcement_material', 'thermoplastic_reinforcement_sheet_0_6', 'Thermoplastic Reinforcement Sheet 0.6 mm', 'sheet', 'Thermoplastic sheet material activated by heat and used for forming structural footwear components such as toe puffs and heel counters.'),
        ('reinforcement_material', 'white_backing_fabric', 'White Backing Fabric', 'meter', 'White fabric used as a backing or reinforcement layer to stabilize footwear materials during upper assembly and production.'),
        ('reinforcement_material', 'black_reinforcement_tape', 'Black Reinforcement Tape', 'meter', 'Black tape used to reinforce and stabilize footwear materials and components, preventing stretching and improving structural strength.'),

        ('adhesive', 'chloroprene_adhesive', 'Chloroprene Adhesive', 'liter', 'Contact adhesive based on chloroprene rubber, used for bonding leather, rubber, textiles, and related footwear materials.'),
        ('adhesive', 'polyurethane_adhesive', 'Polyurethane Adhesive', 'liter', 'Adhesive based on polyurethane, commonly used for bonding soles and other high-strength footwear components.'),
        ('adhesive', 'rubber_adhesive', 'Rubber Adhesive', 'liter', 'Adhesive based on natural or synthetic rubber, used for temporary bonding, upper assembly, lining attachment, and general footwear production operations.'),

        ('thread', 'black_waxed_thread_6', 'Black Waxed Thread No. 6', 'spool', 'Black waxed thread used for stitching footwear components.'),
        ('thread', 'black_polyester_thread_40', 'Black Polyester Thread No. 40', 'spool', 'Black polyester thread used for stitching footwear components.'),

        ('hardware', 'black_shoe_lace', 'Black Shoe Lace', 'pair', 'Black shoe lace used for footwear closure.'),
        ('textile', 'black_elastic_band', 'Black Elastic Band', 'meter', 'Black elastic band used to provide stretch and flexibility in footwear components, improving fit and comfort.'),
        ('hardware', 'steel_shoe_nails', 'Steel Shoe Nails', 'kg', 'Steel shoe nails used in footwear production.'),

        ('padding_material', 'dense_foam_material_4_mm', 'Dense Foam Material 4 mm', 'meter', 'Dense foam material used for padding, cushioning, and support in footwear components.'),
        ('padding_material', 'soft_foam_sheet_10_mm', 'Soft Foam Sheet 10 mm', 'sheet', 'Soft foam sheet material used for padding and cushioning upper footwear components.')
) as v(
    material_category_code,
    material_code,
    material_name,
    unit_of_measure,
    description
)
join material_categories mc
    on mc.material_category_code = v.material_category_code;

-- ----------------------------------------------------------------------

insert into material_attribute_values (
    material_id,
    material_attribute_id,
    value_text,
    value_numeric,
    value_boolean,
    description
)
select
    m.material_id,
    ma.material_attribute_id,
    v.value_text,
    v.value_numeric,
    v.value_boolean,
    null
from (
    values
        ('black_chrome_tanned_leather_1_4', 'color', 'black', null, null),
        ('black_chrome_tanned_leather_1_4', 'thickness', null, 1.400, null),
        ('black_chrome_tanned_leather_1_4', 'material_type', 'chrome_tanned_leather', null, null),
        ('black_chrome_tanned_leather_1_4', 'composition', 'natural_leather', null, null),
        ('black_chrome_tanned_leather_1_4', 'finish', 'smooth', null, null),
        ('black_chrome_tanned_leather_1_4', 'water_resistance', null, null, false),

        ('natural_vegetable_tanned_leather_2_0', 'color', 'natural', null, null),
        ('natural_vegetable_tanned_leather_2_0', 'thickness', null, 2.000, null),
        ('natural_vegetable_tanned_leather_2_0', 'material_type', 'vegetable_tanned_leather', null, null),
        ('natural_vegetable_tanned_leather_2_0', 'composition', 'natural_leather', null, null),
        ('natural_vegetable_tanned_leather_2_0', 'finish', 'smooth', null, null),
        ('natural_vegetable_tanned_leather_2_0', 'water_resistance', null, null, false),

        ('brown_oil_tanned_leather_1_8', 'color', 'brown', null, null),
        ('brown_oil_tanned_leather_1_8', 'thickness', null, 1.800, null),
        ('brown_oil_tanned_leather_1_8', 'material_type', 'oil_tanned_leather', null, null),
        ('brown_oil_tanned_leather_1_8', 'composition', 'natural_leather', null, null),
        ('brown_oil_tanned_leather_1_8', 'finish', 'oiled', null, null),
        ('brown_oil_tanned_leather_1_8', 'water_resistance', null, null, true),

        ('black_suede_1_2', 'color', 'black', null, null),
        ('black_suede_1_2', 'thickness', null, 1.200, null),
        ('black_suede_1_2', 'material_type', 'suede', null, null),
        ('black_suede_1_2', 'composition', 'natural_leather', null, null),
        ('black_suede_1_2', 'finish', 'suede', null, null),
        ('black_suede_1_2', 'water_resistance', null, null, false),

        ('brown_nubuck_1_4', 'color', 'brown', null, null),
        ('brown_nubuck_1_4', 'thickness', null, 1.400, null),
        ('brown_nubuck_1_4', 'material_type', 'nubuck', null, null),
        ('brown_nubuck_1_4', 'composition', 'natural_leather', null, null),
        ('brown_nubuck_1_4', 'finish', 'nubuck', null, null),
        ('brown_nubuck_1_4', 'water_resistance', null, null, false),

        ('black_synthetic_suede', 'color', 'black', null, null),
        ('black_synthetic_suede', 'material_type', 'synthetic_suede', null, null),
        ('black_synthetic_suede', 'composition', 'synthetic_material', null, null),
        ('black_synthetic_suede', 'finish', 'suede_like', null, null),
        ('black_synthetic_suede', 'water_resistance', null, null, false),

        ('black_synthetic_leather_1_0', 'color', 'black', null, null),
        ('black_synthetic_leather_1_0', 'thickness', null, 1.000, null),
        ('black_synthetic_leather_1_0', 'material_type', 'synthetic_leather', null, null),
        ('black_synthetic_leather_1_0', 'composition', 'synthetic_material', null, null),
        ('black_synthetic_leather_1_0', 'finish', 'coated', null, null),
        ('black_synthetic_leather_1_0', 'water_resistance', null, null, true),

        ('black_textile_upper_fabric', 'color', 'black', null, null),
        ('black_textile_upper_fabric', 'material_type', 'textile_upper_fabric', null, null),
        ('black_textile_upper_fabric', 'composition', 'textile', null, null),
        ('black_textile_upper_fabric', 'finish', 'woven', null, null),

        ('beige_sheep_lining_leather_0_8', 'color', 'beige', null, null),
        ('beige_sheep_lining_leather_0_8', 'thickness', null, 0.800, null),
        ('beige_sheep_lining_leather_0_8', 'material_type', 'sheep_lining_leather', null, null),
        ('beige_sheep_lining_leather_0_8', 'composition', 'sheep_leather', null, null),
        ('beige_sheep_lining_leather_0_8', 'finish', 'smooth', null, null),

        ('natural_goat_lining_leather_0_8', 'color', 'natural', null, null),
        ('natural_goat_lining_leather_0_8', 'thickness', null, 0.800, null),
        ('natural_goat_lining_leather_0_8', 'material_type', 'goat_lining_leather', null, null),
        ('natural_goat_lining_leather_0_8', 'composition', 'goat_leather', null, null),
        ('natural_goat_lining_leather_0_8', 'finish', 'smooth', null, null),

        ('black_dense_textile_lining', 'color', 'black', null, null),
        ('black_dense_textile_lining', 'material_type', 'dense_textile_lining', null, null),
        ('black_dense_textile_lining', 'composition', 'textile', null, null),
        ('black_dense_textile_lining', 'finish', 'dense_woven', null, null),

        ('beige_textile_lining', 'color', 'beige', null, null),
        ('beige_textile_lining', 'material_type', 'textile_lining', null, null),
        ('beige_textile_lining', 'composition', 'textile', null, null),
        ('beige_textile_lining', 'finish', 'woven', null, null),

        ('natural_fur_lining', 'color', 'natural', null, null),
        ('natural_fur_lining', 'material_type', 'natural_fur_lining', null, null),
        ('natural_fur_lining', 'composition', 'natural_fur', null, null),
        ('natural_fur_lining', 'finish', 'fur', null, null),

        ('black_artificial_fur_lining', 'color', 'black', null, null),
        ('black_artificial_fur_lining', 'material_type', 'artificial_fur_lining', null, null),
        ('black_artificial_fur_lining', 'composition', 'synthetic_fur', null, null),
        ('black_artificial_fur_lining', 'finish', 'fur', null, null),

        ('solvent_activated_reinforcement_sheet_1_0', 'material_type', 'solvent_activated_reinforcement_sheet', null, null),
        ('solvent_activated_reinforcement_sheet_1_0', 'composition', 'fiber_composite', null, null),
        ('solvent_activated_reinforcement_sheet_1_0', 'thickness', null, 1.000, null),

        ('thermoplastic_reinforcement_sheet_0_6', 'material_type', 'thermoplastic_reinforcement_sheet', null, null),
        ('thermoplastic_reinforcement_sheet_0_6', 'composition', 'thermoplastic', null, null),
        ('thermoplastic_reinforcement_sheet_0_6', 'thickness', null, 0.600, null),

        ('white_backing_fabric', 'color', 'white', null, null),
        ('white_backing_fabric', 'material_type', 'backing_fabric', null, null),
        ('white_backing_fabric', 'composition', 'textile', null, null),
        ('white_backing_fabric', 'finish', 'woven', null, null),

        ('black_reinforcement_tape', 'color', 'black', null, null),
        ('black_reinforcement_tape', 'material_type', 'reinforcement_tape', null, null),
        ('black_reinforcement_tape', 'composition', 'textile', null, null),
        ('black_reinforcement_tape', 'finish', 'woven', null, null),

        ('chloroprene_adhesive', 'material_type', 'contact_adhesive', null, null),
        ('chloroprene_adhesive', 'adhesive_base', 'chloroprene', null, null),
        ('chloroprene_adhesive', 'composition', 'synthetic_rubber', null, null),
        ('chloroprene_adhesive', 'drying_time', null, 15.000, null),

        ('polyurethane_adhesive', 'material_type', 'polyurethane_adhesive', null, null),
        ('polyurethane_adhesive', 'adhesive_base', 'polyurethane', null, null),
        ('polyurethane_adhesive', 'composition', 'polyurethane', null, null),
        ('polyurethane_adhesive', 'drying_time', null, 60.000, null),

        ('rubber_adhesive', 'material_type', 'rubber_adhesive', null, null),
        ('rubber_adhesive', 'adhesive_base', 'rubber', null, null),
        ('rubber_adhesive', 'composition', 'natural_or_synthetic_rubber', null, null),
        ('rubber_adhesive', 'drying_time', null, 5.000, null),

        ('black_waxed_thread_6', 'color', 'black', null, null),
        ('black_waxed_thread_6', 'material_type', 'waxed_thread', null, null),
        ('black_waxed_thread_6', 'composition', 'polyester', null, null),
        ('black_waxed_thread_6', 'thread_number', '6', null, null),

        ('black_polyester_thread_40', 'color', 'black', null, null),
        ('black_polyester_thread_40', 'material_type', 'polyester_thread', null, null),
        ('black_polyester_thread_40', 'composition', 'polyester', null, null),
        ('black_polyester_thread_40', 'thread_number', '40', null, null),

        ('black_shoe_lace', 'color', 'black', null, null),
        ('black_shoe_lace', 'material_type', 'shoe_lace', null, null),
        ('black_shoe_lace', 'composition', 'polyester', null, null),

        ('black_elastic_band', 'color', 'black', null, null),
        ('black_elastic_band', 'material_type', 'elastic_band', null, null),
        ('black_elastic_band', 'composition', 'elastic_textile', null, null),

        ('steel_shoe_nails', 'material_type', 'shoe_nails', null, null),
        ('steel_shoe_nails', 'composition', 'steel', null, null),

        ('dense_foam_material_4_mm', 'material_type', 'dense_foam', null, null),
        ('dense_foam_material_4_mm', 'composition', 'polyurethane_foam', null, null),
        ('dense_foam_material_4_mm', 'thickness', null, 4.000, null),

        ('soft_foam_sheet_10_mm', 'material_type', 'soft_foam', null, null),
        ('soft_foam_sheet_10_mm', 'composition', 'polyurethane_foam', null, null),
        ('soft_foam_sheet_10_mm', 'thickness', null, 10.000, null)
) as v(
    material_code,
    material_attribute_code,
    value_text,
    value_numeric,
    value_boolean
)
join materials m
    on m.material_code = v.material_code
join material_attributes ma
    on ma.material_attribute_code = v.material_attribute_code;

-- ======================================================================
-- Shoe Model Master Data
-- ======================================================================

begin;

create temp table tmp_shoe_model_seed (
    seed_order int not null,
    model_code varchar(60) not null,
    model_name varchar(100) not null,
    last_code varchar(60) not null,
    footwear_category varchar(80) not null,
    footwear_type varchar(80),
    target_group varchar(40) not null,
    description text,
    is_active boolean not null
) on commit drop;

insert into tmp_shoe_model_seed (
    seed_order,
    model_code,
    model_name,
    last_code,
    footwear_category,
    footwear_type,
    target_group,
    description,
    is_active
)
values
    (1, '009-1-1', 'Model 009-1-1', 'E009', 'Shoes', 'Slip-on Shoes', 'Men', 'Slip-on shoes with concealed elastic side inserts and apron toe.', true),
    (2, '009-1-2', 'Model 009-1-2', 'E009', 'Shoes', null, 'Men', null, false),
    (3, '009-1-3', 'Model 009-1-3', 'E009', 'Shoes', null, 'Men', null, false),
    (4, '009-1-4', 'Model 009-1-4', 'E009', 'Shoes', 'Derby Shoes', 'Men', 'Longwing Derby shoes with full brogue detailing.', true),

    (5, '034-1-1', 'Model 034-1-1', '1034', 'Shoes', 'Derby Shoes', 'Men', 'Casual cap-toe Derby shoes.', false),
    (6, '034-1-2', 'Model 034-1-2', '1034', 'Shoes', 'Derby Shoes', 'Men', 'Cap-toe Derby shoes.', true),
    (7, '034-1-3', 'Model 034-1-3', '1034', 'Shoes', null, 'Men', null, false),
    (8, '034-1-4', 'Model 034-1-4', '1034', 'Shoes', null, 'Men', null, false),
    (9, '034-1-5', 'Model 034-1-5', '1034', 'Shoes', 'Oxford Shoes', 'Men', 'Cap-toe Oxford shoes with brogue detailing.', true),
    (10, '034-1-6', 'Model 034-1-6', '1034', 'Shoes', 'Derby Shoes', 'Men', 'Wingtip Derby shoes with brogue detailing.', true),

    (11, '816-1-1', 'Model 816-1-1', '3816', 'Shoes', 'Oxford Shoes', 'Men', 'Cap-toe Oxford shoes.', true),
    (12, '816-1-2', 'Model 816-1-2', '3816', 'Shoes', 'Oxford Shoes', 'Men', 'Wingtip Oxford shoes with brogue detailing.', true),
    (13, '816-1-3', 'Model 816-1-3', '3816', 'Shoes', 'Oxford Shoes', 'Men', 'Adelaide Oxford shoes with brogue detailing.', true),
    (14, '816-1-4', 'Model 816-1-4', '3816', 'Shoes', 'Derby Shoes', 'Men', 'Wingtip Derby shoes without brogue detailing.', true),

    (15, '397-1-1', 'Model 397-1-1', '5161397', 'Shoes', 'Slip-on Shoes', 'Women', 'Elastic gore slip-on shoes.', true),

    (16, '302-2-1-BS', 'Model 302-2-1-BS', '302-T1', 'Light Footwear', 'Boat Shoes', 'Men', 'Boat shoes with moccasin construction.', false),
    (17, '302-2-1', 'Model 302-2-1', '302-T1', 'Light Footwear', 'Moccasins', 'Men', 'Slip-on moccasins with apron toe.', true),
    (18, '302-2-2', 'Model 302-2-2', '302-T1', 'Light Footwear', 'Moccasins', 'Men', 'Lace-up moccasins with apron toe.', false),

    (19, '537-2-1', 'Model 537-2-1', '0537', 'Light Footwear', 'Moccasins', 'Men', 'Slip-on moccasins with apron toe and elastic gore.', true),
    (20, '537-2-2', 'Model 537-2-2', '0537', 'Light Footwear', 'Moccasins', 'Men', 'Slip-on moccasins with apron toe.', true),

    (21, '009-3-1-LB', 'Model 009-3-1-LB', 'E009', 'Boots', 'Casual Boots', 'Men', 'Slip-on boots with dual side zippers.', true),
    (22, '009-3-2-LB', 'Model 009-3-2-LB', 'E009', 'Boots', 'Casual Boots', 'Men', 'Lace-up boots.', true),
    (23, '009-3-1', 'Model 009-3-1', 'E009', 'Boots', 'Casual Boots', 'Men', 'Slip-on boots with dual side zippers.', true),
    (24, '009-3-2', 'Model 009-3-2', 'E009', 'Boots', 'Casual Boots', 'Men', 'Lace-up cap-toe boots with side zipper.', true),
    (25, '009-3-3', 'Model 009-3-3', 'E009', 'Boots', 'Casual Boots', 'Men', 'Slip-on boots with side zipper.', true),
    (26, '009-3-4', 'Model 009-3-4', 'E009', 'Boots', 'Work Boots', 'Men', 'Lace-up cap-toe work boots with speed hooks.', true),
    (27, '009-3-5', 'Model 009-3-5', 'E009', 'Boots', 'Work Boots', 'Men', 'Lace-up cap-toe work boots with speed hooks.', false),
    (28, '009-3-6', 'Model 009-3-6', 'E009', 'Boots', 'Hiking Boots', 'Men', 'Lace-up hiking boots with padded collar.', true),

    (29, '034-3-1', 'Model 034-3-1', '1034', 'Boots', 'Casual Boots', 'Men', 'Lace-up boots with padded collar.', true),
    (30, '034-3-2', 'Model 034-3-2', '1034', 'Boots', 'Casual Boots', 'Men', 'Lace-up boots with side zipper and padded collar.', false),

    (31, '191-3-1', 'Model 191-3-1', '1191-E1', 'Boots', 'Hiking Boots', 'Men', 'Lace-up hiking boots with speed hooks.', false),

    (32, '816-3-1', 'Model 816-3-1', '3816', 'Boots', 'Chelsea Boots', 'Men', 'Chelsea boots with elastic side panels.', true),
    (33, '816-3-2', 'Model 816-3-2', '3816', 'Boots', 'Casual Boots', 'Men', 'Lace-up wingtip brogue boots.', true),
    (34, '816-3-3', 'Model 816-3-3', '3816', 'Boots', 'Casual Boots', 'Men', 'Lace-up wingtip brogue boots with speed hooks.', true),

    (35, '011-3-1', 'Model 011-3-1', 'E011', 'Boots', 'Casual Boots', 'Kids', 'Lace-up cap-toe boots with side zipper.', true),
    (36, '397-3-1', 'Model 397-3-1', '5161397', 'Boots', 'Casual Boots', 'Women', 'Slip-on boots with side zipper and elastic side panel.', true),

    (37, '034-4-1', 'Model 034-4-1', '1034', 'Athletic Footwear', 'Sneakers', 'Men', 'Sneakers with T-toe overlay, heel counter overlay, and heavy decorative quarter-panel stitching.', true),

    (38, '055-4-1', 'Model 055-4-1', '5055-T1', 'Athletic Footwear', 'Sneakers', 'Men', 'Sneakers with one-piece upper and heel counter overlay.', true),
    (39, '055-4-2', 'Model 055-4-2', '5055-T1', 'Athletic Footwear', 'Sneakers', 'Men', 'Sneakers with Derby-style lacing, toe panel, and multilayer heel counter overlay.', false),
    (40, '055-4-3', 'Model 055-4-3', '5055-T1', 'Athletic Footwear', 'Sneakers', 'Men', 'Sneakers with T-toe overlay, one-piece quarter panel, and wing-shaped heel counter overlay.', false),
    (41, '055-4-4', 'Model 055-4-4', '5055-T1', 'Athletic Footwear', 'Sneakers', 'Men', 'Sneakers with wave-shaped toe overlay, diagonal side overlay, and multilayer heel counter.', false),
    (42, '055-4-5', 'Model 055-4-5', '5055-T1', 'Athletic Footwear', 'Sneakers', 'Men', 'Sneakers with Derby-style lacing, similarly shaped angular toe and heel overlays, and geometric quarter overlay.', false),

    (43, '191-4-1', 'Model 191-4-1', '1191-E1', 'Athletic Footwear', 'Sneakers', 'Men', 'Sneakers with wing-shaped toe overlay, one-piece quarter panel, and side overlay.', true),
    (44, '191-4-2', 'Model 191-4-2', '1191-E1', 'Athletic Footwear', 'Sneakers', 'Men', 'Sneakers with U-shaped toe overlay and large side overlay.', true),
    (45, '191-4-3', 'Model 191-4-3', '1191-E1', 'Athletic Footwear', 'Sneakers', 'Men', 'Sneakers with curved toe overlay, one-piece vamp-and-quarter construction, low-profile heel overlay, and heel pull tab.', true),
    (46, '191-4-4', 'Model 191-4-4', '1191-E1', 'Athletic Footwear', 'Sneakers', 'Men', 'Sneakers with curved toe overlay, intermediate quarter overlay, and heel counter overlay.', true),
    (47, '191-4-5', 'Model 191-4-5', '1191-E1', 'Athletic Footwear', 'Sneakers', 'Men', 'Sneakers with T-toe overlay, quarter overlay, and heel counter overlay.', false),
    (48, '191-4-6', 'Model 191-4-6', '1191-E1', 'Athletic Footwear', 'Sneakers', 'Men', 'Sneakers with asymmetrical curved toe overlay, asymmetrical eyestay overlay, side overlay, and matching heel overlay.', false),
    (49, '191-4-7', 'Model 191-4-7', '1191-E1', 'Athletic Footwear', 'Sneakers', 'Men', 'Sneakers with curved toe overlay, one-piece vamp-and-quarter construction, frame-style side overlays, and wing-shaped heel overlay.', false),
    (50, '191-4-8', 'Model 191-4-8', '1191-E1', 'Athletic Footwear', 'Sneakers', 'Men', 'Sneakers with one-piece vamp-and-quarter construction, wing-shaped heel overlay, and heel pull tab.', false),

    (51, '537-4-1', 'Model 537-4-1', '0537', 'Athletic Footwear', 'Sneakers', 'Men', 'Sneakers with T-toe overlay, wide side overlay, and heel overlay.', true),

    (52, '055-4-1-MC', 'Model 055-4-1-MC', '5055-T1', 'Athletic Footwear', 'Sneakers', 'Men', 'Sneakers with U-shaped toe overlay, intermediate forefoot overlay, frame-style quarter overlays, asymmetrical multilayer eyestay construction, and wing-shaped heel overlay.', false),
    (53, '055-4-2-MC', 'Model 055-4-2-MC', '5055-T1', 'Athletic Footwear', 'Sneakers', 'Men', 'Sneakers with curved wave-shaped toe overlay, one-piece vamp-and-quarter construction, extended eyestay overlay, and tapered heel overlay.', false),

    (54, '009-6-1', 'Model 009-6-1', 'E009', 'Specialty Footwear', 'Military Boots', 'Men', 'Military boots with speed hook lacing and reinforced heel overlay.', true),
    (55, '009-6-2', 'Model 009-6-2', 'E009', 'Specialty Footwear', 'Military Boots', 'Men', 'Military boots with speed hook lacing and inside zipper.', true),
    (56, '009-6-3', 'Model 009-6-3', 'E009', 'Specialty Footwear', 'Military Boots', 'Men', 'Military boots with lace-up closure and padded collar.', true);

do $$
declare

    missing_last_codes text;
    duplicate_model_codes text;
begin
    select string_agg(last_code, ', ' order by last_code)
    into missing_last_codes
    from (
        select distinct t.last_code
        from tmp_shoe_model_seed t
        left join shoe_lasts sl
            on sl.last_code = t.last_code
        where sl.shoe_last_id is null
    ) as missing;

    if missing_last_codes is not null then
        raise exception 'Missing shoe_lasts for last_code(s): %', missing_last_codes;
    end if;

    select string_agg(model_code, ', ' order by model_code)
    into duplicate_model_codes
    from (
        select model_code
        from tmp_shoe_model_seed
        group by model_code
        having count(*) > 1
    ) as duplicates;

    if duplicate_model_codes is not null then
        raise exception 'Duplicate model_code(s) in seed data: %', duplicate_model_codes;
    end if;
end $$;

insert into shoe_models (
    shoe_last_id,
    model_code,
    model_name,
    footwear_category,
    footwear_type,
    target_group,
    description,
    is_active
)
select
    sl.shoe_last_id,
    t.model_code,
    t.model_name,
    t.footwear_category,
    t.footwear_type,
    t.target_group,
    t.description,
    t.is_active
from tmp_shoe_model_seed t
join shoe_lasts sl
    on sl.last_code = t.last_code
order by t.seed_order;

commit;

-- ----------------------------------------------------------------------

begin;

-- ----------------------------------------------------------------------
-- Model-Specific Class Assignments
-- ----------------------------------------------------------------------

insert into shoe_model_classes (
    shoe_model_id,
    construction_method_id,
    class_code,
    class_name,
    quality_level,
    warranty_months,
    description,
    is_active
)
select
    sm.shoe_model_id,
    scm.construction_method_id,
    v.class_code,
    v.class_name,
    v.quality_level,
    null,
    v.description,
    true
from (
    values
        -- Class A
        (
            '009-3-4',
            'welted',
            'A',
            'Premium Execution Standard',
            'premium',
            'Highest execution class with premium materials and construction requirements.'
        ),
        (
            '816-3-3',
            'welted',
            'A',
            'Premium Execution Standard',
            'premium',
            'Highest execution class with premium materials and construction requirements.'
        ),

        -- Class B
        (
            '034-1-5',
            'cemented',
            'B',
            'High Execution Standard',
            'high',
            'High execution class with reinforced construction and high-quality material requirements.'
        ),
        (
            '034-1-6',
            'cemented',
            'B',
            'High Execution Standard',
            'high',
            'High execution class with reinforced construction and high-quality material requirements.'
        ),
        (
            '009-3-2',
            'cemented',
            'B',
            'High Execution Standard',
            'high',
            'High execution class with reinforced construction and high-quality material requirements.'
        ),
        (
            '191-4-2',
            'cemented',
            'B',
            'High Execution Standard',
            'high',
            'High execution class with reinforced construction and high-quality material requirements.'
        ),
        (
            '191-4-4',
            'cemented',
            'B',
            'High Execution Standard',
            'high',
            'High execution class with reinforced construction and high-quality material requirements.'
        ),

        -- Class D
        (
            '009-1-1',
            'cemented',
            'D',
            'Economy Execution Standard',
            'economy',
            'Economy execution class with natural-leather upper and simplified internal construction.'
        ),

        -- Class D-S
        (
            '055-4-1',
            'cemented',
            'D-S',
            'Economy Synthetic Execution Standard',
            'economy',
            'Synthetic-upper variant of the Class D economy execution standard.'
        ),

        -- Class TX
        (
            '191-4-3',
            'strobel',
            'TX',
            'Textile Construction Standard',
            'technology_specific',
            'Technology-specific production standard for textile footwear using Strobel construction.'
        )
) as v(
    model_code,
    construction_method_code,
    class_code,
    class_name,
    quality_level,
    description
)
join shoe_models sm
    on sm.model_code = v.model_code
join shoe_construction_methods scm
    on scm.construction_method_code = v.construction_method_code;

-- ----------------------------------------------------------------------
-- Default Class C Assignment
-- ----------------------------------------------------------------------

insert into shoe_model_classes (
    shoe_model_id,
    construction_method_id,
    class_code,
    class_name,
    quality_level,
    warranty_months,
    description,
    is_active
)
select
    sm.shoe_model_id,
    scm.construction_method_id,
    'C',
    'Standard Execution Standard',
    'standard',
    null,
    'Standard execution class for leather footwear with conventional materials and cemented construction.',
    true
from shoe_models sm
join shoe_construction_methods scm
    on scm.construction_method_code = 'cemented'
where sm.model_code not in (
    -- Class A only
    '009-3-4',
    '816-3-3',

    -- Class B only
    '191-4-2',
    '191-4-4',

    -- Class D only
    '009-1-1',

    -- Class D-S only
    '055-4-1',

    -- Class TX only
    '191-4-3'
);

commit;

-- ======================================================================
-- Production Composition Data
-- ======================================================================

-- shoe_model_class_materials
