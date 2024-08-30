## Creación de una Base de Datos para una Policlínica


### Problema
Nuestro equipo de desarrollo está trabajando en un sistema de gestión para una policlínica y necesita diseñar una base de datos que maneje eficientemente todas las operaciones relacionadas con la atención a los pacientes.


### Descripción del Problema
1. **Gestión de Pacientes y Personal Médico**: Necesitamos una base de datos que registre información detallada sobre los pacientes que visitan la policlínica, así como sobre el personal médico y técnico que participa en su atención.

2. **Administración de Consultas Médicas y Técnicas**: Es fundamental poder registrar y gestionar tanto las consultas médicas como las consultas técnicas realizadas en la policlínica.

3. **Registro del Historial Clínico**: La base de datos debe permitir el registro del historial clínico de los pacientes, incluyendo diagnósticos, tratamientos y observaciones adicionales.

4. **Manejo de Pagos**: Se requiere un sistema que registre los pagos efectuados por los pacientes por las consultas médicas y técnicas.


### Objetivo
Diseñar e implementar una base de datos relacional que cumpla con todas las necesidades de gestión de una policlínica. La base de datos debe ser eficiente, escalable y fácil de mantener, permitiendo una gestión ágil y precisa de todas las operaciones relacionadas con la atención de los pacientes.


---


### Descripción de la Base de Datos - Sistema de Gestión de una Policlínica
Ésta base de datos está diseñada para gestionar la atención en una policlínica, así como la información relacionada con pacientes, personal médico y técnico, consultas y pagos. 


### DER
[Diagrama de Entidad Relación](https://github.com/BrunoRealan/Policlinica_DB/blob/main/Diagrama%20Policlinica.jpg)


### Tablas
1. **PATIENTS**
   - Almacena información sobre los pacientes que visitan la policlínica.
   - Atributos: patient_id (INT UNSIGNED NOT NULL AUTO_INCREMENT), first_name (VARCHAR(100) NOT NULL), last_name (VARCHAR(100) NOT NULL), birth_date (DATE NOT NULL), gender (ENUM('M', 'F', 'O') NOT NULL), address (VARCHAR(255)), phone (VARCHAR(20)), email (VARCHAR(255)).

2. **DOCTORS**
   - Contiene información sobre los médicos que atienden en la policlínica.
   - Atributos: doctor_id (INT UNSIGNED NOT NULL AUTO_INCREMENT), first_name (VARCHAR(100) NOT NULL), last_name (VARCHAR(100) NOT NULL), speciality (specialty VARCHAR(100) NOT NULL), licence_number (VARCHAR(50) NOT NULL), phone (VARCHAR(20)), email (VARCHAR(255)).

3. **TECHNICIANS**
   - Almacena datos sobre el personal técnico que asiste en la atención de pacientes.
   - Atributos: technician_id (INT UNSIGNED NOT NULL AUTO_INCREMENT), first_name (VARCHAR(100) NOT NULL), last_name (VARCHAR(100) NOT NULL), technician_type (VARCHAR(100) NOT NULL), phone (VARCHAR(20)), email (VARCHAR(255)).

4. **MEDICAL_CONSULTS**
   - Registra las consultas médicas realizadas por los médicos.
   - Atributos: medical_consult_id (INT UNSIGNED NOT NULL AUTO_INCREMENT), medical_consult_date (DATE NOT NULL), medical_consult_time (TIME NOT NULL), patient_id (INT UNSIGNED NOT NULL), doctor_id (INT UNSIGNED NOT NULL), medical_consult_type (ENUM('General', 'Especializado') NOT NULL).

5. **TECHNICAL_CONSULTS**
   - Registra las consultas técnicas realizadas por el personal técnico.
   - Atributos: technical_consult_id (INT UNSIGNED NOT NULL AUTO_INCREMENT), technical_consult_date (DATE NOT NULL), technical_consult_time (TIME NOT NULL), patient_id (INT UNSIGNED NOT NULL), technician_id (INT UNSIGNED NOT NULL), notes (TEXT).

6. **MEDICAL_RECORDS**
   - Almacena el historial clínico de los pacientes.
   - Atributos: record_id (INT UNSIGNED NOT NULL AUTO_INCREMENT), patient_id (INT UNSIGNED NOT NULL), consult_date (DATE NOT NULL), diagnosis (TEXT NOT NULL), treatment (TEXT), notes (TEXT).

7. **PAYMENTS**
   - Registra los pagos realizados por los pacientes.
   - Atributos: payment_id (INT UNSIGNED NOT NULL AUTO_INCREMENT), payment_date (DATE NOT NULL), amount (DECIMAL(10, 2) NOT NULL), payment_method (ENUM('Efectivo', 'Credito', 'Debito', 'Seguro') NOT NULL), medical_consult_id (INT UNSIGNED), technical_consult_id (INT UNSIGNED).

8. **PATIENT_AUDIT**
   - Registra la inserción y/o borrado de un paciente de la tabla PATIENTS en una tabla de auditoria.
   - Atributos: audit_id (INT UNSIGNED NOT NULL AUTO_INCREMENT), patient_id (INT UNSIGNED), action (VARCHAR(50)), action_date (TIMESTAMP DEFAULT CURRENT_TIMESTAMP).


### Relaciones y Claves Foráneas


#### Consultas Médicas:
- patient_id en MEDICAL_CONSULTS es una clave foránea que referencia patient_id en PATIENTS.
- doctor_id en MEDICAL_CONSULTS es una clave foránea que referencia doctor_id en DOCTORS.

#### Consultas Técnicas:
- patient_id en TECHNICAL_CONSULTS es una clave foránea que referencia patient_id en PATIENTS.
- technician_id en TECHNICAL_CONSULTS es una clave foránea que referencia technician_id en TECHNICIANS.

#### Historia Clínica:
- patient_id en MEDICAL_RECORDS es una clave foránea que referencia patient_id en PATIENTS.

#### Pagos:
- medical_consult_id en PAYMENTS es una clave foránea que referencia medical_consult_id en MEDICAL_CONSULTS.
- technical_consult_id en PAYMENTS es una clave foránea que referencia technical_consult_id en TECHNICAL_CONSULTS.


### Vistas

- #### doctor_consultation_quantity:
Muestra las cantidad de consultas por médico hasta la fecha.
Ejemplo:
```
SELECT * FROM policlinic_db.doctor_consultation_quantity;
```

- #### technician_consultation_quantity:
Muestra las cantidad de consultas por técnico hasta la fecha.
Ejemplo:
```
SELECT * FROM policlinic_db.technician_consultation_quantity;
```

- #### patient_consultations:
Muestra las consultas médicas y técnicas asociadas a cada paciente.
Ejemplo:
```
SELECT * FROM policlinic_db.patient_consultations;
```

- #### patient_payments:
Muestra el total de pagos realizados por cada paciente, tanto para consultas médicas como técnicas.
Ejemplo:
```
SELECT * FROM policlinic_db.patient_payments;
```

### Funciones

- #### get_total_payment:
Calcula el total de pagos realizados por un paciente para consultas médicas y técnicas.
Ejemplo:
```
SELECT policlinic_db.get_total_payment(3);
```

- #### patients_by_doctor:
Calcula la cantidad de pacientes atendidos por un médico específico.
Ejemplo:
```
SELECT policlinic_db.patients_by_doctor(4);
```


### Procedimientos Almacenados

- #### insert_patient: 
Inserta un nuevo paciente en la base de datos.
Ejemplo:
```
CALL insert_patient ('Tito', 'Puentes', '1950-04-25', 'M', 'Calle 998', '555-8765', 'tito_puentes@example.com');
```

- #### get_patient_payments:
Obtiene la información de los pagos realizados por un paciente.
Ejemplo:
```
CALL get_patient_payments (6);
```

### Triggers

- #### patient_insert_audit: 
Inserta un registro en la tabla de auditoria PATIENT_AUDIT cuando se inserta un nuevo paciente, valor de accion 'INSERT'.

- #### patient_delete_audit:
Inserta un registro en la tabla de auditoria PATIENT_AUDIT cuando se elimina un paciente según su ID, valor de accion 'DELETE'.


### Problemática Resuelta

Esta base de datos permite gestionar eficientemente el proceso de atención en una policlínica, desde la información de los pacientes y el personal hasta el registro de consultas y pagos. Algunos aspectos que aborda incluyen:

- Registro de pacientes y personal involucrado en la atención.
- Gestión de consultas médicas y técnicas.
- Registro y acceso al historial clínico de los pacientes.
- Registro de pagos realizados por las consultas.

En resumen, esta base de datos proporciona una estructura para organizar y gestionar eficientemente las operaciones de una policlínica, contribuyendo a mejorar el servicio ofrecido a los pacientes y optimizar las operaciones de la policlínica.