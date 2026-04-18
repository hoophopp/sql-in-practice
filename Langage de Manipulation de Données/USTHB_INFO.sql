/*
==============================================================================
# IMPORTANT: DO NOT MODIFY THIS SCRIPT
# ==============================================================================
# Instructions :
# 1. Run this script as provided.
# 2. Do not change, delete, or rename any part of the code.
# 3. Any modification may lead to errors or incorrect results.
*/ 

-- Creation Departement table
CREATE TABLE Department (
    department_code VARCHAR(10),
    department_name VARCHAR(100) NOT NULL,
    CONSTRAINT pk_department PRIMARY KEY (department_code)
);
-- Creation Field table
CREATE TABLE Field (
    specialty_code VARCHAR(10),
    specialty_name VARCHAR(100) NOT NULL,
    program_type VARCHAR(50),
    department_ID VARCHAR(10),
    CONSTRAINT pk_field PRIMARY KEY (specialty_code),
    CONSTRAINT fk_field_dept FOREIGN KEY (department_ID) 
        REFERENCES Department(department_code)
);
-- Creation Section table 
CREATE TABLE Section (
    year_study VARCHAR(50),
    specialty_code VARCHAR(20),
    section_name VARCHAR(5), 
    CONSTRAINT fk_section_spec FOREIGN KEY(specialty_code) REFERENCES Field(specialty_code)
);