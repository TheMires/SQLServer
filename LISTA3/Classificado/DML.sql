INSERT INTO Usuarios
VALUES
(1, 'Marilyn Monroe', 'MariM', '190190', '89883349'),
(2, 'Marlon Brando', 'MarlonB', '200200', '89270111'),
(3, 'James Dean', 'JimDean', '890890', '68742293')

INSERT INTO Anuncio
VALUES
(1, 'Vende-se churrasqueira', 'Churrasqueira de controle remoto', 'juju@email.com', 1),
(2,'Vende-se Celular', 'Celular Iphone X semi-novo', 'gugu@email.com', 2),
(3, 'Procuro babá', 'Babá para cuidar de uma criança de 4 anos', 'lulu@email.com', 3)

SELECT * FROM Usuarios
WHERE Nome LIKE '&Mar&'