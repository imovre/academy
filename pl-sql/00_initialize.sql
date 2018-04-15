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

