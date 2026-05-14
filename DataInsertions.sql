-- Data insertions

-- MUSEUMS (12)
INSERT INTO museums (name, city) VALUES
    ('National Gallery',            'London'),
    ('Galleria degli Uffizi',       'Florence'),
    ('Louvre',                      'Paris'),
    ('Museo del Prado',             'Madrid'),
    ('Galleria Borghese',           'Rome'),
    ('Museo di Capodimonte',        'Naples'),
    ('Uffizi Satellite',            'Florence'),
    ('Wax Museum',                  'London'),
    ('National Portrait Gallery',   'London'),
    ('Pinacoteca di Brera',         'Milan'),
    ('Museo Nazionale Romano',      'Rome'),
    ('Thyssen-Bornemisza',          'Madrid');

-- ARTISTS (12)
INSERT INTO artists (name, nationality, birth_date, death_date) VALUES
    ('Titian',      'Italian',  '1488-01-01', '1576-08-27'),
    ('Caravaggio',  'Italian',  '1571-09-29', '1610-07-18'),
    ('Botticelli',  'Italian',  '1445-03-01', '1510-05-17'),
    ('Leonardo',    'Italian',  '1452-04-15', '1519-05-02'),
    ('Raphael',     'Italian',  '1483-04-06', '1520-04-06'),
    ('Velázquez',   'Spanish',  '1599-06-06', '1660-08-06'),
    ('Goya',        'Spanish',  '1746-03-30', '1828-04-16'),
    ('El Greco',    'Spanish',  '1541-01-01', '1614-04-07'),
    ('Cimabue',     'Italian',  '1240-01-01', '1302-01-01'),
    ('Duccio',      'Italian',  '1255-01-01', '1319-01-01'),
    ('Rubens',      'Flemish',  '1577-06-28', '1640-05-30'),
    ('Rembrandt',   'Dutch',    '1606-07-15', '1669-10-04');

-- WORKS (25)
INSERT INTO works (title, museum, artist) VALUES
    ('Assumption of the Virgin',            'Galleria degli Uffizi',    'Titian'),
    ('Sacred and Profane Love',             'Galleria Borghese',        'Titian'),
    ('Venus of Urbino',                     'Galleria degli Uffizi',    'Titian'),
    ('Bacchus',                             'Galleria degli Uffizi',    'Titian'),
    ('Portrait of Charles V',               'National Gallery',         'Titian'),
    ('Madonna of the Pesaro Family',        'National Gallery',         'Titian'),
    ('Judith with the Head of Holofernes',  'Galleria degli Uffizi',    'Caravaggio'),
    ('Bacchus',                             'Galleria degli Uffizi',    'Caravaggio'),
    ('Supper at Emmaus',                    'National Gallery',         'Caravaggio'),
    ('David with the Head of Goliath',      'Galleria Borghese',        'Caravaggio'),
    ('Amor Vincit Omnia',                   'Louvre',                   'Caravaggio'),
    ('Birth of Venus',                      'Galleria degli Uffizi',    'Botticelli'),
    ('Primavera',                           'Galleria degli Uffizi',    'Botticelli'),
    ('Madonna of the Magnificat',           'Galleria degli Uffizi',    'Botticelli'),
    ('Mona Lisa',                           'Louvre',                   'Leonardo'),
    ('Madonna of the Carnation',            'National Gallery',         'Leonardo'),
    ('Sistine Madonna',                     'Galleria degli Uffizi',    'Raphael'),
    ('Madonna of the Goldfinch',            'Galleria degli Uffizi',    'Raphael'),
    ('Las Meninas',                         'Museo del Prado',          'Velázquez'),
    ('The Naked Maya',                      'Museo del Prado',          'Goya'),
    ('View of Toledo',                      'Museo del Prado',          'El Greco'),
    ('Madonna Enthroned',                   'Galleria degli Uffizi',    'Cimabue'),
    ('Prince William',                      'Wax Museum',               'Rembrandt'),
    ('The Night Watch',                     'Louvre',                   'Rembrandt'),
    ('The Three Graces',                    'Museo del Prado',          'Rubens');

-- CHARACTERS (10)
INSERT INTO characters (name, work_id) VALUES
    ('Madonna',     1),   -- Assumption of the Virgin
    ('Judith',      7),   -- Judith with the Head of Holofernes
    ('David',       10),  -- David with the Head of Goliath
    ('Mona Lisa',   15),  -- Mona Lisa
    ('Charles V',   5),   -- Portrait of Charles V
    ('Bacchus',     8),   -- Bacchus (Caravaggio)
    ('Venus',       12),  -- Birth of Venus
    ('Primavera',   13),  -- Primavera
    ('Graces',      25),  -- The Three Graces
    ('Toledo',      21);  -- View of Toledo









