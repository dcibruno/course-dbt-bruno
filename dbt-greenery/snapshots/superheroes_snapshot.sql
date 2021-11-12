{% snapshot superheroes_snapshot %}

  {{
    config(
      target_schema='snapshots',
      unique_key='id',

      strategy='timestamp',
      updated_at='created_at'
    )
  }}

  SELECT * 
  FROM {{ source('tutorial', 'superheroes') }}

{% endsnapshot %}