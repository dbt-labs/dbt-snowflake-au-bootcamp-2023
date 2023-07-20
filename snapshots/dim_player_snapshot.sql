{% snapshot dim_players_snapshot %}
    {{
        config(
            target_schema='mark_wan_snapshots',
            unique_key='player_id',
            strategy='check',
            check_cols=['city', 'team_name', 'country_code']
        )
    }}

    select * from {{ ref('dim_players') }}
 {% endsnapshot %}