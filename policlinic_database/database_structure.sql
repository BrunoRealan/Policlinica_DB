-- Eliminar la base de datos si existe y crearla nuevamente
DROP DATABASE IF EXISTS policlinic_db;

-- Crear la base de datos
CREATE DATABASE policlinic_db;

-- Seleccionar la base de datos
USE policlinic_db;

-- Crear tabla Pacientes
CREATE TABLE patients (
    patient_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    birth_date DATE NOT NULL,
    gender ENUM('M', 'F', 'O') NOT NULL,
    address VARCHAR(255),
    phone VARCHAR(20),
    email VARCHAR(255),
    PRIMARY KEY (patient_id)
);

-- Crear tabla Medicos
CREATE TABLE doctors (
    doctor_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    specialty VARCHAR(100) NOT NULL,
    license_number VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(255),
    PRIMARY KEY (doctor_id)
);

-- Crear tabla Tecnicos
CREATE TABLE technicians (
    technician_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    technician_type VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(255),
    PRIMARY KEY (technician_id)
);

-- Crear tabla Consultas Medicas
CREATE TABLE medical_consults (
    medical_consult_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    medical_consult_date DATE NOT NULL,
    medical_consult_time TIME NOT NULL,
    patient_id INT UNSIGNED NOT NULL,
    doctor_id INT UNSIGNED NOT NULL,
    medical_consult_type ENUM('General', 'Especializado') NOT NULL,
    PRIMARY KEY (medical_consult_id)
);

-- Crear tabla Consultas Técnicas
CREATE TABLE technical_consults (
    technical_consult_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    technical_consult_date DATE NOT NULL,
    technical_consult_time TIME NOT NULL,
    patient_id INT UNSIGNED NOT NULL,
    technician_id INT UNSIGNED NOT NULL,
    notes TEXT,
    PRIMARY KEY (technical_consult_id)
);

-- Crear tabla Historia Clinica
CREATE TABLE medical_record (
    record_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    patient_id INT UNSIGNED NOT NULL,
    consult_date DATE NOT NULL,
    diagnosis TEXT NOT NULL,
    treatment TEXT,
    notes TEXT,
    PRIMARY KEY (record_id)
);

-- Crear tabla Pagos
CREATE TABLE payments (
    payment_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    payment_date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_method ENUM('Efectivo', 'Credito', 'Debito', 'Seguro') NOT NULL,
    medical_consult_id INT UNSIGNED,
    technical_consult_id INT UNSIGNED,
    PRIMARY KEY (payment_id)
);

-- Definición de Claves Foráneas

-- Consultas Médicas
ALTER TABLE medical_consults
ADD CONSTRAINT FK_patient_medical_consult
FOREIGN KEY (patient_id) REFERENCES Patients(patient_id);

ALTER TABLE medical_consults
ADD CONSTRAINT FK_doctor_medical_consult
FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id);

-- Consultas Técnicas
ALTER TABLE technical_consults
ADD CONSTRAINT FK_patient_technical_consult
FOREIGN KEY (patient_id) REFERENCES Patients(patient_id);

ALTER TABLE technical_consults
ADD CONSTRAINT FK_technician_technical_consult
FOREIGN KEY (technician_id) REFERENCES Technicians(technician_id);

-- Historia Clínica
ALTER TABLE medical_record
ADD CONSTRAINT FK_patient_medical_record
FOREIGN KEY (patient_id) REFERENCES Patients(patient_id);

-- Pagos
ALTER TABLE payments
ADD CONSTRAINT FK_med_consult_payment
FOREIGN KEY (medical_consult_id) REFERENCES Medical_Consults(medical_consult_id);

ALTER TABLE payments
ADD CONSTRAINT FK_tech_consult_payment
FOREIGN KEY (technical_consult_id) REFERENCES Technical_Consults(technical_consult_id);
