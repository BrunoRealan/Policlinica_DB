-- Población de la tabla Patients
INSERT INTO PATIENTS (first_name, last_name, birth_date, gender, address, phone, email) 
VALUES 
    ('Juan', 'Pérez', '1985-06-15', 'M', 'Calle Falsa 123', '555-1234', 'juan.perez@example.com'),
    ('María', 'García', '1990-09-23', 'F', 'Avenida Siempreviva 456', '555-5678', 'maria.garcia@example.com'),
    ('Carlos', 'Martínez', '1978-02-17', 'M', 'Carrera 7 #89-45', '555-9876', 'carlos.martinez@example.com'),
    ('Ana', 'López', '1982-03-29', 'F', 'Calle 8 #34-67', '555-4321', 'ana.lopez@example.com'),
    ('Luis', 'Rodríguez', '1975-12-05', 'M', 'Avenida Central 12', '555-3456', 'luis.rodriguez@example.com'),
    ('Sofía', 'Hernández', '1993-07-14', 'F', 'Carrera 15 #20-30', '555-6789', 'sofia.hernandez@example.com'),
    ('Pedro', 'Gómez', '1988-11-11', 'M', 'Calle 10 #50-60', '555-7890', 'pedro.gomez@example.com'),
    ('Lucía', 'Díaz', '1995-05-20', 'F', 'Avenida Las Palmas 90', '555-2345', 'lucia.diaz@example.com'),
    ('José', 'Torres', '1983-08-19', 'M', 'Carrera 3 #22-44', '555-9870', 'jose.torres@example.com'),
    ('Elena', 'Ramos', '1979-04-25', 'F', 'Calle 9 #76-88', '555-8765', 'elena.ramos@example.com');


-- Población de la tabla Doctors
INSERT INTO DOCTORS (first_name, last_name, specialty, license_number, phone, email) 
VALUES 
    ('Andrés', 'Fernández', 'Cardiología', 'LIC123456', '555-1122', 'andres.fernandez@example.com'),
    ('Laura', 'Martín', 'Pediatría', 'LIC789012', '555-3344', 'laura.martin@example.com'),
    ('Miguel', 'Sánchez', 'Neurología', 'LIC345678', '555-5566', 'miguel.sanchez@example.com'),
    ('Carmen', 'Romero', 'Ginecología', 'LIC901234', '555-7788', 'carmen.romero@example.com'),
    ('José', 'Ramírez', 'Dermatología', 'LIC567890', '555-9900', 'jose.ramirez@example.com'),
    ('Raúl', 'Castro', 'Ortopedia', 'LIC123789', '555-2233', 'raul.castro@example.com'),
    ('Isabel', 'Ortiz', 'Oftalmología', 'LIC456901', '555-4455', 'isabel.ortiz@example.com'),
    ('Alberto', 'Moreno', 'Psiquiatría', 'LIC789345', '555-6677', 'alberto.moreno@example.com'),
    ('Clara', 'Jiménez', 'Endocrinología', 'LIC890123', '555-8899', 'clara.jimenez@example.com'),
    ('Luis', 'Núñez', 'Urología', 'LIC234567', '555-1123', 'luis.nunez@example.com');


-- Población de la tabla Technicians
INSERT INTO TECHNICIANS (first_name, last_name, technician_type, phone, email) 
VALUES 
    ('Ricardo', 'Muñoz', 'Técnico de Rayos X', '555-3345', 'ricardo.munoz@example.com'),
    ('Paula', 'Navarro', 'Técnico de Laboratorio', '555-5567', 'paula.navarro@example.com'),
    ('Javier', 'Ríos', 'Técnico de Resonancia', '555-7789', 'javier.rios@example.com'),
    ('Silvia', 'Pérez', 'Técnico de Ecografía', '555-9901', 'silvia.perez@example.com'),
    ('Manuel', 'Gutiérrez', 'Técnico de Laboratorio', '555-2234', 'manuel.gutierrez@example.com'),
    ('Marta', 'López', 'Técnico de Radioterapia', '555-4456', 'marta.lopez@example.com'),
    ('Fernando', 'Álvarez', 'Técnico de Radiología', '555-6678', 'fernando.alvarez@example.com'),
    ('Cristina', 'Vargas', 'Técnico de Tomografía', '555-8890', 'cristina.vargas@example.com'),
    ('Juan', 'Serrano', 'Técnico de Ultrasonido', '555-9902', 'juan.serrano@example.com'),
    ('Raquel', 'Ruiz', 'Técnico de Patología', '555-2235', 'raquel.ruiz@example.com');


-- Población de la tabla Medical_Consults
INSERT INTO MEDICAL_CONSULTS (medical_consult_date, medical_consult_time, patient_id, doctor_id, medical_consult_type)
VALUES 
    ('2024-07-01', '10:00:00', 1, 1, 'General'),
    ('2024-07-02', '11:30:00', 2, 2, 'Especializado'),
    ('2024-07-03', '14:00:00', 3, 2, 'General'),
    ('2024-07-04', '15:30:00', 4, 4, 'Especializado'),
    ('2024-07-05', '09:00:00', 5, 4, 'General'),
    ('2024-07-06', '10:45:00', 6, 6, 'Especializado'),
    ('2024-07-07', '12:15:00', 7, 7, 'General'),
    ('2024-07-08', '13:30:00', 8, 8, 'Especializado'),
    ('2024-07-09', '16:00:00', 9, 9, 'General'),
    ('2024-07-10', '17:15:00', 10, 10, 'Especializado'),
    ('2024-07-11', '08:45:00', 1, 1, 'General'),
    ('2024-07-12', '09:30:00', 2, 1, 'Especializado'),
    ('2024-07-13', '10:15:00', 3, 1, 'General'),
    ('2024-07-14', '11:00:00', 4, 4, 'Especializado'),
    ('2024-07-15', '11:45:00', 5, 5, 'General'),
    ('2024-07-16', '12:30:00', 6, 6, 'Especializado'),
    ('2024-07-17', '13:15:00', 7, 7, 'General'),
    ('2024-07-18', '14:00:00', 8, 8, 'Especializado'),
    ('2024-07-19', '14:45:00', 9, 9, 'General'),
    ('2024-07-20', '15:30:00', 10, 1, 'Especializado');

-- Población de la tabla Technical_Consults
INSERT INTO TECHNICAL_CONSULTS (technical_consult_date, technical_consult_time, patient_id, technician_id, notes) 
VALUES 
    ('2024-07-01', '10:30:00', 1, 1, 'Radiografía de tórax realizada.'),
    ('2024-07-02', '12:00:00', 2, 2, 'Muestra de sangre recolectada.'),
    ('2024-07-03', '14:30:00', 3, 3, 'Resonancia magnética del cerebro.'),
    ('2024-07-04', '16:00:00', 4, 4, 'Ecografía abdominal realizada.'),
    ('2024-07-05', '09:30:00', 5, 5, 'Prueba de glucosa en sangre.'),
    ('2024-07-06', '11:00:00', 6, 6, 'Radioterapia aplicada.'),
    ('2024-07-07', '12:30:00', 7, 7, 'Radiografía de columna realizada.'),
    ('2024-07-08', '13:45:00', 10, 8, 'Tomografía computarizada de tórax.'),
    ('2024-07-09', '16:30:00', 9, 9, 'Ultrasonido abdominal realizado.'),
    ('2024-07-10', '17:45:00', 1, 10, 'Análisis de tejido patológico.'),
    ('2024-07-11', '08:30:00', 1, 1, 'Radiografía de muñeca realizada.'),
    ('2024-07-12', '10:00:00', 7, 2, 'Muestra de orina recolectada.'),
    ('2024-07-13', '11:30:00', 3, 3, 'Resonancia magnética de rodilla.'),
    ('2024-07-14', '13:00:00', 4, 4, 'Ecografía renal realizada.'),
    ('2024-07-15', '14:30:00', 7, 5, 'Prueba de colesterol en sangre.'),
    ('2024-07-16', '15:00:00', 6, 6, 'Radioterapia aplicada en área lumbar.'),
    ('2024-07-17', '16:30:00', 7, 7, 'Radiografía de cadera realizada.'),
    ('2024-07-18', '17:00:00', 8, 9, 'Tomografía computarizada de abdomen.'),
    ('2024-07-19', '18:30:00', 9, 9, 'Ultrasonido pélvico realizado.'),
    ('2024-07-20', '19:00:00', 10, 10, 'Análisis de muestra de tejido óseo.');

-- Pago de consultas técnicas y médicas
INSERT INTO Payments (payment_date, amount, payment_method, medical_consult_id, technical_consult_id) 
VALUES 
    ('2024-07-01', 100.00, 'Efectivo', 1, NULL),
    ('2024-07-02', 150.00, 'Credito', 2, NULL),
    ('2024-07-03', 200.00, 'Debito', 3, NULL),
    ('2024-07-04', 250.00, 'Seguro', 4, NULL),
    ('2024-07-05', 120.00, 'Efectivo', 5, NULL),
    ('2024-07-06', 180.00, 'Credito', 6, NULL),
    ('2024-07-07', 220.00, 'Debito', 7, NULL),
    ('2024-07-08', 300.00, 'Seguro', 8, NULL),
    ('2024-07-09', 130.00, 'Efectivo', 9, NULL),
    ('2024-07-10', 170.00, 'Credito', 10, NULL),
    ('2024-07-11', 90.00, 'Debito', NULL, 1),
    ('2024-07-12', 110.00, 'Efectivo', NULL, 2),
    ('2024-07-13', 140.00, 'Credito', NULL, 3),
    ('2024-07-14', 160.00, 'Seguro', NULL, 4),
    ('2024-07-15', 130.00, 'Debito', NULL, 5),
    ('2024-07-16', 115.00, 'Efectivo', NULL, 6),
    ('2024-07-17', 145.00, 'Credito', NULL, 7),
    ('2024-07-18', 175.00, 'Seguro', NULL, 8),
    ('2024-07-19', 125.00, 'Debito', NULL, 9),
    ('2024-07-20', 135.00, 'Efectivo', NULL, 10);