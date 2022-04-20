INSERT INTO Usuarios
VALUES
(1, 'Jim Halpert', 'jim@email.com', '909090', 'Rua do Gugu, 10 - SP'),
(2, 'Pam Beesly', 'pam@email.com', '808080', 'Rua do Faustao, 20 - SP'),
(3, 'Michael Scott', 'mike@email.com', '707070', 'Rua do Ratinho, 30 - SP')

INSERT INTO Produtos
VALUES
('Playstation 1', 'Videogame com muito jogo da hora', 250,00, 3),
('Nintendo 64', 'Videogame pra jogar mario e zelda', 300,00, 3),
('Dreamcast', 'Videogame da Sega, jogue sonic', 200,00, 2)

INSERT INTO Compras
VALUES
(1, 3),
(2, 1),
(2, 2)

SELECT * FROM Usuarios WHERE Endereco LIKE '%Gugu%'