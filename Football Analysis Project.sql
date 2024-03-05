create table football__data (
short_name	text,
long_name text,	
overall int,	
potential int,	
value_eur int,	
wage_eur int,	
age int,	
height_cm int,	
weight_kg	int,
club_team_id int,	
club_name text,	
league_name text,	
league_level int,	
club_position text,	
club_jersey_number int,	
club_loaned_from text,
club_joined text,	
club_contract_valid_until int,	
nationality_id int,	
nationality_name text,	
nation_team_id int,	
nation_position text,	
nation_jersey_number int,	
preferred_foot text,	
weak_foot text,	
skill_moves int,	
international_reputation text,		
body_type text,	
real_face text,	
release_clause_eur int,	
pace int,	
shooting int,	
passing int,	
dribbling int,	
defending int,	
physic int,	
attacking_crossing int,	
attacking_finishing int,	
attacking_heading_accuracy int,	
attacking_short_passing int,	
attacking_volleys int,	
skill_dribbling int,	
skill_curve int,	
skill_fk_accuracy int,	
skill_long_passing int,	
skill_ball_control int,	
movement_acceleration int,	
movement_sprint_speed int,	
movement_agility int,	
movement_reactions int,	
movement_balance int,	
power_shot_power int,	
power_jumping int,	
power_stamina int,	
power_strength int,	
power_long_shots int,	
mentality_aggression int,	
mentality_interceptions int,	
mentality_positioning int,	
mentality_vision int,	
mentality_penalties int,	
mentality_composure int,	
defending_marking_awareness int,	
defending_standing_tackle int,	
defending_sliding_tackle int,	
goalkeeping_diving int,	
goalkeeping_handling int,	
goalkeeping_kicking int,	
goalkeeping_positioning int,	
goalkeeping_reflexes int,	
goalkeeping_speed int);

copy football__data from 'C:\Program Files\PostgreSQL\16\data\DATA_COPY\players_22.csv' delimiter ',' csv header;

SET client_encoding = 'ISO_8859_5';

copy football__data from 'C:\Program Files\PostgreSQL\16\data\DATA_COPY\players_22.csv' delimiter ',' csv header;

select * from football__data

//10 highest potentential rating player aged between 17 and 22

select short_name, potential, age, nationality_name, club_name, club_position from football__data
where potential > 80 and potential < 88 and age >16 and age <23
order by potential desc, age asc 
limit 10;
