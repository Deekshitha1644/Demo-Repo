{% macro hello() %}
    {% do log('hello from run-operation on Snowflake native dbt', info=true) %}
    {% set result = run_query("select current_user(), current_role(), current_warehouse()") %}
    {% do log('running as: ' ~ result.rows[0].values() | join(' / '), info=true) %}
{% endmacro %}