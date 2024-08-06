-- Crea la tabla de auditoría si no existe
CREATE TABLE IF NOT EXISTS PATIENT_AUDIT (
    audit_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    patient_id INT UNSIGNED,
    action VARCHAR(50),
    action_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (audit_id)
);

-- Crea el TRIGGER para auditar inserciones y borrados en la tabla PATIENTS
DELIMITER //
CREATE TRIGGER patient_insert_audit
AFTER INSERT ON PATIENTS
FOR EACH ROW
BEGIN
    -- Auditar inserción
    INSERT INTO PATIENT_AUDIT (patient_id, action)
    VALUES (NEW.patient_id, 'INSERT');
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER patient_delete_audit
AFTER DELETE ON PATIENTS
FOR EACH ROW
BEGIN
    -- Auditar borrado
    INSERT INTO PATIENT_AUDIT (patient_id, action)
    VALUES (OLD.patient_id, 'DELETE');
END //
DELIMITER ;