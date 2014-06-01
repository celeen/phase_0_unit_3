Creating tables:

```bash
sqlite> CREATE TABLE countries (
   ...> name VARCHAR(64) NOT NULL,
   ...> population INTEGER,
   ...> area integer,
   ...> gdp integer,
   ...> currency varchar(64),
   ...> time_zone varchar(64),
   ...> created_at datetime not null,
   ...> updated_at datetime not null
   ...> );
```

```sqlite> create table capitals (
   ...> id integer primary key autoincrement,
   ...> name varchar(64) not null,
   ...> population integer,
   ...> area_in_km2 integer,
   ...> country_name varchar(64) not null,
   ...> created_at datetime not null,
   ...> updated_at datetime not null
   ...> );
   ```
   
   
  Adding foreign keys:
  
  ```bash
sqlite> alter table capitals rename to oldcapitals;
sqlite> create table capitals (
   ...> id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...> name varchar(64) not null,
   ...> population integer,
   ...> area_in_km2 interger,
   ...> created_at datetime not null,
   ...> updated_at datetime not null,
   ...> foreign key(country_name) references countries(id)
   ...> );
Error: unknown column "country_name" in foreign key definition
sqlite> create table capitals (
   ...> id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...> name varchar(64) not null,
   ...> population integer,
   ...> area_in_km2 interger,
   ...> created_at datetime not null,
   ...> updated_at datetime not null,
   ...> country_name integer, 
   ...> foreign key(country_name) references countries(id)
   ...> );
sqlite> drop table oldcapitals;
```

Creating one to many table and foreign keys:

```bash
sqlite> create table countries_languages (
   ...> id integer primary key autoincrement,
   ...> country_id integer,
   ...> language_id integer,
   ...> foreign key(country_id) references countries(id),
   ...> foreign key(language_id) references languages(id)
   ...> );
   ```