# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

```bash
Rainbow-Brite:4_intro_to_SQLite rainbowbrite$ cat << EOF > ~/.sqliterc
> .headers on
> .mode column
> EOF
Rainbow-Brite:4_intro_to_SQLite rainbowbrite$ sqlite3 dummy.db
-- Loading resources from /Users/rainbowbrite/.sqliterc

SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users (
   ...> id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...> first_name VARCHAR(64) NOT NULL,
   ...> last_name VARCHAR(64) NOT NULL,
   ...> email VARCHAR(128) UNIQUE NOT NULL,
   ...> created_at DATETIME NOT NULL,
   ...> updated_at DATETIME NOT NULL
   ...> );
sqlite> ```

## Release 1: Insert Data
```bash
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users
   ...> ;
id          first_name  last_name   email                  created_at           updated_at
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-16 15:04:52  2014-05-16 15:04:52

```

## Release 2: Multi-line commands
```bash
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
Error: column email is not unique
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmylin@devbootcamp.com', DATETIME('now'), DATETIME('now'));
sqlite> select * from users
   ...> ;
id          first_name  last_name   email                  created_at           updated_at
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-05-16 15:04:52  2014-05-16 15:04:52
2           Kimmey      Lin         kimmylin@devbootcamp.  2014-05-16 15:07:01  2014-05-16 15:07:01
sqlite>
```
## Release 3: Add a column
<!-- paste your terminal output here -->

## Release 4: Change a value
<!-- paste your terminal output here -->

## Release 5: Reflect
<!-- Add your reflection here -->
