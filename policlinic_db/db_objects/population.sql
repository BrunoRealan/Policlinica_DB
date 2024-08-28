USE policlinic_db;

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
    ('Elena', 'Ramos', '1979-04-25', 'F', 'Calle 9 #76-88', '555-8765', 'elena.ramos@example.com'),
    ('Miguel', 'Ruiz', '1986-01-10', 'M', 'Calle 20 #15-25', '555-1122', 'miguel.ruiz@example.com'),
    ('Laura', 'Mendoza', '1992-12-03', 'F', 'Avenida Los Pinos 50', '555-3344', 'laura.mendoza@example.com'),
    ('Andrés', 'Castro', '1980-08-07', 'M', 'Carrera 45 #32-15', '555-5566', 'andres.castro@example.com'),
    ('Paula', 'Vargas', '1994-02-22', 'F', 'Calle 13 #26-89', '555-7788', 'paula.vargas@example.com'),
    ('Fernando', 'Morales', '1973-11-30', 'M', 'Avenida 5 de Mayo 89', '555-9900', 'fernando.morales@example.com'),
    ('Isabel', 'Gutiérrez', '1989-03-11', 'F', 'Carrera 9 #14-78', '555-2233', 'isabel.gutierrez@example.com'),
    ('Ricardo', 'Sánchez', '1977-10-05', 'M', 'Calle 25 #8-12', '555-4455', 'ricardo.sanchez@example.com'),
    ('Gabriela', 'Jiménez', '1991-06-25', 'F', 'Avenida Libertador 13', '555-6677', 'gabriela.jimenez@example.com'),
    ('Alejandro', 'Pérez', '1984-04-18', 'M', 'Carrera 16 #9-45', '555-8899', 'alejandro.perez@example.com'),
    ('Daniela', 'Ortiz', '1996-09-30', 'F', 'Calle 2 #17-64', '555-0011', 'daniela.ortiz@example.com'),
    ('Sergio', 'Flores', '1987-07-21', 'M', 'Avenida 7 de Agosto 76', '555-2234', 'sergio.flores@example.com'),
    ('Mónica', 'Cárdenas', '1981-05-13', 'F', 'Carrera 28 #4-39', '555-5567', 'monica.cardenas@example.com'),
    ('Héctor', 'Rojas', '1972-11-09', 'M', 'Calle 18 #12-21', '555-7789', 'hector.rojas@example.com'),
    ('Patricia', 'Álvarez', '1993-02-15', 'F', 'Avenida El Sol 43', '555-9911', 'patricia.alvarez@example.com'),
    ('Roberto', 'Navarro', '1983-03-08', 'M', 'Carrera 13 #29-16', '555-0022', 'roberto.navarro@example.com'),
    ('Sara', 'Romero', '1982-07-19', 'F', 'Calle 30 #15-37', '555-2244', 'sara.romero@example.com'),
    ('Víctor', 'Molina', '1978-10-25', 'M', 'Avenida Libertad 98', '555-3355', 'victor.molina@example.com'),
    ('Natalia', 'Acosta', '1990-08-11', 'F', 'Carrera 31 #8-56', '555-4466', 'natalia.acosta@example.com'),
    ('Oscar', 'Reyes', '1985-12-07', 'M', 'Calle 14 #23-68', '555-5577', 'oscar.reyes@example.com'),
    ('Claudia', 'Vega', '1979-06-22', 'F', 'Avenida Las Flores 27', '555-7799', 'claudia.vega@example.com');


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
    ('Luis', 'Núñez', 'Urología', 'LIC234567', '555-1123', 'luis.nunez@example.com'),
    ('Javier', 'López', 'Cardiología', 'LIC567123', '555-2244', 'javier.lopez@example.com'),
    ('Verónica', 'Morales', 'Pediatría', 'LIC678234', '555-3355', 'veronica.morales@example.com'),
    ('Roberto', 'Herrera', 'Neurología', 'LIC789345', '555-4466', 'roberto.herrera@example.com'),
    ('Ana', 'Pérez', 'Ginecología', 'LIC890456', '555-5577', 'ana.perez@example.com'),
    ('Emilio', 'González', 'Dermatología', 'LIC901567', '555-6688', 'emilio.gonzalez@example.com'),
    ('Gabriela', 'Hidalgo', 'Ortopedia', 'LIC012678', '555-7799', 'gabriela.hidalgo@example.com'),
    ('Martín', 'Luna', 'Oftalmología', 'LIC123789', '555-8800', 'martin.luna@example.com'),
    ('Patricia', 'Soler', 'Psiquiatría', 'LIC234890', '555-9911', 'patricia.soler@example.com'),
    ('Esteban', 'Muñoz', 'Endocrinología', 'LIC345901', '555-1124', 'esteban.munoz@example.com'),
    ('Victoria', 'Vargas', 'Urología', 'LIC456012', '555-2235', 'victoria.vargas@example.com'),
    ('Mario', 'Navarro', 'Cardiología', 'LIC567234', '555-3346', 'mario.navarro@example.com'),
    ('Claudia', 'Ríos', 'Pediatría', 'LIC678345', '555-4457', 'claudia.rios@example.com'),
    ('Fernando', 'Molina', 'Neurología', 'LIC789456', '555-5568', 'fernando.molina@example.com'),
    ('Elena', 'Cruz', 'Ginecología', 'LIC890567', '555-6679', 'elena.cruz@example.com'),
    ('Carlos', 'Santos', 'Dermatología', 'LIC901678', '555-7780', 'carlos.santos@example.com'),
    ('Nuria', 'Vega', 'Ortopedia', 'LIC012789', '555-8891', 'nuria.vega@example.com'),
    ('Ricardo', 'Blanco', 'Oftalmología', 'LIC123890', '555-9902', 'ricardo.blanco@example.com'),
    ('Lorena', 'Cano', 'Psiquiatría', 'LIC234901', '555-1125', 'lorena.cano@example.com'),
    ('Alfredo', 'Campos', 'Endocrinología', 'LIC345012', '555-2236', 'alfredo.campos@example.com'),
    ('Silvia', 'Mendoza', 'Urología', 'LIC456123', '555-3347', 'silvia.mendoza@example.com');


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
    ('Raquel', 'Ruiz', 'Técnico de Patología', '555-2235', 'raquel.ruiz@example.com'),
    ('Daniel', 'Mendoza', 'Técnico de Rayos X', '555-3346', 'daniel.mendoza@example.com'),
    ('Verónica', 'Santos', 'Técnico de Laboratorio', '555-5568', 'veronica.santos@example.com'),
    ('Alberto', 'Lara', 'Técnico de Resonancia', '555-7780', 'alberto.lara@example.com'),
    ('Lucía', 'Morales', 'Técnico de Ecografía', '555-9903', 'lucia.morales@example.com'),
    ('David', 'Blanco', 'Técnico de Radioterapia', '555-2236', 'david.blanco@example.com'),
    ('Rocío', 'Hernández', 'Técnico de Laboratorio', '555-4457', 'rocio.hernandez@example.com'),
    ('Miguel', 'Gil', 'Técnico de Radiología', '555-6679', 'miguel.gil@example.com'),
    ('Elena', 'Moya', 'Técnico de Tomografía', '555-8891', 'elena.moya@example.com'),
    ('Francisco', 'Ortega', 'Técnico de Ultrasonido', '555-9904', 'francisco.ortega@example.com'),
    ('Beatriz', 'Pérez', 'Técnico de Patología', '555-2237', 'beatriz.perez@example.com'),
    ('Pablo', 'Ramírez', 'Técnico de Rayos X', '555-3347', 'pablo.ramirez@example.com'),
    ('Lorena', 'Vega', 'Técnico de Laboratorio', '555-5569', 'lorena.vega@example.com'),
    ('Carlos', 'Navarro', 'Técnico de Resonancia', '555-7781', 'carlos.navarro@example.com'),
    ('Mónica', 'Rivas', 'Técnico de Ecografía', '555-9905', 'monica.rivas@example.com'),
    ('Álvaro', 'Suárez', 'Técnico de Radioterapia', '555-2238', 'alvaro.suarez@example.com'),
    ('Patricia', 'Díaz', 'Técnico de Laboratorio', '555-4458', 'patricia.diaz@example.com'),
    ('Rubén', 'Cabrera', 'Técnico de Radiología', '555-6680', 'ruben.cabrera@example.com'),
    ('Sergio', 'Fernández', 'Técnico de Tomografía', '555-8892', 'sergio.fernandez@example.com'),
    ('Carmen', 'López', 'Técnico de Ultrasonido', '555-9906', 'carmen.lopez@example.com'),
    ('Iván', 'Reyes', 'Técnico de Patología', '555-2239', 'ivan.reyes@example.com');


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
    ('2024-07-20', '15:30:00', 10, 1, 'Especializado'),
    ('2024-07-21', '08:30:00', 4, 3, 'General'),
    ('2024-07-22', '09:15:00', 5, 7, 'Especializado'),
    ('2024-07-23', '10:00:00', 6, 21, 'General'),
    ('2024-07-24', '10:45:00', 7, 4, 'Especializado'),
    ('2024-07-25', '11:30:00', 8, 6, 'General'),
    ('2024-07-26', '12:15:00', 9, 1, 'Especializado'),
    ('2024-07-27', '13:00:00', 10, 9, 'General'),
    ('2024-07-28', '13:45:00', 12, 5, 'Especializado'),
    ('2024-07-29', '14:30:00', 2, 8, 'General'),
    ('2024-07-30', '15:15:00', 23, 10, 'Especializado'),
    ('2024-07-31', '16:00:00', 14, 23, 'General'),
    ('2024-08-01', '16:45:00', 5, 7, 'Especializado'),
    ('2024-08-02', '17:30:00', 6, 3, 'General'),
    ('2024-08-03', '08:00:00', 7, 8, 'Especializado'),
    ('2024-08-04', '08:45:00', 18, 16, 'General'),
    ('2024-08-05', '09:30:00', 9, 4, 'Especializado'),
    ('2024-08-06', '10:15:00', 10, 9, 'General'),
    ('2024-08-07', '11:00:00', 1, 1, 'Especializado'),
    ('2024-08-08', '11:45:00', 2, 5, 'General'),
    ('2024-08-09', '12:30:00', 3, 10, 'Especializado');


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
    ('2024-07-20', '19:00:00', 10, 10, 'Análisis de muestra de tejido óseo.'),
    ('2024-07-21', '09:00:00', 12, 20, 'Radiografía de tórax realizada.'),
    ('2024-07-22', '10:30:00', 8, 3, 'Muestra de sangre recolectada.'),
    ('2024-07-23', '12:00:00', 27, 13, 'Resonancia magnética del cerebro.'),
    ('2024-07-24', '13:30:00', 17, 5, 'Ecografía abdominal realizada.'),
    ('2024-07-25', '15:00:00', 11, 14, 'Prueba de glucosa en sangre.'),
    ('2024-07-26', '16:30:00', 24, 9, 'Radioterapia aplicada.'),
    ('2024-07-27', '09:30:00', 23, 16, 'Radiografía de columna realizada.'),
    ('2024-07-28', '11:00:00', 28, 21, 'Tomografía computarizada de tórax.'),
    ('2024-07-29', '12:30:00', 21, 10, 'Ultrasonido abdominal realizado.'),
    ('2024-07-30', '14:00:00', 19, 27, 'Análisis de tejido patológico.'),
    ('2024-07-31', '15:30:00', 4, 25, 'Radiografía de muñeca realizada.'),
    ('2024-08-01', '17:00:00', 30, 30, 'Muestra de orina recolectada.'),
    ('2024-08-02', '08:45:00', 26, 6, 'Resonancia magnética de rodilla.'),
    ('2024-08-03', '10:15:00', 6, 11, 'Ecografía renal realizada.'),
    ('2024-08-04', '11:45:00', 29, 12, 'Prueba de colesterol en sangre.'),
    ('2024-08-05', '13:15:00', 1, 1, 'Radioterapia aplicada en área lumbar.'),
    ('2024-08-06', '14:45:00', 18, 22, 'Radiografía de cadera realizada.'),
    ('2024-08-07', '16:15:00', 5, 26, 'Tomografía computarizada de abdomen.'),
    ('2024-08-08', '17:45:00', 14, 7, 'Ultrasonido pélvico realizado.'),
    ('2024-08-09', '19:00:00', 9, 4, 'Análisis de muestra de tejido óseo.');


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
    ('2024-07-20', 135.00, 'Efectivo', NULL, 10),
    ('2024-07-21', 131.00, 'Efectivo', 21, NULL),
    ('2024-07-22', 270.00, 'Credito', 22, NULL),
    ('2024-07-23', 110.00, 'Debito', 23, NULL),
    ('2024-07-24', 260.00, 'Seguro', 24, NULL),
    ('2024-07-25', 125.00, 'Efectivo', 25, NULL),
    ('2024-07-26', 279.00, 'Credito', 26, NULL),
    ('2024-07-27', 131.00, 'Debito', 27, NULL),
    ('2024-07-28', 340.00, 'Seguro', 28, NULL),
    ('2024-07-29', 110.00, 'Efectivo', 29, NULL),
    ('2024-07-30', 280.00, 'Credito', 30, NULL),
    ('2024-07-31', 120.00, 'Debito', 31, NULL),
    ('2024-08-01', 250.00, 'Efectivo', 32, NULL),
    ('2024-08-02', 150.00, 'Credito', 33, NULL),
    ('2024-08-03', 250.00, 'Seguro', 34, NULL),
    ('2024-08-04', 150.00, 'Debito', 35, NULL),
    ('2024-08-05', 250.00, 'Efectivo', 36, NULL),
    ('2024-08-06', 150.00, 'Credito', 37, NULL),
    ('2024-08-07', 299.00, 'Seguro', 38, NULL),
    ('2024-08-08', 100.00, 'Debito', 39, NULL),
    ('2024-08-09', 700.00, 'Efectivo', 40, NULL),
    ('2024-07-21', 90.00, 'Efectivo', NULL, 21),
    ('2024-07-22', 110.00, 'Credito', NULL, 22),
    ('2024-07-23', 140.00, 'Debito', NULL, 23),
    ('2024-07-24', 160.00, 'Seguro', NULL, 24),
    ('2024-07-25', 130.00, 'Efectivo', NULL, 25),
    ('2024-07-26', 115.00, 'Credito', NULL, 26),
    ('2024-07-27', 145.00, 'Debito', NULL, 27),
    ('2024-07-28', 175.00, 'Seguro', NULL, 28),
    ('2024-07-29', 125.00, 'Efectivo', NULL, 29),
    ('2024-07-30', 135.00, 'Credito', NULL, 30),
    ('2024-07-31', 90.00, 'Debito', NULL, 31),
    ('2024-08-01', 110.00, 'Efectivo', NULL, 32),
    ('2024-08-02', 140.00, 'Credito', NULL, 33),
    ('2024-08-03', 160.00, 'Seguro', NULL, 34),
    ('2024-08-04', 130.00, 'Debito', NULL, 35),
    ('2024-08-05', 115.00, 'Efectivo', NULL, 36),
    ('2024-08-06', 145.00, 'Credito', NULL, 37),
    ('2024-08-07', 175.00, 'Seguro', NULL, 38),
    ('2024-08-08', 125.00, 'Debito', NULL, 39),
    ('2024-08-09', 135.00, 'Efectivo', NULL, 40);