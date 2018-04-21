BEGIN
   FOR cur_rec IN (SELECT object_name, object_type
                     FROM user_objects
                    WHERE object_type IN
                             ('TABLE',
                              'VIEW',
                              'PACKAGE',
                              'PROCEDURE',
                              'FUNCTION',
                              'SEQUENCE',
                              'SYNONYM',
                              'PACKAGE BODY'
                             ))
   LOOP
      BEGIN
         IF cur_rec.object_type = 'TABLE'
         THEN
            EXECUTE IMMEDIATE    'DROP '
                              || cur_rec.object_type
                              || ' "'
                              || cur_rec.object_name
                              || '" CASCADE CONSTRAINTS';
         ELSE
            EXECUTE IMMEDIATE    'DROP '
                              || cur_rec.object_type
                              || ' "'
                              || cur_rec.object_name
                              || '"';
         END IF;
      EXCEPTION
         WHEN OTHERS
         THEN
            DBMS_OUTPUT.put_line (   'FAILED: DROP '
                                  || cur_rec.object_type
                                  || ' "'
                                  || cur_rec.object_name
                                  || '"'
                                 );
      END;
   END LOOP;
END;

/

CREATE TABLE mjesta (
    id NUMBER   NOT NULL,
    naziv VARCHAR(255)   NOT NULL,
    prosjek DECIMAL DEFAULT 0,
    CONSTRAINT pk_mjesta PRIMARY KEY (
        id
     )
);

CREATE TABLE smjerovi (
    id NUMBER   NOT NULL,
    naziv VARCHAR(255)   NOT NULL,
    prosjek DECIMAL DEFAULT 0,
    aktivan NUMBER(1),
    CONSTRAINT pk_smjerovi PRIMARY KEY (
        id
     )
);

CREATE TABLE predmeti (
    id NUMBER   NOT NULL,
    naziv VARCHAR(255)   NOT NULL,
    aktivan NUMBER(1),
    CONSTRAINT pk_predmeti PRIMARY KEY (
        id
     )
);

CREATE TABLE profesori (
    id NUMBER   NOT NULL,
    ime VARCHAR(40)   NOT NULL,
    prezime VARCHAR(40)   NOT NULL,
    prosjek DECIMAL DEFAULT 0,
    broj_predmeta NUMBER,
    CONSTRAINT pk_profesori PRIMARY KEY (
        id
     )
);

CREATE TABLE studenti (
    id NUMBER   NOT NULL,
    ime VARCHAR(40)   NOT NULL,
    prezime VARCHAR(40)   NOT NULL,
    prosjek DECIMAL DEFAULT 0,
    mjesto_id NUMBER   NOT NULL,
    smjer_id NUMBER   NOT NULL,
    CONSTRAINT pk_studenti PRIMARY KEY (
        id
     )
);

CREATE TABLE predmeti_studenti (
    id NUMBER   NOT NULL,
    student_id NUMBER   NOT NULL,
    predmet_id NUMBER   NOT NULL,
    CONSTRAINT pk_predmeti_studenti PRIMARY KEY (
        id
     )
);

CREATE TABLE predmeti_profesori (
    id NUMBER   NOT NULL,
    profesor_id NUMBER   NOT NULL,
    predmet_id NUMBER   NOT NULL,
    CONSTRAINT pk_predmeti_profesori PRIMARY KEY (
        id
     )
);

CREATE TABLE ocjene (
    id NUMBER   NOT NULL,
    student_id NUMBER   NOT NULL,
    predmet_id NUMBER   NOT NULL,
    ocjena NUMBER   NOT NULL,
    CONSTRAINT pk_ocjene PRIMARY KEY (
        id
     )
);

ALTER TABLE ocjene ADD CONSTRAINT fk_ocjene_student_id FOREIGN KEY(student_id)
REFERENCES studenti (id);

ALTER TABLE ocjene ADD CONSTRAINT fk_ocjene_predmet_id FOREIGN KEY(predmet_id)
REFERENCES predmeti (id);

ALTER TABLE studenti ADD CONSTRAINT fk_studenti_mjesto_id FOREIGN KEY(mjesto_id)
REFERENCES mjesta (id);

ALTER TABLE studenti ADD CONSTRAINT fk_studenti_smjer_id FOREIGN KEY(smjer_id)
REFERENCES smjerovi (id);

ALTER TABLE predmeti_studenti ADD CONSTRAINT fk_predmeti_student_id FOREIGN KEY(student_id)
REFERENCES studenti (id);

ALTER TABLE predmeti_studenti ADD CONSTRAINT fk_predmeti_predmet_id FOREIGN KEY(predmet_id)
REFERENCES predmeti (id);

ALTER TABLE predmeti_profesori ADD CONSTRAINT fk_profesori_profesor_id FOREIGN KEY(profesor_id)
REFERENCES profesori (id);

ALTER TABLE predmeti_profesori ADD CONSTRAINT fk_profesori_predmet_id FOREIGN KEY(predmet_id)
REFERENCES predmeti (id);

INSERT INTO mjesta (id, naziv) VALUES (1, 'Zagreb');
INSERT INTO mjesta (id, naziv) VALUES (2, 'Rijeka');
INSERT INTO mjesta (id, naziv) VALUES (3, 'Split');
INSERT INTO mjesta (id, naziv) VALUES (4, 'Osijek');

INSERT INTO smjerovi (id, naziv) VALUES (1, 'Informatika');
INSERT INTO smjerovi (id, naziv) VALUES (2, 'Računarstvo');
INSERT INTO smjerovi (id, naziv) VALUES (3, 'Sistemsko inženjerstvo');
INSERT INTO smjerovi (id, naziv) VALUES (4, 'Održavanje sustava');

INSERT INTO predmeti (id, naziv) VALUES (1, 'Matematika');
INSERT INTO predmeti (id, naziv) VALUES (2, 'Informatika');
INSERT INTO predmeti (id, naziv) VALUES (3, 'Programiranje');
INSERT INTO predmeti (id, naziv) VALUES (4, 'Baze podataka');

INSERT INTO profesori (id, ime, prezime, prosjek, broj_predmeta) VALUES (1, 'Marko', 'Perić', 0, 0);
INSERT INTO profesori (id, ime, prezime, prosjek, broj_predmeta) VALUES (2, 'Ivana', 'Perković', 0, 0);
INSERT INTO profesori (id, ime, prezime, prosjek, broj_predmeta) VALUES (3, 'Petar', 'Marulić', 0, 0);
INSERT INTO profesori (id, ime, prezime, prosjek, broj_predmeta) VALUES (4, 'Miro', 'Kanić', 0, 0);

INSERT INTO studenti (id, ime, prezime, prosjek, mjesto_id, smjer_id) VALUES (1, 'Matej', 'Perić', 0, 1, 2);
INSERT INTO studenti (id, ime, prezime, prosjek, mjesto_id, smjer_id) VALUES (2, 'Marko', 'Perković', 2, 3, 1);
INSERT INTO studenti (id, ime, prezime, prosjek, mjesto_id, smjer_id) VALUES (3, 'Ivana', 'Marulić', 3, 4, 2);
INSERT INTO studenti (id, ime, prezime, prosjek, mjesto_id, smjer_id) VALUES (4, 'Petar', 'Kanić', 4, 1, 3);
INSERT INTO studenti (id, ime, prezime, prosjek, mjesto_id, smjer_id) VALUES (5, 'Marko', 'Perić', 2, 1, 4);
INSERT INTO studenti (id, ime, prezime, prosjek, mjesto_id, smjer_id) VALUES (6, 'Ivan', 'Perković', 3, 1, 2);
INSERT INTO studenti (id, ime, prezime, prosjek, mjesto_id, smjer_id) VALUES (7, 'Silvio', 'Marulić', 2, 2, 3);
INSERT INTO studenti (id, ime, prezime, prosjek, mjesto_id, smjer_id) VALUES (8, 'Ivana', 'Kanić', 1, 1, 4);

INSERT INTO predmeti_studenti (id, student_id, predmet_id) VALUES (1, 1, 1);
INSERT INTO predmeti_studenti (id, student_id, predmet_id) VALUES (2, 1, 2);
INSERT INTO predmeti_studenti (id, student_id, predmet_id) VALUES (3, 2, 3);
INSERT INTO predmeti_studenti (id, student_id, predmet_id) VALUES (4, 2, 4);
INSERT INTO predmeti_studenti (id, student_id, predmet_id) VALUES (5, 3, 1);
INSERT INTO predmeti_studenti (id, student_id, predmet_id) VALUES (6, 3, 2);
INSERT INTO predmeti_studenti (id, student_id, predmet_id) VALUES (7, 4, 3);
INSERT INTO predmeti_studenti (id, student_id, predmet_id) VALUES (8, 4, 4);

INSERT INTO predmeti_profesori (id, profesor_id, predmet_id) VALUES (1, 1, 1);
INSERT INTO predmeti_profesori (id, profesor_id, predmet_id) VALUES (2, 1, 2);
INSERT INTO predmeti_profesori (id, profesor_id, predmet_id) VALUES (3, 2, 3);
INSERT INTO predmeti_profesori (id, profesor_id, predmet_id) VALUES (4, 2, 4);
INSERT INTO predmeti_profesori (id, profesor_id, predmet_id) VALUES (5, 3, 1);
INSERT INTO predmeti_profesori (id, profesor_id, predmet_id) VALUES (6, 3, 2);
INSERT INTO predmeti_profesori (id, profesor_id, predmet_id) VALUES (7, 4, 3);
INSERT INTO predmeti_profesori (id, profesor_id, predmet_id) VALUES (8, 4, 4);

INSERT INTO ocjene (id, student_id, predmet_id, ocjena) VALUES (1, 1, 1, 5);
INSERT INTO ocjene (id, student_id, predmet_id, ocjena) VALUES (2, 1, 2, 4);
INSERT INTO ocjene (id, student_id, predmet_id, ocjena) VALUES (3, 2, 3, 5);
INSERT INTO ocjene (id, student_id, predmet_id, ocjena) VALUES (4, 2, 4, 3);
INSERT INTO ocjene (id, student_id, predmet_id, ocjena) VALUES (5, 3, 1, 2);
INSERT INTO ocjene (id, student_id, predmet_id, ocjena) VALUES (6, 3, 2, 3);
INSERT INTO ocjene (id, student_id, predmet_id, ocjena) VALUES (7, 4, 3, 2);
INSERT INTO ocjene (id, student_id, predmet_id, ocjena) VALUES (8, 4, 4, 3);
INSERT INTO ocjene (id, student_id, predmet_id, ocjena) VALUES (9, 1, 1, 5);
INSERT INTO ocjene (id, student_id, predmet_id, ocjena) VALUES (10, 1, 2, 4);
INSERT INTO ocjene (id, student_id, predmet_id, ocjena) VALUES (11, 2, 3, 3);
INSERT INTO ocjene (id, student_id, predmet_id, ocjena) VALUES (12, 2, 4, 3);
INSERT INTO ocjene (id, student_id, predmet_id, ocjena) VALUES (13, 3, 1, 2);
INSERT INTO ocjene (id, student_id, predmet_id, ocjena) VALUES (14, 3, 2, 3);
INSERT INTO ocjene (id, student_id, predmet_id, ocjena) VALUES (15, 4, 3, 2);
INSERT INTO ocjene (id, student_id, predmet_id, ocjena) VALUES (16, 4, 4, 3);
