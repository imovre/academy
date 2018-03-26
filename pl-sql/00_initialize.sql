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
    language_id NUMBER   NOT NULL,
    mobile VARCHAR(255)   NOT NULL,
    company_position_id NUMBER   NOT NULL,
    role_id NUMBER   NOT NULL,
    CONSTRAINT pk_users PRIMARY KEY (
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

INSERT INTO users
    (id, first_name, last_name, language_id, mobile, company_position_id, role_id)
VALUES
    (1, 'Celina', 'Scott', 1, '098 112 221', 1, 1);

INSERT INTO users
    (id, first_name, last_name, language_id, mobile, company_position_id, role_id)
VALUES
    (2, 'Arron', 'Mason', 1, '091 112 222', 2, 2);

INSERT INTO users
    (id, first_name, last_name, language_id, mobile, company_position_id, role_id)
VALUES
    (3, 'John', 'Doe', 1, '092 112 222', 1, 2);

