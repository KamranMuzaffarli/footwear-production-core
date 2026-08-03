-- Migration: Update shoe model classification fields
-- Purpose: Replace unstable season and model purpose fields with structured footwear classification fields.

begin;

alter table shoe_models
    drop column season,
    drop column model_purpose,
    add column footwear_category varchar(80) not null,
    add column footwear_type varchar(80),
    add column target_group varchar(40) not null;

commit;
