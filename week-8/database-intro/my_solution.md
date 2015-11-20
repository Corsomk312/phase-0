1. SELECT * FROM states;
2. SELECT * FROM regions;
3. SELECT state_name,population FROM states;
4. SELECT state_name,population FROM states ORDER BY population;
5. SELECT state_name FROM states WHERE region_id=7;
6. SELECT state_name,population_density
FROM states
WHERE population_density > 50
ORDER BY population_density;
7. SELECT state_name,region_id FROM states WHERE population BETWEEN 1000000 AND 1500000
8. SELECT state_name,region_id FROM states ORDER BY region_id ASC;
9.SELECT region_name FROM regions WHERE region_name LIKE '%Central%';
10. SELECT regions.region_name, states.state_name FROM states INNER JOIN regions ON states.region_id=regions.id ORDER BY states.region_id

SCHEMA
https://github.com/Corsomk312/phase-0/blob/master/week-8/database-intro/Clueless_Schema.jpg

What are databases for?
Databases are for organizing large amounts of information. Even larger than one can handle in a single array or hash/object. Databases can hold many tables, and store information on a much larger scale. 

What is a one-to-many relationship?

A One-to-many relationship is when the contents of one table are able to have relations to many other items of information. If you have a lot of similar items pointing back at one item as the primary source of connection, then you have a one-to-many relationship.

What is a primary key? What is a foreign key? How can you determine which is which?

Primary is a unique attribute that is unique to each row in a database. A foreign key is something that matches the primary key in another table as a way for the two to stay related. The foreign key is created with a link to the primary key, so it will point back to that. The primary key has no such relationship.

How can you select information out of a SQL database? What are some general guidelines for that?

There are a whole slew of commands for finding information from a database. As for some guidelines, I would say to make sure that you are keeping track of what you're searching for. I also started skipping a line between commands, since it reads it all until the semi-colon at the end. 