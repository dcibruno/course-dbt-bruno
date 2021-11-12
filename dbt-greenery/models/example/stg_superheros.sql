{{
  config(
    materialized='table'
  )
}}

SELECT 
    id AS superhero_id,
    name,
    gender,
    eye_color,
    race,
    hair_color,
    height,
    publisher,
    skin_color,
    alignment,
    weight AS weight_lbs,
    {{ lbs_to_kgs('weight') }} AS weight_kg
FROM {{ source('tutorial', 'superheroes') }}