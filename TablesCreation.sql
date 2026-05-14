/*
Tabella musei:
name: stringa (Primary key)
city: stringa
*/
CREATE TABLE museums (
    name VARCHAR(50) NOT NULL, 
    city VARCHAR(50) NOT NULL,

    -- con CONSTRAINT si da un'etichetta alla regola imposta
    -- dalla primary key, per evitare un'etichetta automatica
    -- del sistema che non è sempre comprensibile.
    CONSTRAINT pk_museums PRIMARY KEY (name)
);

/*
Tabella artisti:
name: stringa (Primary key)
nationality: stringa
birth_date: data (no orario)
death_date: data (no orario) nullable
*/
CREATE TABLE artists (
    name VARCHAR(50) NOT NULL,
    nationality VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    death_date DATE NULL,
  
    CONSTRAINT pk_artists PRIMARY KEY (name)
);

/*
Tabella opere:
id: intero auto incrementato (Primary key)
title: stringa
museum: stringa (Foreign key -> museums)
artist: stringa (Foreign key -> artists)
*/
CREATE TABLE works (
    id INTEGER NOT NULL AUTOINCREMENT,
    title VARCHAR(50) NOT NULL,
    museum VARCHAR(50) NOT NULL,
    artist VARCHAR(50) NOT NULL,

    --CONSTRAINT pk_works PRIMARY KEY (id)   

    CONSTRAINT fk_works_museum
        FOREIGN KEY (museum)
        REFERENCES museums (name)
  
    CONSTRAINT fk_works_artist
        FOREIGN KEY (artist)
        REFERENCES artists (name)
);

CREATE TABLE characters (
    name VARCHAR(50) NOT NULL,
    work_id INTEGER NOT NULL,

    CONSTRAINT pk_characters_name PRIMARY KEY (name)
    
    CONSTRAINT fk_characters_id
        FOREIGN KEY (work_id)
        REFERENCES works (id)
);
