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

Esta base de datos está diseñada para gestionar la atención en una policlínica, así como la información relacionada con pacientes, personal médico y técnico, consultas y pagos. A continuación se detallan los elementos principales de la base de datos:

### Tablas

1. **Patients**
   - Almacena información sobre los pacientes que visitan la policlínica.
   - Atributos: patient_id, first_name, last_name, birth_date, gender, address, phone, email.

2. **Doctors**
   - Contiene información sobre los médicos que atienden en la policlínica.
   - Atributos: doctor_id, first_name, last_name, speciality, licence_number, phone, email.

3. **Technicians**
   - Almacena datos sobre el personal técnico que asiste en la atención de pacientes.
   - Atributos: technician_id, first_name, last_name, technician_type, phone, email.

4. **Medical_Consults**
   - Registra las consultas médicas realizadas por los médicos.
   - Atributos: medical_consult_id, medical_consult_date, medical_consult_time, patient_id, doctor_id, medical_consult_type.

5. **Technical_Consults**
   - Registra las consultas técnicas realizadas por el personal técnico.
   - Atributos: technical_consult_id, technical_consult_date, technical_consult_time, patient_id, technician_id, notes.

6. **Medical_Records**
   - Almacena el historial clínico de los pacientes.
   - Atributos: record_id, patient_id, date, diagnosis, treatment, notes.

7. **Payments**
   - Registra los pagos realizados por los pacientes.
   - Atributos: payment_id, date, amount, payment_method, medical_consult_id, technical_consult_id.

### Problemática Resuelta

Esta base de datos permite gestionar eficientemente el proceso de atención en una policlínica, desde la información de los pacientes y el personal hasta el registro de consultas y pagos. Algunos aspectos que aborda incluyen:

- Registro de pacientes y personal involucrado en la atención.
- Gestión de consultas médicas y técnicas.
- Registro y acceso al historial clínico de los pacientes.
- Registro de pagos realizados por las consultas.

En resumen, esta base de datos proporciona una estructura para organizar y gestionar eficientemente las operaciones de una policlínica, contribuyendo a mejorar el servicio ofrecido a los pacientes y optimizar las operaciones de la policlínica.

### DER
[Diagrama de Entidad Relación](https://github.com/BrunoRealan/Policlinica_DB/blob/main/Diagrama%20Policlinica.jpg)
