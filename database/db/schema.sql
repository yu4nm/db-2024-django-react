-- #######################################################
-- https://codeshare.io/g8pQAV
-- Database Course
-- Univalle 23-10-2024
-- @JAPeTo
-- #######################################################

--- Client Table
CREATE TABLE cliente(
  idCliente INTEGER PRIMARY KEY,
  nombre VARCHAR(45),
  apellido VARCHAR(45),
  observaciones TEXT 
);

--- Mesero Table
CREATE TABLE mesero(
  idMesero INTEGER,
  nombre VARCHAR(45),
  apellido VARCHAR(45),
  observaciones TEXT,
  PRIMARY KEY(idMesero)
);

--- Platillo Table
CREATE TABLE platillo(
  idPlatillo INTEGER PRIMARY KEY,
  nombre VARCHAR(45),
  importe DECIMAL(10,2)
);

--- Bebidas Table
CREATE TABLE platillo(
  idPlatillo INTEGER PRIMARY KEY,
  nombre VARCHAR(45),
  importe DECIMAL(10,2)
);
--- Mesa Table
CREATE TABLE mesa(
  idMesa INTEGER PRIMARY KEY,
  numComensales INTEGER,
  ubicacion VARCHAR(45)
);

--- Factura Table
CREATE TABLE factura(
  idFactura INTEGER,
	idCliente INTEGER NOT NULL DEFAULT 1,
	idMesero INTEGER NOT NULL,
	idMesa INTEGER NOT NULL,
	idBebida INTEGER NOT NULL,
	idPlatillo INTEGER,
  fechaFactura DATE,
  PRIMARY KEY(idFactura),
  FOREIGN KEY (idCliente) REFERENCES cliente(idCliente) ON DELETE SET DEFAULT ON UPDATE NO ACTION,
  FOREIGN KEY (idMesero) REFERENCES mesero(idMesero) ON DELETE RESTRICT ON UPDATE NO ACTION,
  FOREIGN KEY (idMesa) REFERENCES mesa(idMesa) ON DELETE RESTRICT ON UPDATE NO ACTION,
  FOREIGN KEY (idPlatillo) REFERENCES platillo(idPlatillo) ON DELETE SET NULL ON UPDATE NO ACTION,
  FOREIGN KEY (idBebida) REFERENCES bebida(idBebida) ON DELETE CASCADE ON UPDATE CASCADE
);

