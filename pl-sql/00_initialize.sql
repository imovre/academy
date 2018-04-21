CREATE TABLE languages (
    id NUMBER   NOT NULL,
    name VARCHAR(255)   NOT NULL,
    iso_code VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_languages PRIMARY KEY (
        id
     )
);

CREATE TABLE company_positions (
    id NUMBER   NOT NULL,
    name VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_company_positions PRIMARY KEY (
        id
     )
);

CREATE TABLE roles (
    id NUMBER   NOT NULL,
    name VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_roles PRIMARY KEY (
        id
     )
);

CREATE TABLE users (
    id NUMBER   NOT NULL,
    first_name VARCHAR(255)   NOT NULL,
    last_name VARCHAR(255)   NOT NULL,
    full_name VARCHAR(500),
    language_id NUMBER   NOT NULL,
    mobile VARCHAR(255),
    company_position_id NUMBER   NOT NULL,
    role_id NUMBER   NOT NULL,
    gross_income DECIMAL(10, 2)   NOT NULL,
    task_count NUMBER,
    CONSTRAINT pk_users PRIMARY KEY (
        id
     )
);

CREATE TABLE place (
    id NUMBER,
    user_id NUMBER NOT NULL,
    bruto_placa DECIMAL(10, 2)   NOT NULL,
    broj_djece NUMBER DEFAULT 0 NOT NULL,
    broj_uzdrzavanih_osoba NUMBER DEFAULT 0 NOT NULL,
    mirovinski_stup_1 DECIMAL(10, 2),
    mirovinski_stup_2 DECIMAL(10, 2),
    ukupni_doprinosi_iz_bruta DECIMAL(10, 2),
    oporezivi_dohodak DECIMAL(10, 2),
    ukupni_porez DECIMAL(10, 2),
    ukupni_prirez DECIMAL(10, 2),
    ukupni_porez_i_prirez DECIMAL(10, 2),
    porezni_razred_id NUMBER,
    CONSTRAINT pk_place PRIMARY KEY (
        id
     )
);

CREATE TABLE olaksice (
    id NUMBER,
    naziv VARCHAR(255),
    vrijednost DECIMAL(10, 2),
    CONSTRAINT pk_place PRIMARY KEY (
        id
     )
);

CREATE TABLE porezni_razredi (
    id NUMBER,
    naziv VARCHAR(255),
    vrijednost DECIMAL(10, 2),
    CONSTRAINT pk_porezni_razredi PRIMARY KEY (
        id
     )
);

CREATE TABLE olaksica_user (
    id NUMBER,
    user_id NUMBER NOT NULL,
    olaksica_id NUMBER NOT NULL,
    CONSTRAINT pk_olaksica_user PRIMARY KEY (
        id
     )
);

CREATE TABLE clients (
    id NUMBER   NOT NULL,
    name VARCHAR(255)   NOT NULL,
    description VARCHAR(2048),
    address VARCHAR(512),
    task_count NUMBER DEFAULT 0,
    CONSTRAINT pk_clients PRIMARY KEY (
        id
     )
);

CREATE TABLE tasks (
    id NUMBER   NOT NULL,
    name VARCHAR(255)   NOT NULL,
    description VARCHAR(2048),
    user_id NUMBER,
    created_by_id NUMBER NOT NULL,
    client_id NUMBER,
    hours_predicted NUMBER,
    hours_spent NUMBER,
    hours_diff NUMBER,
    is_finished NUMBER(1),
    planned_finish_date DATE,
    finish_date DATE,
    is_late NUMBER(1),
    is_mine NUMBER(1),
    CONSTRAINT pk_tasks PRIMARY KEY (
        id
     )
);

CREATE TABLE products (
    id NUMBER   NOT NULL,
    name VARCHAR(255)   NOT NULL,
    description VARCHAR(2048),
    tax DECIMAL(12,2) NOT NULL,
    tax_value DECIMAL(12,2),
    mpc DECIMAL(12,2),
    vpc DECIMAL(12,2) NOT NULL,
    product_type VARCHAR(255),
    product_tax_group VARCHAR(255),
    expensive_description VARCHAR(255),
    CONSTRAINT pk_products PRIMARY KEY (
        id
     )
);

CREATE TABLE cities (
    id NUMBER   NOT NULL,
    name VARCHAR(255)   NOT NULL,
    surtax DECIMAL(5,2) NOT NULL,
    CONSTRAINT pk_cities PRIMARY KEY (
        id
     )
);


CREATE TABLE configurations (
    id NUMBER   NOT NULL,
    config_key VARCHAR(255) NOT NULL,
    config_value VARCHAR(2048),
    CONSTRAINT pk_configurations PRIMARY KEY (
        id
     )
);

ALTER TABLE users ADD CONSTRAINT fk_users_language_id FOREIGN KEY(language_id)
REFERENCES languages (id);

ALTER TABLE users ADD CONSTRAINT fk_users_company_position_id FOREIGN KEY(company_position_id)
REFERENCES company_positions (id);

ALTER TABLE users ADD CONSTRAINT fk_users_role_id FOREIGN KEY(role_id)
REFERENCES roles (id);

INSERT INTO languages VALUES (1, 'English', 'en');
INSERT INTO languages VALUES (2, 'Hrvatski', 'hr');

INSERT INTO company_positions VALUES (1, 'Director');
INSERT INTO company_positions VALUES (2, 'Project administrator');

INSERT INTO roles VALUES (1, 'Administrator');
INSERT INTO roles VALUES (2, 'User');
INSERT INTO roles VALUES (3, 'Guest');

INSERT INTO clients (id, name) VALUES (1, 'client 1');
INSERT INTO clients (id, name) VALUES (2, 'client 2');
INSERT INTO clients (id, name) VALUES (3, 'client 3');
INSERT INTO clients (id, name) VALUES (4, 'client 4');

INSERT INTO cities (id, name, surtax) VALUES (1, 'Zagreb', 0.19);
INSERT INTO cities (id, name, surtax) VALUES (2, 'Rijeka', 0.15);

INSERT INTO products (id, name, tax, vpc) VALUES (1, 'product 1', 0.25, 500);
INSERT INTO products (id, name, tax, vpc) VALUES (2, 'product 2', 0.15, 1000);
INSERT INTO products (id, name, tax, vpc) VALUES (3, 'product 3', 0.25, 200);
INSERT INTO products (id, name, tax, vpc) VALUES (4, 'product 4', 0.25, 100);
INSERT INTO products (id, name, tax, vpc) VALUES (5, 'product 5', 0.15, 170);
INSERT INTO products (id, name, tax, vpc) VALUES (6, 'product 6', 0.25, 22);

INSERT INTO olaksice (id, name, vrijednost) VALUES (1, 'Osnovni osobni odbitak', 3800);

INSERT INTO porezni_razredi (id, name, vrijednost_do, vrijednost) VALUES (1, '24%', 17500, 0.24);
INSERT INTO porezni_razredi (id, name, vrijednost_do, vrijednost) VALUES (2, '36%', null, 0.36);

INSERT INTO configurations (id, config_key, config_value) VALUES (1, 'tax', '0.25');

INSERT INTO users
    (id, first_name, last_name, language_id, mobile, company_position_id, role_id, gross_income)
VALUES
    (1, 'Celina', 'Scott', 1, '098 112 221', 1, 1, 9000);

INSERT INTO users
    (id, first_name, last_name, language_id, mobile, company_position_id, role_id, gross_income)
VALUES
    (2, 'Arron', 'Mason', 1, '091 112 222', 2, 2, 10000);

INSERT INTO users
    (id, first_name, last_name, language_id, mobile, company_position_id, role_id, gross_income)
VALUES
    (3, 'John', 'Doe', 1, '092 112 222', 1, 2, 11000);

