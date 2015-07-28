DROP table if exists potluck;
CREATE TABLE potluck (
   id   INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(20),
   food VARCHAR(30),
   rsvp CHAR(15));
 
INSERT INTO party.potluck (name, food, rsvp) values ("Mike O",  "Pizza", "y");
INSERT INTO party.potluck (name, food, rsvp) values ("Brian C", "Muffins", "Maybe");
INSERT INTO party.potluck (name, food, rsvp) values ("Susan G", "Soda", "y");
INSERT INTO party.potluck (name, food, rsvp) values ("Sam P", "Chips", "y");
