{% macro lbs_to_kgs(column_name, precision=2) %}
   ROUND((CAST({{ column_name }} AS decimal) / 2.205), {{ precision }})
{% endmacro %}