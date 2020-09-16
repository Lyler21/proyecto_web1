/******************************************************************************************************************/

CREATE TABLE EMPLEADO(
ID_EMP   char(3) NOT NULL,
NOM_EMP	VARCHAR(100)NOT NULL,
APE_EMP	VARCHAR(100)NOT NULL,
NUM_DOC	VARCHAR(15)NOT NULL,
DIR_EMP	VARCHAR(100)NOT NULL,
TEL_EMP	CHAR(9)NOT NULL,
EMA_EMP	VARCHAR(100)NOT NULL	
);

ALTER TABLE EMPLEADO ADD CONSTRAINT PK_ID_EMP PRIMARY KEY(ID_EMP);
INSERT INTO EMPLEADO VALUES (111,'ANTHONY','DIAZ','74847349','COMAS',982400432,'A.DIAZCABANILLAS97@GMAIL.COM');

CREATE TABLE USUARIO(
ID_EMP		CHAR(3) NOT NULL, 
PASS			VARCHAR(20) NOT NULL
);

ALTER TABLE USUARIO ADD CONSTRAINT PK_USUARIO PRIMARY KEY(ID_EMP); 

ALTER TABLE USUARIO ADD CONSTRAINT FK_USUARIO FOREIGN KEY(ID_EMP) REFERENCES empleado(ID_EMP); 

INSERT INTO USUARIO VALUES(111,'TONYDC');

CREATE TABLE CLIENTE(
ID_CLI  	CHAR(3) NOT NULL,
NOM_CLI	VARCHAR(100)NOT NULL,
APE_CLI	VARCHAR(100)NOT NULL,
NUM_DOC	VARCHAR(15)NOT NULL,
DIR_CLI	VARCHAR(100)NOT NULL,
TEL_CLI	CHAR(9)NOT NULL,
EMA_CLI	VARCHAR(100)NOT NULL
);

ALTER TABLE CLIENTE ADD CONSTRAINT PK_CLIENTE PRIMARY KEY(ID_CLI); 
INSERT INTO CLIENTE VALUES (001,'ALEXANDER','ARAUJO','75267489','ENSENADA',963854512,'ALEXANDERARAUJO@GMAIL.COM');

CREATE TABLE CATEGORIA(
ID_CAT		CHAR(3) NOT NULL,
NOM_CAT		VARCHAR(100)NOT NULL,
DES_CAT		VARCHAR(100)NOT NULL
); 

ALTER TABLE CATEGORIA ADD CONSTRAINT PK_ID_CAT PRIMARY KEY (ID_CAT);
INSERT INTO CATEGORIA VALUES (900,'PELUCHES','HABILITADO');


CREATE TABLE PROOVEDOR(
ID_PRO  	VARCHAR(3) NOT NULL,
NOM_PRO  VARCHAR(100)NOT NULL,
APE_PRO	VARCHAR(100)NOT NULL,
NUM_PRO	VARCHAR(15)NOT NULL,
DIR_PRO	VARCHAR(100)NOT NULL,
TEL_PRO	CHAR(9)NOT NULL,
EMA_PRO	VARCHAR(100)NOT NULL
);

ALTER TABLE PROOVEDOR ADD CONSTRAINT PK_ID_PRO PRIMARY KEY(ID_PRO);
INSERT INTO PROOVEDOR VALUES ('P01','VICTOR','VALENCIA','7485961','LOS GERANIOS',914263859,'VICTOR.VALENCIA@GMAIL.COM');

CREATE TABLE ARTICULOS(
ID_ART	VARCHAR(5) NOT NULL,	
ID_CAT	CHAR(3) NOT NULL,
ID_PROV	VARCHAR(3) NOT NULL,
NOM_ART	VARCHAR(100) NOT NULL,
PRECIO	DECIMAL NOT NULL,
STOCK		INT NOT NULL,
DES_ART	VARCHAR(100) NOT NULL,
CONDICION VARCHAR(100) NOT NULL
);

ALTER TABLE ARTICULOS ADD CONSTRAINT PK_ID_ART PRIMARY KEY(ID_ART);
ALTER TABLE ARTICULOS ADD CONSTRAINT FK_ARTICULOS_CAT FOREIGN KEY(ID_CAT) REFERENCES CATEGORIA(ID_CAT); 
ALTER TABLE ARTICULOS ADD CONSTRAINT FK_ARTICULOS_PROV FOREIGN KEY(ID_PROV) REFERENCES PROOVEDOR(ID_PRO); 
INSERT INTO ARTICULOS VALUES ('A0001',900,'P01','PICACHU',120,40,'PICACHU DE 1M DE ALTURA','EN STOCK');

CREATE TABLE VENTAS(
ID_VEN	VARCHAR(5) NOT NULL,
ID_CLI	CHAR(3) NOT NULL,
ID_EMP   CHAR(3) NOT NULL,
TIP_COM	VARCHAR(100) NOT NULL,
SER_COM  VARCHAR(5) NOT NULL,
NUM_COM	CHAR(3) NOT NULL,
ESTADO	VARCHAR(20) NOT NULL
);

ALTER TABLE VENTAS ADD CONSTRAINT PK_ID_VEN PRIMARY KEY(ID_VEN);
ALTER TABLE VENTAS ADD CONSTRAINT FK_ID_CLO FOREIGN KEY(ID_CLI) REFERENCES CLIENTE(ID_CLI);
ALTER TABLE VENTAS ADD CONSTRAINT FK_ID_EMP FOREIGN KEY(ID_EMP) REFERENCES EMPLEADO(ID_EMP);
INSERT INTO VENTAS VALUES ('V0001',001,111,'BOLETA','G001-',001,'FALTA DE PAGO');

CREATE TABLE DETALLE_VENTAS(
ID_VEN	 	VARCHAR(5) NOT NULL,	
ID_ART		VARCHAR(5) NOT NULL,	
CANTIDAD		INT NOT NULL,
PRECIO		DECIMAL NOT NULL,
DESCUENTO	DECIMAL NOT NULL,
TOTAL			DECIMAL NOT NULL
);

ALTER TABLE DETALLE_VENTAS ADD CONSTRAINT PK_DET_VEN PRIMARY KEY(ID_VEN,ID_ART);
ALTER TABLE DETALLE_VENTAS ADD CONSTRAINT FK_DET_IDVEN FOREIGN KEY(ID_VEN) REFERENCES VENTAS(ID_VEN);
ALTER TABLE DETALLE_VENTAS ADD CONSTRAINT FK_DET_IDART FOREIGN KEY(ID_ART) REFERENCES ARTICULOS(ID_ART);
INSERT INTO DETALLE_VENTAS VALUES ('V0001','A0001', 4 ,1000.50,200.00,7200.00);
