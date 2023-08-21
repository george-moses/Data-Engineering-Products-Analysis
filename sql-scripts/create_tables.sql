create or replace temporary stage g2_stage
file_format = (type = json)
credentials = (aws_key_id = '', aws_secret_key = '')
url = '';


create or replace table raw_public.vendor_rating as
select 
    lower(g2_flat.value['input']['company_name']) as company_name,
    cast(value['number_of_reviews'] as int) as number_of_reviews,
    cast(value['number_of_stars'] as numeric(38, 2)) as star_rating,
    value['categories_on_g2'] as category_list
from (
    select $1 json_data
    from @g2_stage src
) g2
,lateral flatten(input => g2.json_data) g2_flat

union all

select
    lower(g2_flat_competitors.value['competitor_name']) as company_name,
    cast(g2_flat_competitors.value['number_of_reviews'] as int) as number_of_reviews,
    cast(g2_flat_competitors.value['number_of_stars'] as numeric(38, 2)) as star_rating,
    g2_flat_competitors.value['product_category'] as category_list
from (
    select $1 json_data
    from @g2_stage src
) g2
,lateral flatten(input => g2.json_data) g2_flat
,lateral flatten(input => g2_flat.value['top_10_competitors']) g2_flat_competitors;


create or replace table raw_public.vendor_competitor_rating as
select
    lower(g2_flat.value['input']['company_name']) as company_name,
    lower(g2_flat_competitors.value['competitor_name']) as competitor_name,
    cast(g2_flat_competitors.value['number_of_reviews'] as int) as number_of_reviews,
    cast(g2_flat_competitors.value['number_of_stars'] as numeric(38, 2)) as star_rating
from (
    select $1 json_data
    from @g2_stage src
) g2
,lateral flatten(input => g2.json_data) g2_flat
,lateral flatten(input => g2_flat.value['top_10_competitors']) g2_flat_competitors;


create or replace table raw_public.vendor_category as
select
    lower(g2_flat_competitors.value['competitor_name']) as company_name,
    competitor_category.value as company_category
from (
    select $1 json_data
    from @g2_stage src
) g2
,lateral flatten(input => g2.json_data) g2_flat
,lateral flatten(input => g2_flat.value['top_10_competitors']) g2_flat_competitors
,lateral flatten(input => g2_flat_competitors.value['product_category']) competitor_category

union all

select
    lower(g2_flat.value['input']['company_name']) as company_name,
    category_flat.value
from (
    select $1 json_data
    from @g2_stage src
) g2
,lateral flatten(input => g2.json_data) g2_flat
,lateral flatten(input => g2_flat.value['categories_on_g2']) category_flat;


create or replace table raw_public.vendor_category_rating as
select sum(v.number_of_reviews * v.star_rating) * 1.0 / sum(v.number_of_reviews) avg_stars_category,
    c.company_category
from raw_public.vendor_rating v
join raw_public.vendor_category c
on v.company_name = c.company_name
group by c.company_category
order by c.company_category;


create or replace table raw_public.vendor_category_comparison as
select 
    cr.avg_stars_category,
    vc.company_name,
    category_list,
    cr.company_category,
    star_rating
from raw_public.vendor_category_rating cr
join raw_public.vendor_category vc on vc.company_category = cr.company_category
join raw_public.vendor_rating vr on replace(vc.company_name, '"', '') = replace(vr.company_name, '"', '');
