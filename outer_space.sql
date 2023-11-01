-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space;

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  galaxy TEXT NOT NULL
  
);

CREATE TABLE moons
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE orbit
(
  id SERIAL PRIMARY KEY,
  planet_id INTEGER REFERENCES planets(id),
  orbit_around TEXT NOT NULL,
  duration_yrs FLOAT NOT NULL
);

CREATE TABLE planetmoons
(
  id SERIAL PRIMARY KEY,
  planet_id INTEGER REFERENCES planets(id),
  moon_id INTEGER REFERENCES moons(id)
);



-- INSERT INTO planets
--   (name, orbital_period_in_years, orbits_around, galaxy, moons)
-- VALUES
--   ('Earth','Milky Way'),
--   ('Mars','Milky Way'),
--   ('Venus', 0.62, 'The Sun', 'Milky Way', '{}'),
--   ('Neptune','Milky Way'),
--   ('Proxima Centauri b','Milky Way'),
--   ('Gliese 876 b','Milky Way');


-- INSERT INTO moons
--   (name)
--   VALUES
--   ('The Moon'),('Phobos'),('Deimos'),('Naiad'),('Thalassa'),('Despina'),('Galatea'),('Larissa'),
--   ('S/2004 N 1'),('Proteus'),('Triton'),('Nereid'),('Halimede'),('Sao'),('Laomedeia'),('Psamathe'),('Neso');

-- INSERT INTO orbit
--    (planet_id,duration_yrs,orbit_around)
--    VALUES
--    (1, 1.00, 'The Sun'),(2, 1.88, 'The Sun'),(3, 0.62, 'The Sun'),(4, 164.8, 'The Sun'),
--    (5, 0.03, 'Proxima Centauri'),(6, 0.23, 'Gliese 876');