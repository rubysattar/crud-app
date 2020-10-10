CREATE TABLE person (
    person_id integer IDENTITY,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    email_address varchar(50) NOT NULL,
    street_address varchar(50) NOT NULL,
    city varchar(50) NOT NULL,
    state varchar(2) NOT NULL,
    zip_code varchar(5) NOT NULL,
    PRIMARY KEY (person_id)
);
CREATE TABLE clients (
    client_id integer IDENTITY,
    company_name varchar(50) NOT NULL,
    website_uri varchar(50) NOT NULL,
    phone_number varchar(10) NOT NULL,
    street_address varchar(50) NOT NULL,
    city varchar(50) NOT NULL,
    state varchar(2) NOT NULL,
    zip_code varchar(5) NOT NULL,
    person_id int,
    PRIMARY KEY (client_id),
    FOREIGN KEY (person_id) REFERENCES person(person_id)
);
CREATE TABLE contacts (
    contact_id integer IDENTITY,
    name varchar(20) NOT NULL,
    profession varchar(50) NOT NULL,
    client_id int,
    PRIMARY KEY (contact_id),
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
)
