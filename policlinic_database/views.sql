-- Eliminar vistas si existen
DROP VIEW IF EXISTS patient_consultations;
DROP VIEW IF EXISTS patient_payments;

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
    COALESCE(SUM(CASE WHEN py.medical_consult_id IS NOT NULL THEN py.amount ELSE 0 END), 0) AS total_medical_payments,
    COALESCE(SUM(CASE WHEN py.technical_consult_id IS NOT NULL THEN py.amount ELSE 0 END), 0) AS total_technical_payments,
    COALESCE(SUM(py.amount), 0) AS total_payments
FROM 
    Patients p
LEFT JOIN 
    Medical_Consults mc ON mc.patient_id = p.patient_id
LEFT JOIN 
    Payments py ON py.medical_consult_id = mc.medical_consult_id
LEFT JOIN 
    Technical_Consults tc ON tc.patient_id = p.patient_id
LEFT JOIN 
    Payments py_tech ON py_tech.technical_consult_id = tc.technical_consult_id
GROUP BY 
    p.patient_id;
//
DELIMITER ;