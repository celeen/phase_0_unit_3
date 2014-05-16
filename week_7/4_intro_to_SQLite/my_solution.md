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
<!-- paste your terminal output here -->

## Release 2: Multi-line commands
<!-- paste your terminal output here -->

## Release 3: Add a column
<!-- paste your terminal output here -->

## Release 4: Change a value
<!-- paste your terminal output here -->

## Release 5: Reflect
<!-- Add your reflection here -->