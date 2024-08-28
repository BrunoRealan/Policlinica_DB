USE policlinic_db;

-- Eliminar procedimientos si existen
DROP PROCEDURE IF EXISTS insert_patient;
DROP PROCEDURE IF EXISTS get_patient_payments;

-- Procedimiento que inserta un nuevo registro paciente en la tabla PATIENTS
DELIMITER //
CREATE PROCEDURE insert_patient(
    IN firstName VARCHAR(100),
    IN lastName VARCHAR(100),
    IN birthDate DATE,
    IN gender ENUM('M', 'F', 'O'),
    IN address VARCHAR(255),
    IN phone VARCHAR(20),
    IN email VARCHAR(255)
)
BEGIN
    INSERT INTO PATIENTS (first_name, last_name, birth_date, gender, address, phone, email)
    VALUES (firstName, lastName, birthDate, gender, address, phone, email);
END //
DELIMITER ;

-- Recupera los pagos realizado por un paciente según su Id de paciente
DELIMITER //
CREATE PROCEDURE get_patient_payments(
    IN patientId INT
)
BEGIN
    SELECT 
        p.patient_id,
        CONCAT(p.first_name, ' ', p.last_name) AS patient_name,
        COALESCE(SUM(py.amount), 0) AS total_payments,
        COALESCE(SUM(CASE 
            WHEN py.medical_consult_id IS NOT NULL THEN py.amount 
            ELSE 0 
        END), 0) AS total_medical_payments,
        COALESCE(SUM(CASE 
            WHEN py.technical_consult_id IS NOT NULL THEN py.amount 
            ELSE 0 
        END), 0) AS total_technical_payments
    FROM 
        PATIENTS p
    LEFT JOIN 
        MEDICAL_CONSULTS mc ON p.patient_id = mc.patient_id
    LEFT JOIN 
        PAYMENTS py ON (
            py.medical_consult_id = mc.medical_consult_id 
            OR py.technical_consult_id IN (
                SELECT technical_consult_id 
                FROM TECHNICAL_CONSULTS 
                WHERE patient_id = p.patient_id
            )
        )
    WHERE 
        p.patient_id = patientId
    GROUP BY 
        p.patient_id;
END //
DELIMITER ;