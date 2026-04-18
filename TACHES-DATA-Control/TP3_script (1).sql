CREATE SCHEMA Cinema;
USE Cinema;

#CREATING TABLES OF CINEMA DB
CREATE TABLE FILM
(
Title VARCHAR(50) PRIMARY key,
DURATION INT,
NATIONALITY VARCHAR(50),
DIRECTOR VARCHAR(50)
);

CREATE TABLE SCREENING 
( 
TITLE VARCHAR(50),
ROOM VARCHAR(50),
START_TIME TIME,
VERSION VARCHAR(50),
primary key(TITLE, ROOM, START_TIME),
#Foreign KEY (TITLE) REFERENCES FILM(TITLE)
FOREIGN KEY (TITLE) REFERENCES FILM(TITLE) on delete cascade
);

CREATE TABLE PLAYS
(
ACTOR VARCHAR(50),
TITLE VARCHAR(50),
PRIMARY KEY (ACTOR, TITLE),
#Foreign KEY (TITLE) REFERENCES FILM(TITLE)
Foreign KEY (TITLE) REFERENCES FILM(TITLE) on delete cascade
);

CREATE TABLE PRODUCES
(
PRODUCER VARCHAR(50),
TITLE VARCHAR(50),
PRIMARY KEY (PRODUCER, TITLE),
#Foreign KEY (TITLE) REFERENCES FILM(TITLE)
Foreign KEY (TITLE) REFERENCES FILM(TITLE) on delete cascade
);

CREATE TABLE SEEN
(
ACTOR VARCHAR(50),
TITLE VARCHAR(50),
PRIMARY KEY (ACTOR, TITLE),
#Foreign KEY (TITLE) REFERENCES FILM(TITLE)
Foreign KEY (TITLE) REFERENCES FILM(TITLE) on delete cascade
);


#INSERT ROWS
INSERT INTO FILM VALUES ('Body Guard', 120, 'US', 'Mark Gordon');
INSERT INTO FILM VALUES ('Les Incorruptibles', 160, 'US', 'Rickley Moore');
INSERT INTO FILM VALUES ('Perfect World', 150, 'US', 'Clint Eastwood');
INSERT INTO FILM VALUES ('Le Dernier Chateau', 132, 'US', 'Rod Lurie');
INSERT INTO FILM VALUES ('Le Negociateur', 140, 'US', 'David Auberman');
INSERT INTO FILM VALUES ('Le Destin De Will Hunting', 120, 'US', 'Gus Van Sant');
INSERT INTO FILM VALUES ('High Crimes', 115, 'US', 'Carl Francklin');
INSERT INTO FILM VALUES ('Le Parrain', 168, 'US', 'Francis Ford Coppola');
INSERT INTO FILM VALUES ('Spy Games', 127, 'US', 'Tony Scott');
INSERT INTO FILM VALUES ('Nous Etions Soldat', 139, 'US', 'Randall Wallace');
INSERT INTO FILM VALUES ('Top Gun', 127, 'US', 'Tony Scott');
INSERT INTO FILM VALUES ('Men', 140, 'US', 'Rickley Moore');
INSERT INTO FILM VALUES ('Le Pacificateur', 135, 'US', 'Ashley Jude');
INSERT INTO FILM VALUES ('Il Faut Sauver Le soldat Ryan', 162, 'US', 'Spielberg');
INSERT INTO FILM VALUES ('ET', 165, 'US', 'Spielberg');
INSERT INTO FILM VALUES ('Indiana Jones', 170, 'US', 'Spielberg');

INSERT INTO PLAYS VALUES ('Kevin Costner', 'Perfect World');
INSERT INTO PLAYS VALUES ('Kevin Costner', 'Les Incorruptibles');
INSERT INTO PLAYS VALUES ('Kevin Costner', 'Body Guard');
INSERT INTO PLAYS VALUES ('Clint Eastwood', 'Perfect World');
INSERT INTO PLAYS VALUES ('Tom Cruise', 'Top Gun');
INSERT INTO PLAYS VALUES ('Tom Cruise', 'Men');
INSERT INTO PLAYS VALUES ('Nicole Kidman', 'Men');
INSERT INTO PLAYS VALUES ('Nicole Kidman', 'Le Pacificateur');
INSERT INTO PLAYS VALUES ('Harisson Ford', 'Indiana Jones');
INSERT INTO PLAYS VALUES ('Tom Hanks', 'Il Faut Sauver Le soldat Ryan');
INSERT INTO PLAYS VALUES ('Aaron Smith', 'Indiana Jones');
INSERT INTO PLAYS VALUES ('Aaron Smith', 'Il Faut Sauver Le soldat Ryan');
INSERT INTO PLAYS VALUES ('Aaron Smith', 'ET');
INSERT INTO PLAYS VALUES ('Amanda Peet', 'Indiana Jones');
INSERT INTO PLAYS VALUES ('Amanda Peet', 'Il Faut Sauver Le soldat Ryan');
INSERT INTO PLAYS VALUES ('Amanda Peet', 'ET');
INSERT INTO PLAYS VALUES ('Amanda Peet', 'Top Gun');
INSERT INTO PRODUCES VALUES ('Clint Eastwood', 'Perfect World');
INSERT INTO PRODUCES VALUES ('Adam Moore', 'Men');
INSERT INTO PRODUCES VALUES ('Alex May', 'Top Gun');
INSERT INTO PRODUCES VALUES ('Roger Taylor', 'Indiana Jones');

INSERT INTO SCREENING VALUES ('Indiana Jones', 'Alpha', '13:00', 'VF');
INSERT INTO SCREENING VALUES ('Body Guard', 'Alpha', '21:00', 'VO');
INSERT INTO SCREENING VALUES ('Les Incorruptibles', 'Ibn Zeidoun', '13:00', 'VO');
INSERT INTO SCREENING VALUES ('ET', 'Ibn Zeidoun', '11:00', 'VO');
INSERT INTO SCREENING VALUES ('Top Gun', 'Ibn Zeidoun', '15:00', 'VO');
INSERT INTO SCREENING VALUES ('Top Gun', 'Alpha', '09:00', 'VF');
INSERT INTO SCREENING VALUES ('Men', 'Beta', '11:00', 'VF');
INSERT INTO SCREENING VALUES ('Le Pacificateur', 'Beta', '23:00', 'VF');

INSERT INTO SEEN VALUES ('Kevin Costner', 'Perfect World');
INSERT INTO SEEN VALUES ('Kevin Costner', 'Les Incorruptibles');
INSERT INTO SEEN VALUES ('Kevin Costner', 'Body Guard');
INSERT INTO SEEN VALUES ('Kevin Costner', 'ET');
INSERT INTO SEEN VALUES ('Tom Cruise', 'Top Gun');
INSERT INTO SEEN VALUES ('Tom Cruise', 'Men');
INSERT INTO SEEN VALUES ('Tom Hanks', 'Men');



#DROP schema cinema; to delete the database 