INSERT INTO Usuarios
VALUES
(1,'Bruce Springsteen', 'BornInTheUSA', '190190', '89883349'),
(2, 'Billy Idol', 'SweetSixteen', '200200', '89270111'),
(3, 'Pat Benatar', 'LoveIsaB', '890890', '68742293'),
(4, 'Rick Astley', 'ToForever', '700700', '77329872'),
(5, 'Bonnie Tyler', 'IneedAHero', '200200', '54329872'),
(6, 'Madonna', 'MaterialGirl', '300900', '42738182')

INSERT INTO Anuncios
VALUES
(1, 'Vende-se churrasqueira', 'Churrasqueira de controle remoto','1000.00', 'maria@email.com', 1),
(2,'Vende-se Celular', 'Celular Iphone X semi-novo, com tela rachada','2000.00', 'jose@email.com', 2),
(3, 'Procuro babá', 'Babá para cuidar de um gato raivoso', '90.00' , 'roberto@email.com', 3),
(4, 'Precisa-se de programador', 'Iremos fazer uma cópia do Facebook', '600.00', 'julia@email.com', 4)

INSERT INTO Interessados
VALUES
(4, 3),
(4, 4),
(6, 1),
(5, 1)

SELECT * FROM Usuarios WHERE Usuario LIKE '%Born%'

SELECT AVG (Anuncios.Preco) AS Media
FROM Anuncios

SELECT
Usuarios.Nome AS Nome, Interessados.FK_Anuncio AS Compra, FK_Interessado
FROM Usuarios
RIGHT JOIN Interessados ON Usuarios.Id = Interessados.FK_Interessado