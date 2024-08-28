USE policlinic_db;

-- Eliminar vistas si existen
DROP VIEW IF EXISTS doctor_consultation_quantity;
DROP VIEW IF EXISTS technician_consultation_quantity;
DROP VIEW IF EXISTS patient_consultations;
DROP VIEW IF EXISTS patient_payments;

-- Muestra número de consultas por médico
DELIMITER //
CREATE VIEW doctor_consultation_quantity AS
SELECT 
    d.doctor_id,
    CONCAT(d.first_name, ' ', d.last_name) AS doctor_name,
    COUNT(mc.medical_consult_id) AS total_consults
FROM 
    doctors d
LEFT JOIN 
    medical_consults mc ON d.doctor_id = mc.doctor_id
GROUP BY 
    d.doctor_id;
//
DELIMITER ;

-- Muestra número de consultas por técnico
DELIMITER //
CREATE VIEW technician_consultation_quantity AS
SELECT 
    t.technician_id,
    CONCAT(t.first_name, ' ', t.last_name) AS technician_name,
    COUNT(tc.technical_consult_id) AS total_consults
FROM 
    technicians t
LEFT JOIN 
    technical_consults tc ON t.technician_id = tc.technician_id
GROUP BY 
    t.technician_id;
//
DELIMITER ;

-- Muestra las consultas asociadas a cada paciente.
DELIMITER //
CREATE VIEW patient_consultations AS
SELECT 
    p.patient_id,
    CONCAT(p.first_name, ' ', p.last_name) AS patient_name,
    mc.medical_consult_id AS consult_id,
    mc.medical_consult_date AS consult_date,
    'Medical' AS consult_type,
    NULL AS technician_id,
    NULL AS technician_name,
    d.first_name AS doctor_first_name,
    d.last_name AS doctor_last_name
FROM 
    patients p
JOIN 
    medical_consults mc ON p.patient_id = mc.patient_id
JOIN 
    doctors d ON mc.doctor_id = d.doctor_id
UNION ALL
SELECT 
    p.patient_id,
    CONCAT(p.first_name, ' ', p.last_name) AS patient_name,
    tc.technical_consult_id AS consult_id,
    tc.technical_consult_date AS consult_date,
    'Technical' AS consult_type,
    tc.technician_id,
    CONCAT(t.first_name, ' ', t.last_name) AS technician_name,
    NULL AS doctor_first_name,
    NULL AS doctor_last_name
FROM 
    patients p
JOIN 
    technical_consults tc ON p.patient_id = tc.patient_id
JOIN 
    technicians t ON tc.technician_id = t.technician_id;
//
DELIMITER ;

-- Muestra los pagos totales realizados por cada paciente.
DELIMITER //
CREATE VIEW patient_payments AS
SELECT 
    p.patient_id,
    CONCAT(p.first_name, ' ', p.last_name) AS patient_name,
    COALESCE(medical.total_medical_payments, 0) AS total_medical_payments,
    COALESCE(tech.total_technical_payments, 0) AS total_technical_payments,
    COALESCE(medical.total_medical_payments, 0) + COALESCE(tech.total_technical_payments, 0) AS total_payments
FROM 
    Patients p
LEFT JOIN 
    (SELECT 
         mc.patient_id, 
         SUM(py.amount) AS total_medical_payments
     FROM 
         Medical_Consults mc
     LEFT JOIN 
         Payments py ON py.medical_consult_id = mc.medical_consult_id
     GROUP BY 
         mc.patient_id) medical ON medical.patient_id = p.patient_id
LEFT JOIN 
    (SELECT 
         tc.patient_id, 
         SUM(py_tech.amount) AS total_technical_payments
     FROM 
         Technical_Consults tc
     LEFT JOIN 
         Payments py_tech ON py_tech.technical_consult_id = tc.technical_consult_id
     GROUP BY 
         tc.patient_id) tech ON tech.patient_id = p.patient_id;
//
DELIMITER ;