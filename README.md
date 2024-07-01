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

1. **PACIENTE**
   - Almacena información sobre los pacientes que visitan la policlínica.
   - Atributos: IDPACIENTE, NOMBRE, APELLIDO, FECHA_NACIMIENTO, GENERO, DIRECCION, TELEFONO, CORREO.

2. **MEDICO**
   - Contiene información sobre los médicos que atienden en la policlínica.
   - Atributos: IDMEDICO, NOMBRE, APELLIDO, ESPECIALIDAD, LICENCIA, TELEFONO, CORREO.

3. **TECNICO**
   - Almacena datos sobre el personal técnico que asiste en la atención de pacientes.
   - Atributos: IDTECNICO, NOMBRE, APELLIDO, TIPO_TECNICO, TELEFONO, CORREO.

4. **CONSULTA_MEDICA**
   - Registra las consultas médicas realizadas por los médicos.
   - Atributos: IDCONSULTA_MEDICA, FECHA, HORA, IDPACIENTE, IDMEDICO, TIPO_CONSULTA.

5. **CONSULTA_TECNICA**
   - Registra las consultas técnicas realizadas por el personal técnico.
   - Atributos: IDCONSULTA_TECNICA, FECHA, HORA, IDPACIENTE, IDTECNICO, NOTAS.

6. **HISTORIAL_CLINICO**
   - Almacena el historial clínico de los pacientes.
   - Atributos: IDHISTORIAL, IDPACIENTE, FECHA, DIAGNOSTICO, TRATAMIENTO, NOTAS.

7. **PAGO**
   - Registra los pagos realizados por los pacientes.
   - Atributos: IDPAGO, FECHA, MONTO, METODO_PAGO, IDCONSULTA_MEDICA, IDCONSULTA_TECNICA.

### Problemática Resuelta

Esta base de datos permite gestionar eficientemente el proceso de atención en una policlínica, desde la información de los pacientes y el personal hasta el registro de consultas y pagos. Algunos aspectos que aborda incluyen:

- Registro de pacientes y personal involucrado en la atención.
- Gestión de consultas médicas y técnicas.
- Registro y acceso al historial clínico de los pacientes.
- Registro de pagos realizados por las consultas.

En resumen, esta base de datos proporciona una estructura para organizar y gestionar eficientemente las operaciones de una policlínica, contribuyendo a mejorar el servicio ofrecido a los pacientes y optimizar las operaciones de la policlínica.

### DER
[Diagrama de Entidad Relación](https://github.com/BrunoRealan/Policlinica_DB/blob/main/Diagrama%20Policlinica.jpg)
