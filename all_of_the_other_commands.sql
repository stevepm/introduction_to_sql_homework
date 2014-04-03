CREATE TABLE urls (id SERIAL PRIMARY KEY, original_url VARCHAR(255) NOT NULL, count integer DEFAULT 0);
insert into urls (original_url, count) values
  ('hello.com', 1),
  ('yes.com', 3),
  ('steve.com', 5),
  ('ruby.com', 6),
  ('hiruby.com', 7);

--Display all the rows in the urls table with all of the columns
select * from urls;

--Display all of the rows in the urls table with only the original_url column
select original_url from urls;

--Display one row from the urls table with a specific id
select * from urls where id=1;

--Display one row from the urls table with a specific original_url
select * from urls where original_url='ruby.com';

--Update one of the rows with a specific id to have a new count
update urls set count=10 where id=4;

--Delete one row that matches an original_url
delete from urls where original_url='hiruby.com';