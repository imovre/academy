CREATE TABLE studenti (
    id number,
    ime varchar(50),
    prezime varchar(50),
    primary key (id)
);

/

CREATE TABLE predmeti (
    id number,
    naziv varchar(50),
    primary key (id)
);

/

CREATE TABLE ocjene (
    id number,
    student_id number,
    predmet_id number,
    ocjena number,
    primary key (id),
    
    CONSTRAINT fk_ocjene_student
    FOREIGN KEY (student_id)
    REFERENCES studenti (id),
    
    CONSTRAINT fk_ocjene_predmet
    FOREIGN KEY (predmet_id)
    REFERENCES predmeti (id)
);

/

insert into studenti values (1, 'marko', 'markovic');
insert into studenti values (2, 'pero', 'peric');

/

insert into predmeti values (1, 'informatika');
insert into predmeti values (2, 'matematika');

/

insert into ocjene values (1, 1, 1, 5);
insert into ocjene values (2, 2, 1, 5);
insert into ocjene values (3, 1, 2, 3);

/

SELECT studenti.*, ocjene.ocjena, predmeti.naziv FROM ocjene
    INNER JOIN studenti
        ON studenti.id = ocjene.student_id
    INNER JOIN predmeti
        ON predmeti.id = ocjene.predmet_id;

/

CREATE TABLE vozaci (
    id number,
    ime varchar(50),
    prezime varchar(50),
    primary key (id)
);

/

CREATE TABLE gradovi (
    id number,
    naziv varchar(50),
    primary key (id)
);

/

CREATE TABLE vozila (
    id number,
    grad_id number,
    vozac_id number,
    marka varchar(255),
    primary key (id),
    
    CONSTRAINT fk_vozila_grad
    FOREIGN KEY (grad_id)
    REFERENCES gradovi (id),
    
    CONSTRAINT fk_vozila_vozac
    FOREIGN KEY (vozac_id)
    REFERENCES vozaci (id)
);

/

insert into vozaci values (1, 'marko', 'markovic');
insert into vozaci values (2, 'pero', 'peric');

/

insert into gradovi values (1, 'zagreb');
insert into gradovi values (2, 'osijek');

/

insert into vozila values (1, 1, 1, 'hyundai');
insert into vozila values (2, 2, 2, 'opel');

/

SELECT vozaci.*, gradovi.naziv, vozila.marka FROM vozila
    INNER JOIN vozaci
        ON vozaci.id = vozila.vozac_id
    INNER JOIN gradovi
        ON gradovi.id = vozila.grad_id;

/
