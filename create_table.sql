-- Create Table statements
-- Author: eoin.keady@gmail.com
-- Date: 01-Dec-2017
CREATE TABLE hospital.patient (
    patient_id     NUMBER(6,0)
        CONSTRAINT pat_pk PRIMARY KEY,
    first_name     VARCHAR2(20 BYTE),
    last_name      VARCHAR2(25 BYTE)
        CONSTRAINT "PAT_LAST_NAME_NN" NOT NULL ENABLE,
    email          VARCHAR2(50 BYTE)
        CONSTRAINT "PAT_EMAIL_NN" NOT NULL ENABLE,
    phone_number   VARCHAR2(20 BYTE)
);

CREATE TABLE hospital.ward (
    ward_id     NUMBER(5,0)
        CONSTRAINT ward_pk PRIMARY KEY,
    ward_name   VARCHAR(50) NOT NULL
);

CREATE TABLE hospital.room (
    room_id        NUMBER(6,0)
        CONSTRAINT room_pk PRIMARY KEY,
    floor_number   NUMBER(1,0) NOT NULL,
    ward_id        NUMBER(5,0) NOT NULL
        CONSTRAINT ward_fk
            REFERENCES hospital.ward ( ward_id )
);

CREATE TABLE hospital.nurse (
    nurse_id     NUMBER(4,0)
        CONSTRAINT nurse_pk PRIMARY KEY,
    first_name   VARCHAR(20) NOT NULL,
    last_name    VARCHAR(25) NOT NULL,
    ward_id      NUMBER(5,0) NOT NULL
        CONSTRAINT nurse_ward
            REFERENCES hospital.ward ( ward_id )
);

CREATE TABLE hospital.physician (
    physician_id   NUMBER(3,0)
        CONSTRAINT physician_pk PRIMARY KEY,
    first_name     VARCHAR(20) NOT NULL,
    last_name      VARCHAR(25) NOT NULL,
    ward_id        NUMBER(5,0) NOT NULL
        CONSTRAINT ward_phy_fk
            REFERENCES hospital.ward ( ward_id )
);

CREATE TABLE hospital.operation (
    operation_id     NUMBER(3,0) NOT NULL
        CONSTRAINT op_pk PRIMARY KEY,
    procedure_name   VARCHAR(20) NOT NULL,
    description      VARCHAR(4000)
);

CREATE TABLE hospital.treatment (
    physician_id   NUMBER(3,0) NOT NULL
        CONSTRAINT phy_fk
            REFERENCES hospital.physician ( physician_id ),
    operation_id   NUMBER(3,0) NOT NULL
        CONSTRAINT op_fk
            REFERENCES hospital.operation ( operation_id ),
    patient_id     NUMBER(6,0) NOT NULL
        CONSTRAINT treatment_pat_fk
            REFERENCES hospital.patient ( patient_id ),
    start_date     DATE
);

CREATE TABLE hospital.drug (
    drug_id     NUMBER(8,0) NOT NULL
        CONSTRAINT drug_pk PRIMARY KEY,
    drug_name   VARCHAR(20) NOT NULL
);

CREATE TABLE hospital.prescription (
    prescription_id   NUMBER(8,0) NOT NULL
        CONSTRAINT presc_pk PRIMARY KEY,
    patient_id        NUMBER(6,0)
        CONSTRAINT pat_fk
            REFERENCES hospital.patient ( patient_id ),
    drug_id           NUMBER(8,0)
        CONSTRAINT drug_fk
            REFERENCES hospital.drug ( drug_id ),
    dose              VARCHAR2(32),
    end_date          DATE
);

CREATE TABLE hospital.appointment (
    appointment_id   NUMBER(4,0)
        CONSTRAINT app_pk PRIMARY KEY,
    patient_id       NUMBER(6,0) NOT NULL
        CONSTRAINT app_pat_fk
            REFERENCES hospital.patient ( patient_id ),
    physician_id     NUMBER(3,0) NOT NULL
        CONSTRAINT app_phy_fk
            REFERENCES hospital.physician ( physician_id ),
    start_date       DATE DEFAULT SYSDATE,
    room_id          NUMBER(6,0) NOT NULL
        CONSTRAINT app_room_fk
            REFERENCES hospital.room ( room_id )
);

CREATE TABLE hospital.stay (
    admission_id   NUMBER(8,0)
        CONSTRAINT adm_pk PRIMARY KEY,
    start_date     DATE DEFAULT ( SYSDATE ),
    end_date       DATE,
    room_id        NUMBER(6,0) NOT NULL,
    patient_id     NUMBER(6,0)
        CONSTRAINT adm_pat_fk
            REFERENCES hospital.patient ( patient_id ),
    --Adding a constraint so that the end date of a stay can't be before the start date
    CONSTRAINT check_dates CHECK ( start_date < end_date )
);