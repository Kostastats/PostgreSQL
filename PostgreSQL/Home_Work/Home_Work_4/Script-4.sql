create schema lecture_4

create table language (
	language_id serial primary key,
	name_ varchar(50) not null
);

create table nationality( 
	nationality_id serial primary key,
	name_ varchar(50) not null,
	regions_of_habitation(100) not null,
	speak_languages int2 not null references language(language_id) 
);

create table countries (
	country_id serial primary key,
	name_ varchar(50) not null
);

create table country_nationality(
	country_id int2 not null references countries(country_id),
	main_nationality int2 not null references nationality(nationality_id),
	primary key (country_id, main_nationality)

)

create table country_language( 
	country_id int2 not null references countries(country_id),
	main_language int2 not null references language(language_id),
	primary key (country_id, main_language)
)

create table nationality_language( 
	nationality_id int2 not null references nationality(nationality_id),
	language_id int2 not null references language(language_id),
	primary key (nationality_id, language_id)
)

insert into language(name_)
select name from "dvd-rental".language

select *
from "language" l 

insert into countries 
select country from "dvd-rental".country

insert into nationality(name_)
values ('nemets'), ('finn'), ('british')

select *
from nationality n





