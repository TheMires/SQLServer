INSERT INTO Usuarios
VALUES
(1, 'Dirce Ferreira', 'dirce@email.com', '1234', 'Rua John Lennon, 120 - SP'),
(2, 'Rose Ferreira', 'rose@email.com','5678', 'Rua George Harrison, 130 - SP'),
(3, 'Manoel Vitorino', 'manoel@email.com', '9876', 'Rua Paul McCartney, 140 - SP')

INSERT INTO Categorias
VALUES
(1, 'Roupas'),
(2, 'Sapatos')

INSERT INTO Produtos
VALUES
('Camisa', 'Camisa xadrez de algod�o', 69.90, 3, 1),
('Cal�a', 'Cal�a jeans na cor azul', 89.90, 3, 1),
('Tenis', 'Tenis de tecido na cor rosa', 189.90, 2, 2)

INSERT INTO Compras
VALUES
(1, 3),
(2, 1),
(2, 2),
(2, 3)

SELECT * FROM Usuarios WHERE Endereco LIKE '%Rua John%'

SELECT * FROM Produtos WHERE Preco BETWEEN 60 AND 90

SELECT AVG (Produtos.Preco) AS Total
FROM Produtos

SELECT
Usuarios.Nome AS Nome, Compras.FK_Comprador AS Compra, Produtos.NomeProduto As Produto
FROM Usuarios
LEFT JOIN Compras ON Usuarios.Id = Compras.FK_comprador
LEFT JOIN Produtos ON Compras.FK_Produto = Produtos.Id