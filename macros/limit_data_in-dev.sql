{% macro limit_data_in_dev() %}

{% if target.name == 'dev' %}
    where created >= dateadd('day',-3,current_timestamp)
{% endif %}

{% endmacro %}