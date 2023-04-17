CREATE TABLE empleado (
  id_empleado INT PRIMARY KEY AUTO_INCREMENT,
  nombre_empleado VARCHAR(255),
  calle VARCHAR(255),
  ciudad VARCHAR(255)
);
CREATE TABLE trabaja (
  id_trabajo INT PRIMARY KEY AUTO_INCREMENT,
  nombre_empleado VARCHAR(255),
  nombre_empresa VARCHAR(255),
  sueldo DECIMAL(10, 2),
  FOREIGN KEY (nombre_empleado) REFERENCES empleado(nombre_empleado)
);
CREATE TABLE empresa (
  id_empresa INT PRIMARY KEY AUTO_INCREMENT,
  nombre_empresa VARCHAR(255),
  ciudad VARCHAR(255)
);
CREATE TABLE jefe (
  id_jefe INT PRIMARY KEY AUTO_INCREMENT,
  nombre_empleado VARCHAR(255),
  nombre_jefe VARCHAR(255),
  FOREIGN KEY (nombre_empleado) REFERENCES empleado(nombre_empleado),
  FOREIGN KEY (nombre_jefe) REFERENCES empleado(nombre_empleado)
);
