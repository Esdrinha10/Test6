USE DB_EventosDeportivos;
GO

--2 INSERT INTO a 'tbUsuarios'
DECLARE @Pass AS NVARCHAR(MAX);
DECLARE @Clave AS NVARCHAR(250);
SET @Clave = 'AdminAHM2023';
SET @Pass = CONVERT(NVARCHAR(MAX), HASHBYTES('sha2_512', @Clave),2)

INSERT INTO tbUsuarios
VALUES('Admin', 'Eder Sánchez', @Pass, 1, GETDATE(), null, null, 1, 1);
GO

DECLARE @Pass AS NVARCHAR(MAX);
DECLARE @Clave AS NVARCHAR(250);
SET @Clave = 'AdminAHM2023';
SET @Pass = CONVERT(NVARCHAR(MAX), HASHBYTES('sha2_512', @Clave),2)

INSERT INTO tbUsuarios
VALUES('Jesus', 'Eder Jesús Sánchez', @Pass, 1, GETDATE(), null, null, 0, 1);
GO

SELECT * FROM tbUsuarios;
GO

--18 INSERT INTO a 'tbDepartamentos'
INSERT INTO  tbDepartamentos  
VALUES ('01', 'Atlántida', 1, GETDATE(), null, null);
GO

INSERT INTO  tbDepartamentos  
VALUES ('02', 'Colón', 1, GETDATE(), null, null);
GO

INSERT INTO  tbDepartamentos  
VALUES ('03', 'Comayagua', 1, GETDATE(), null, null);
GO

INSERT INTO  tbDepartamentos  
VALUES ('04', 'Copán', 1, GETDATE(), null, null);
GO

INSERT INTO  tbDepartamentos  
VALUES ('05', 'Cortés', 1, GETDATE(), null, null);
GO

INSERT INTO  tbDepartamentos  
VALUES ('06', 'Choluteca', 1, GETDATE(), null, null);
GO

INSERT INTO  tbDepartamentos  
VALUES ('07', 'El Paraíso', 1, GETDATE(), null, null);
GO

INSERT INTO  tbDepartamentos  
VALUES ('08', 'Francisco Morazán', 1, GETDATE(), null, null);
GO

INSERT INTO  tbDepartamentos  
VALUES ('09', 'Gracias a Dios', 1, GETDATE(), null, null);
GO

INSERT INTO  tbDepartamentos  
VALUES ('10', 'Intibucá', 1, GETDATE(), null, null);
GO

INSERT INTO  tbDepartamentos  
VALUES ('11', 'Islas de la Bahía', 1, GETDATE(), null, null);
GO

INSERT INTO  tbDepartamentos  
VALUES ('12', 'La Paz', 1, GETDATE(), null, null);
GO

INSERT INTO  tbDepartamentos  
VALUES ('13', 'Lempira', 1, GETDATE(), null, null);
GO

INSERT INTO  tbDepartamentos  
VALUES ('14', 'Ocotepeque', 1, GETDATE(), null, null);
GO

INSERT INTO  tbDepartamentos  
VALUES ('15', 'Olancho', 1, GETDATE(), null, null);
GO

INSERT INTO  tbDepartamentos  
VALUES ('16', 'Santa Bárbara', 1, GETDATE(), null, null);
GO

INSERT INTO  tbDepartamentos  
VALUES ('17', 'Valle', 1, GETDATE(), null, null);
GO

INSERT INTO  tbDepartamentos  
VALUES ('18', 'Yoro', 1, GETDATE(), null, null);
GO

--10 INSERT INTO a 'tbMunicipios'
INSERT INTO tbMunicipios 
VALUES ('0101', '01', 'La Ceiba', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0102', '01', 'El Porvenir', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0103', '01', 'Esparta', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0104', '01', 'Jutiapa', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0105', '01', 'La Masica', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0106', '01', 'San Francisco', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0107', '01', 'Tela', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0108', '01', 'Arizona', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0201', '02', 'Trujillo', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0202', '02', 'Balfate', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0203', '02', 'Iriona', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0204', '02', 'Limón', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0205', '02', 'Sabá', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0206', '02', 'Santa Fe', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0207', '02', 'Santa Rosa de Aguán', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0208', '02', 'Sonaguera', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0209', '02', 'Tocoa', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0210', '02', 'Bonito Oriental', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0301', '03', 'Comayagua', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0302', '03', 'Ajuterique', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0303', '03', 'El Rosario', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0304', '03', 'Esquías', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0305', '03', 'Humuya', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0306', '03', 'La Libertad', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0307', '03', 'Lamaní', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0308', '03', 'La Trinidad', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0309', '03', 'Lejamaní', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0310', '03', 'Meámbar', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0311', '03', 'Minas de Oro', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0312', '03', 'Ojos de Agua', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0313', '03', 'San Jerónimo', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0314', '03', 'San José de Comayagua', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0315', '03', 'San José del Potrero', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0316', '03', 'San Luis', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0317', '03', 'San Sebastián', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0318', '03', 'Siguatepeque', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0319', '03', 'Villa de San Antonio', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0320', '03', 'Las Lajas', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0321', '03', 'Taulabé', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0401', '04', 'Santa Rosa de Copán', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0402', '04', 'Cabañas', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0403', '04', 'Concepción', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0404', '04', 'Copán Ruinas', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0405', '04', 'Corquín', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0406', '04', 'Cucuyagua', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0407', '04', 'Dolores', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0408', '04', 'Dulce Nombre', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0409', '04', 'El Paraíso', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0410', '04', 'Florida', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0411', '04', 'La Jigua', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0412', '04', 'La Unión', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0413', '04', 'Nueva Arcadia', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0414', '04', 'San Agustín', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0415', '04', 'San Antonio', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0416', '04', 'San Jerónimo', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0417', '04', 'San José', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0418', '04', 'San Juan de Opoa', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0419', '04', 'San Nicolás', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0420', '04', 'San Pedro', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0421', '04', 'Santa Rita', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0422', '04', 'Trinidad de Copán', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0423', '04', 'Veracruz', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0501', '05', 'San Pedro Sula', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0502', '05', 'Choloma', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0503', '05', 'Omoa', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0504', '05', 'Pimienta', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0505', '05', 'Potrerillos', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0506', '05', 'Puerto Cortés', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0507', '05', 'San Antonio de Cortés', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0508', '05', 'San Francisco de Yojoa', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0509', '05', 'San Manuel', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0510', '05', 'Santa Cruz de Yojoa', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0511', '05', 'Villanueva', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0512', '05', 'La Lima', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0601', '06', 'Choluteca', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0602', '06', 'Apacilagua', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0603', '06', 'Concepción de María', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0604', '06', 'Duyure', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0605', '06', 'El Corpus', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0606', '06', 'El Triunfo', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0607', '06', 'Marcovia', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0608', '06', 'Morolica', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0609', '06', 'Namasigüe', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0610', '06', 'Orocuina', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0611', '06', 'Pespire', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0612', '06', 'San Antonio de Flores', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0613', '06', 'San Isidro', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0614', '06', 'San José', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0615', '06', 'San Marcos de Colón', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0616', '06', 'Santa Ana de Yusguare', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0701', '07', 'Yuscarán', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0702', '07', 'Alauca', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0703', '07', 'Danlí', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0704', '07', 'El Paraíso', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0705', '07', 'Güinope', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0706', '07', 'Jacaleapa', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0707', '07', 'Liure', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0708', '07', 'Morocelí', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0709', '07', 'Oropolí', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0710', '07', 'Potrerillos', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0711', '07', 'San Antonio de Flores', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0712', '07', 'San Lucas', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0713', '07', 'San Matías', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0714', '07', 'Soledad', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0715', '07', 'Teupasenti', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0716', '07', 'Texiguat', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0717', '07', 'Vado Ancho', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0718', '07', 'Yauyupe', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0719', '07', 'Trojes', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0801', '08', 'Distrito Central (Tegucigalpa y Comayaguela);', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0802', '08', 'Alubarén', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0803', '08', 'Cedros', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0804', '08', 'Curarén', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0805', '08', 'El Porvenir', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0806', '08', 'Guaimaca', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0807', '08', 'La Libertad', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0808', '08', 'La Venta', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0809', '08', 'Lepaterique', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0810', '08', 'Maraita', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0811', '08', 'Marale', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0812', '08', 'Nueva Armenia', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0813', '08', 'Ojojona', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0814', '08', 'Orica (Francisco Morazan);', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0815', '08', 'Reitoca', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0816', '08', 'Sabanagrande', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0817', '08', 'San Antonio de Oriente', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0818', '08', 'San Buenaventura', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0819', '08', 'San Ignacio', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0820', '08', 'San Juan de Flores o como se le conoce Cantarranas', 1, GETDATE(), null, null)
GO

INSERT INTO tbMunicipios 
VALUES ('0821', '08', 'San Miguelito', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0822', '08', 'Santa Ana', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0823', '08', 'Santa Lucía', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0824', '08', 'Talanga', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0825', '08', 'Tatumbla', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0826', '08', 'Valle de Ángeles', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0827', '08', 'Villa de San Francisco', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0828', '08', 'Vallecillo', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0901', '09', 'Puerto Lempira', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0902', '09', 'Brus Laguna', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0903', '09', 'Ahuas', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0904', '09', 'Juan Francisco Bulnes', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0905', '09', 'Ramón Villeda Morales', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('0906', '09', 'Wampusirpe', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1001', '10', 'La Esperanza', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1002', '10', 'Camasca', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1003', '10', 'Colomoncagua', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1004', '10', 'Concepción', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1005', '10', 'Dolores', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1006', '10', 'Intibucá', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1007', '10', 'Jesús de Otoro', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1008', '10', 'Magdalena', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1009', '10', 'Masaguara', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1010', '10', 'San Antonio', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1011', '10', 'San Isidro', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1012', '10', 'San Juan', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1013', '10', 'San Marcos de la Sierra', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1014', '10', 'San Miguel Guancapla', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1015', '10', 'Santa Lucía', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1016', '10', 'Yamaranguila', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1017', '10', 'San Francisco de Opalaca', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1101', '11', 'Roatán', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1102', '11', 'Guanaja', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1103', '11', 'José Santos Guardiola', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1104', '11', 'Utila', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1201', '12', 'La Paz', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1202', '12', 'Aguanqueterique', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1203', '12', 'Cabañas', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1204', '12', 'Cane', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1205', '12', 'Chinacla', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1206', '12', 'Guajiquiro', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1207', '12', 'Lauterique', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1208', '12', 'Marcala', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1209', '12', 'Mercedes de Oriente', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1210', '12', 'Opatoro', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1211', '12', 'San Antonio del Norte', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1212', '12', 'San José', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1213', '12', 'San Juan', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1214', '12', 'San Pedro de Tutule', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1215', '12', 'Santa Ana', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1216', '12', 'Santa Elena', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1217', '12', 'Santa María', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1218', '12', 'Santiago de Puringla', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1219', '12', 'Yarula', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1301', '13', 'Gracias', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1302', '13', 'Belén', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1303', '13', 'Candelaria', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1304', '13', 'Cololaca', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1305', '13', 'Erandique', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1306', '13', 'Gualcince', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1307', '13', 'Guarita', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1308', '13', 'La Campa', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1309', '13', 'La Iguala', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1310', '13', 'Las Flores', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1311', '13', 'La Unión', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1312', '13', 'La Virtud', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1313', '13', 'Lepaera', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1314', '13', 'Mapulaca', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1315', '13', 'Piraera', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1316', '13', 'San Andrés', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1317', '13', 'San Francisco', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1318', '13', 'San Juan Guarita', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1319', '13', 'San Manuel Colohete', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1320', '13', 'San Rafael', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1321', '13', 'San Sebastián', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1322', '13', 'Santa Cruz', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1323', '13', 'Talgua', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1324', '13', 'Tambla', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1325', '13', 'Tomalá', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1326', '13', 'Valladolid', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1327', '13', 'Virginia', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1328', '13', 'San Marcos de Caiquín', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1401', '14', 'Nueva Ocotepeque', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1402', '14', 'Belén Gualcho', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1403', '14', 'Concepción', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1404', '14', 'Dolores Merendón', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1405', '14', 'Fraternidad', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1406', '14', 'La Encarnación', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1407', '14', 'La Labor', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1408', '14', 'Lucerna', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1409', '14', 'Mercedes', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1410', '14', 'San Fernando', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1411', '14', 'San Francisco del Valle', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1412', '14', 'San Jorge', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1413', '14', 'San Marcos', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1414', '14', 'Santa Fe', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1415', '14', 'Sensenti', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1416', '14', 'Sinuapa', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1501', '15', 'Juticalpa', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1502', '15', 'Campamento', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1503', '15', 'Catacamas', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1504', '15', 'Concordia', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1505', '15', 'Dulce Nombre de Culmí', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1506', '15', 'El Rosario', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1507', '15', 'Esquipulas del Norte', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1508', '15', 'Gualaco', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1509', '15', 'Guarizama', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1510', '15', 'Guata', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1511', '15', 'Guayape', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1512', '15', 'Jano', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1513', '15', 'La Unión', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1514', '15', 'Mangulile', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1515', '15', 'Manto', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1516', '15', 'Salamá', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1517', '15', 'San Esteban', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1518', '15', 'San Francisco de Becerra', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1519', '15', 'San Francisco de la Paz', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1520', '15', 'Santa María del Real', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1521', '15', 'Silca', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1522', '15', 'Yocón', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1523', '15', 'Patuca', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1601', '16', 'Santa Bárbara', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1602', '16', 'Arada', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1603', '16', 'Atima', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1604', '16', 'Azacualpa', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1605', '16', 'Ceguaca', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1606', '16', 'San José de las Colinas', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1607', '16', 'Concepción del Norte', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1608', '16', 'Concepción del Sur', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1609', '16', 'Chinda', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1610', '16', 'El Níspero', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1611', '16', 'Gualala', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1612', '16', 'Ilama', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1613', '16', 'Macuelizo', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1614', '16', 'Naranjito', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1615', '16', 'Nuevo Celilac', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1616', '16', 'Petoa', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1617', '16', 'Protección', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1618', '16', 'Quimistán', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1619', '16', 'San Francisco de Ojuera', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1620', '16', 'San Luis', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1621', '16', 'San Marcos', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1622', '16', 'San Nicolás', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1623', '16', 'San Pedro Zacapa', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1624', '16', 'Santa Rita', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1625', '16', 'San Vicente Centenario', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1626', '16', 'Trinidad', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1627', '16', 'Las Vegas', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1628', '16', 'Nueva Frontera', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1702', '17', 'Alianza', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1703', '17', 'Amapala', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1704', '17', 'Aramecina', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1705', '17', 'Caridad', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1706', '17', 'Goascorán', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1707', '17', 'Langue', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1701', '17', 'Nacaome', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1708', '17', 'San Francisco de Coray', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1709', '17', 'San Lorenzo', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1801', '18', 'Yoro', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1802', '18', 'Arenal', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1803', '18', 'El Negrito', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1804', '18', 'El Progreso', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1805', '18', 'Jocón', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1806', '18', 'Morazán', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1807', '18', 'Olanchito', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1808', '18', 'Santa Rita', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1809', '18', 'Sulaco', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1810', '18', 'Victoria', 1, GETDATE(), null, null);
GO

INSERT INTO tbMunicipios 
VALUES ('1811', '18', 'Yorito', 1, GETDATE(), null, null);
GO
--5 INSERTS a 'tbEstadosCiviles'
INSERT INTO tbEstadosCiviles
VALUES ('S', 'Soltero(a)', 1, GETDATE(), null, null);
GO

INSERT INTO tbEstadosCiviles
VALUES ('C', 'Casado(a)', 1, GETDATE(), null, null);
GO

INSERT INTO tbEstadosCiviles
VALUES ('V', 'Viudo(a)', 1, GETDATE(), null, null);
GO

INSERT INTO tbEstadosCiviles
VALUES ('D', 'Divorciado(a)', 1, GETDATE(), null, null);
GO

INSERT INTO tbEstadosCiviles
VALUES ('U', 'Union Libre', 1, GETDATE(), null, null);
GO

--10 INSERTS a 'tbColaboradores'
INSERT INTO tbColaboradores
VALUES('0505199216854', 'Carolina Nicolle', 'Alvarez Mejia', 'F', 'S', '05-13-1992', '0101', 'Col. Edilberto Solano', '+504 3132-3334', 'carolina.nicolle@gmail.com', 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbColaboradores
VALUES('0801199825487', 'Javier Alejandro', 'Paz Barahona', 'M', 'C', '12-09-1998', '0201', 'Col. Trincheras', '+504 9192-9394', 'javier.paz@gmail.com', 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbColaboradores
VALUES('1406199516254', 'Juan Fabricio', 'Morel Gutierres', 'M', 'D', '07-19-1995', '0301', 'Col. Trejo', '+504 9493-9291', 'juan.fabricio@gmail.com', 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbColaboradores
VALUES('0701200194857', 'Mario Roberto', 'Medina Fuentes',  'M', 'V', '03-29-2001', '0401', 'Col. Satelite', '+504 8182-8384', 'mario.medina@gmail.com', 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbColaboradores
VALUES('0503200208451', 'Allan Manuel', 'Castillo Pinto', 'M', 'S', '09-21-2002', '0501', 'Col. Rivera Hernandez', '+504 3433-3231', 'allan.manuel@gmail.com', 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbColaboradores
VALUES('1706200316845', 'Sonny Eduardo', 'Maradiaga Alburez', 'M', 'C', '11-11-2003', '0601', 'Res. Villas Makey', '+504 9091-9293', 'sonny.maradiaga@gmail.com', 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbColaboradores
VALUES('0804200114151', 'Maria Stephanie', 'Murcia Sandoval', 'F', 'D', '04-23-2001', '0701', 'Col. Kennedy', '+504 8081-8283', 'maria.stephanie@gmail.com', 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbColaboradores
VALUES('0501200013987', 'Roger Alexander', 'Bonilla Cruz', 'M', 'V', '02-26-2000', '0801', 'Col. Fesitranh', '+504 9392-9190', 'roger.bonilla@gmail.com', 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbColaboradores
VALUES('1107199919845', 'Nadia Jiovanessy', 'Menjivar Castro', 'F', 'S', '12-31-1999', '0901', 'Col. Ideal', '+504 3332-3130', 'nadia.jiovanessy@gmail.com', 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbColaboradores
VALUES('1508200324516', 'Santos Domingo', 'Carranza Power', 'M', 'C', '06-17-2003', '1001', 'Col. Rio Blanco', '+504 9192-9397', 'santos.carranza@gmail.com', 1, GETDATE(), null, null, 1);
GO

--10 INSERTS a 'tbParticipantes'
INSERT INTO tbParticipantes
VALUES('0613199817853', 'Jose Miguel', 'Murcia Castro', 'M', 'C', '03-14-1998', '1001', 'Res. Campisa', '+504 3831-3029', 'miguel.castro@gmail.com', 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbParticipantes
VALUES('1801200000010', 'Noe Edil', 'Barnica Ramos', 'M', 'S', '05-19-2000', '0901', 'Res. Quintas Marta Elena', '+504 8925-8314', 'noe3@gmail.com', 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbParticipantes
VALUES('0501200110543', 'Loany Michelle', 'Paz Guerra', 'F', 'V', '03-27-2001', '0801', 'Res. Cerro Verde', '+504 8586-2314', 'loany15@gmail.com', 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbParticipantes
VALUES('0409199934517', 'Daniel Enrique', 'Matamoros De la O', 'M', 'D', '04-30-1999', '0701', 'Col. Cascadas', '+504 9991-4436', 'enrique.99@gmail.com', 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbParticipantes
VALUES('0503200207911', 'Andrea Nicolle', 'Crivelli Zamorano', 'F', 'S', '10-29-2002', '0601', 'Col. Monte Alegre', '+504 3915-1658', 'nicolle29@gmail.com', 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbParticipantes
VALUES('0607199301185', 'Mágdaly', 'Zúniga Alvarado', 'F', 'C', '11-25-1993', '0501', 'Victor F Ardon', '+504 3339-6645', 'magdalyz22@gmail.com', 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbParticipantes
VALUES('0501200506681', 'Javier Eduardo', 'López', 'M', 'V', '03-09-2005', '0401', 'Colonia Los naranjos, Bloque 10, Casa 12', '+504 9821-4819', 'javslopez7@gmail.com', 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbParticipantes
VALUES('1615200500062', 'Juan David', 'Molina Sagastume', 'M', 'D', '02-22-2005', '0301', 'Res. Larios Silva, Sector Felipe Zelaya', '+504 9451-9231', 'juanmolinasagastume@gmail.com', 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbParticipantes
VALUES('1884200105691', 'Ian Alexander', 'Hernandez Escobar', 'M', 'S', '10-22-2001', '0201', 'Col. 2 de Marzo, 4ta calle, Casa 5', '+504 9471-3500', 'ianh8902@gmail.com', 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbParticipantes
VALUES('0501200209630', 'Axel Dario', 'Rivera Murillo', 'M', 'C', '03-05-2002', '0101', 'Col. Planeta, Bloque 65, Casa 1857', '+504 3165-0161', 'axeldm05@gmail.com', 1, GETDATE(), null, null, 1);
GO

--10 INSERTS a 'tbDeportes'
INSERT INTO tbDeportes
VALUES ('Fútbol', 1, GETDATE(), null, null);
GO

INSERT INTO tbDeportes
VALUES ('Natación', 1, GETDATE(), null, null);
GO

INSERT INTO tbDeportes
VALUES ('Baloncesto', 1, GETDATE(), null, null);
GO

INSERT INTO tbDeportes
VALUES ('Tenis', 1, GETDATE(), null, null);
GO

INSERT INTO tbDeportes
VALUES ('Baseball', 1, GETDATE(), null, null);
GO

INSERT INTO tbDeportes
VALUES ('Volleyball', 1, GETDATE(), null, null);
GO

INSERT INTO tbDeportes
VALUES ('Hockey', 1, GETDATE(), null, null);
GO

INSERT INTO tbDeportes
VALUES ('Rugby', 1, GETDATE(), null, null);
GO

INSERT INTO tbDeportes
VALUES ('Golf', 1, GETDATE(), null, null);
GO

INSERT INTO tbDeportes
VALUES ('Boxeo', 1, GETDATE(), null, null);
GO

--10 INSERTS a 'tbEventos'
INSERT INTO tbEventos
VALUES('Cuadrangular', 1, '05-07-2023', 360, 1, 10, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventos
VALUES('Campeonato', 2, '04-22-2023', 180, 2, 8, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventos
VALUES('Triangular', 3, '08-26-2023', 210, 3, 7, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventos
VALUES('Campeonato', 4, '09-15-2023', 160, 4, 6, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventos
VALUES('Campeonato', 5, '01-18-2024', 190, 5, 4, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventos
VALUES('Campeonato', 6, '07-19-2024', 200, 6, 5, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventos
VALUES('Campeonato', 7, '03-12-2023', 175, 7, 3, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventos
VALUES('Campeonato', 8, '02-18-2024', 120, 8, 2, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventos
VALUES('Campeonato', 9, '09-21-2024', 150, 9, 1, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventos
VALUES('Campeonato', 10, '10-17-2023', 250, 10, 9, 1, GETDATE(), null, null, 1);
GO

-- INSERTS a 'tbEventosParticipantes'
INSERT INTO tbEventosParticipantes
VALUES(1, 1, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(1, 2, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(1, 3, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(1, 4, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(1, 5, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(2, 6, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(2, 7, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(2, 8, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(2, 9, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(2, 10, 1, GETDATE(), null, null, 1);
GO	

INSERT INTO tbEventosParticipantes
VALUES(3, 1, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(3, 2, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(3, 3, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(3, 4, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(3, 5, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(4, 6, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(4, 7, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(4, 8, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(4, 9, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(4, 10, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(5, 1, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(5, 2, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(5, 3, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(5, 4, 1, GETDATE(), null, null, 1);
GO

INSERT INTO tbEventosParticipantes
VALUES(5, 5, 1, GETDATE(), null, null, 1);
GO

/*
INSERT INTO tbParticipantes
VALUES('0501200206702', 'Eder Jesus', 'Sánchez Martínez', 'M', 'S', '04-22-2002', '0501', 'Res. Las Colinas', '+504 9617-8153', 'ederjsanchez22@gmail.com', 1, GETDATE(), null, null, 1);
GO
*/