create table animals(id int, name varchar(50), date_of_birth date, escape_attempts int, neutered boolean, weight_kg decimal, primary key(id));

alter table animals add species varchar(50);

create table owners(id int generated always as identity not null, full_name varchar(255), age int, primary key(id));
create table species(id int generated always as identity not null, name varchar(255), primary key(id));
alter table animals add primary key(id);
alter table animals drop column species;
alter table animals add column species_id integer references species(id);
alter table animals add column owner_id integer references owners(id);
