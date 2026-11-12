-- Active: 1789575785620@@127.0.0.1@5432@App_Medica@public
-- Insertar Pacientes 
INSERT INTO PACIENTE (ID_PACIENTE, RUT, NOMBRE, TELEFONO) VALUES
(1, '18.452.931-2', 'Gonzalo Muñoz', '+56987654321'),
(2, '12.654.789-K', 'María Elena Soto', '+56976543210'),
(3, '20.123.456-7', 'Diego Plaza', '+56965432109');

-- Insertar Médicos 
INSERT INTO MEDICO (ID_MEDICO, NOMBRE, ESPECIALIDAD, TELEFONO) VALUES
(10, 'Dr. Andrés Silva', 'Medicina General', '+56954321098'),
(20, 'Dra. Carolina Rojas', 'Traumatología', '+56943210987');

-- Insertar Atenciones 
INSERT INTO ATENCION (ID_ATENCION, ID_PACIENTE, ID_MEDICO, FECHA_ATENCION, FECHA_ALTA, DIAGNOSTICO, COSTO) VALUES
(100, 1, 10, '2026-10-15', '2026-10-17', 'Gripe Influenza Tipo A', 35000),
(101, 2, 20, '2026-11-01', NULL, 'Fractura de radio izquierdo', 120000),
(102, 1, 20, '2026-11-09', NULL, 'Esguince de tobillo grado 1', 65000);