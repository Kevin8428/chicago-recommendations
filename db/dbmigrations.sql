CREATE DATABASE chicago_recommendations;
\c chicago_recommendations;

CREATE TABLE recommendations (id SERIAL PRIMARY KEY, contributor TEXT, place TEXT, notes TEXT, typeOfPlace TEXT);

-- INSERT INTO recommendations (contributor, place, notes, typeOfPlace) VALUES ('James T','Addler Planetarium','Check out Addler after dar. It is a monthly event run after the museum closes. They have guests, a low-key vibe, and serve alcohol','planetarium, museum');
-- INSERT INTO recommendations (contributor, place, notes, typeOfPlace) VALUES ('Jeff Steed','After-words New and Used Books','A good new and used book store downtown near GA and the Jazz Record Mart','New and Used Book Store');
-- INSERT INTO recommendations (contributor, place, notes, typeOfPlace) VALUES ('Sam Groesch','Chicago History Museum','I like museums and this is a pretty cool one','museum');
-- INSERT INTO recommendations (contributor, place, notes, typeOfPlace) VALUES ('','','','');
-- INSERT INTO recommendations (contributor, place, notes, typeOfPlace) VALUES ('','','','');
-- INSERT INTO recommendations (contributor, place, notes, typeOfPlace) VALUES ('','','','');
-- INSERT INTO recommendations (contributor, place, notes, typeOfPlace) VALUES ('','','','');
-- INSERT INTO recommendations (contributor, place, notes, typeOfPlace) VALUES ('','','','');

\dt
