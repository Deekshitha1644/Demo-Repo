select
    id,
    upper(name) as name_upper,
    amount,
    current_timestamp() as loaded_at
from {{ ref('seed_demo') }}