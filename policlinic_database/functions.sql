USE policlinic_db;

DROP FUNCTION IF EXISTS get_total_payment;
DROP FUNCTION IF EXISTS patients_by_doctor;

-- Funcion para ver pago total del paciente
DELIMITER //

CREATE FUNCTION get_total_payment(patient_id_input INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total_payments DECIMAL(10, 2) DEFAULT 0.00;
    DECLARE medical_payments DECIMAL(10, 2) DEFAULT 0.00;
    DECLARE technical_payments DECIMAL(10, 2) DEFAULT 0.00;
    
    -- Sumar los pagos para consultas médicas
    SELECT COALESCE(SUM(amount), 0.00)
    INTO medical_payments
    FROM PAYMENTS
    WHERE medical_consult_id IN (
        SELECT medical_consult_id 
        FROM policlinic_db.MEDICAL_CONSULTS 
        WHERE patient_id = patient_id_input
    );
    
    -- Sumar los pagos para consultas técnicas
    SELECT COALESCE(SUM(amount), 0.00)
    INTO technical_payments
    FROM PAYMENTS
    WHERE technical_consult_id IN (
        SELECT technical_consult_id 
        FROM policlinic_db.TECHNICAL_CONSULTS 
        WHERE patient_id = patient_id_input
    );
    
    -- Calcular el total de pagos sumando ambas cantidades
    SET total_payments = medical_payments + technical_payments;
    
    -- Retornar el total de pagos
    RETURN total_payments;
END //

DELIMITER ;

-- Funcion para ver cuantos pacientes atendió un doctor
DELIMITER //

CREATE FUNCTION patients_by_doctor(p_doctor_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE patient_count INT;

    SELECT COUNT(DISTINCT patient_id)
    INTO patient_count
    FROM policlinic_db.MEDICAL_CONSULTS
    WHERE doctor_id = p_doctor_id;

    RETURN patient_count;
END //

DELIMITER ;
