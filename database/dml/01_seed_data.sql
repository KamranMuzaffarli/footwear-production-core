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

Сделать коммит после заполнения каждой таблицы

✓

shoe_models
shoe_model_classes

-- ======================================================================
-- Production Composition Data
-- ======================================================================

Сделать коммит после заполнения каждой таблицы

✓

shoe_model_class_materials
