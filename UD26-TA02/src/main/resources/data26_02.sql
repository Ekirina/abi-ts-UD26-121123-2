DROP DATABASE IF exists	data26_02;
CREATE database data26_02;
USE data26_02;
CREATE table cientificos(
	dni VARCHAR(8),
    nom_apels VARCHAR(255),
    primary key (dni)
);
CREATE table proyectos(
	id CHAR(4),
    nombre VARCHAR(255),
    horas int,
    primary key (id)
);
CREATE table asignado_a(
    id int auto_increment,
	dni_cientifico VARCHAR(8),
    id_proyecto CHAR(4),
    foreign key (dni_cientifico) REFERENCES cientificos (dni)
   	ON DELETE CASCADE ON UPDATE CASCADE,
	foreign key (id_proyecto) REFERENCES proyectos (id)
	ON DELETE CASCADE ON UPDATE CASCADE,
	primary key (id)
);
insert into cientificos (dni, nom_apels) values ("99149698", 'Kissee Martin'),
											  ("94058792", 'Warden Donell'),
											  ("95880396", 'Worthington Huks'),
											  ("91486196", 'Rory Hoot'),
											  ("93827341", 'Barbaraanne Melvin'),
											  ("93538273", 'Ermin Danton'),
										  	  ("99117579", 'Violante Marsel'),
										  	  ("97285086", 'Filia Gomis'),
											  ("93951813", 'Reagen Molter'),
											  ("95564872", 'Elwin Truan');
                                              
insert into proyectos values ("RE32", "Scorpio", 500),
					        ('YK84', 'Skin Eruptions', 669),
					        ('RZ78', 'Aversion to Exertion', 523),
					        ('WK47', 'Lovenox', 585),
					        ('AS05', 'EROS LONG STAY SILICONE GLIDE', 355),
					        ('PX22', 'Antibiotic and Pain Relief', 508),
					        ('KZ62', 'VYTORIN', 337);
                            
insert into asignado_a (dni_cientifico, id_proyecto) values("99149698", "RE32"),
							                                ("94058792", "RE32"),
							                                ("95880396", "YK84"),
							                                ("91486196", "RZ78"),
							                                ("99117579", "WK47"),
							                                ("95564872", "AS05");