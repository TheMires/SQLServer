INSERT INTO Usuarios
VALUES
(1, 'Claudio Moreira', 'ClauClau', 123456),
(2, 'Renata Fernandes', 'Renatinhas2', 987654),
(3, 'Fernando Gomes', 'NandoLover', 101010)

INSERT INTO Grupos
VALUES
(1, 'Perguntas', 'Pergunte o que quiser', 1),
(2, 'Música', 'Discuta sobre musica', 1),
(3, 'Noticias', 'Principais noticias da cidade de São Paulo', 1)

INSERT INTO Postagens
VALUES
(1, 'O que devo dizer num primeiro encontro?', 'O que posso dizer para impressionar?', 1, 1),
(2, 'Existem covers melhores que as musicas originais', 'Como Twist and Shout dos Beatles', 2, 2),
(3, 'Vacinacao contra gripe comeca no domingo', 'Somente para idosos com idade acima de 80 anos', 3, 3)

SELECT * FROM Usuarios WHERE Usuario LIKE '%has%'

SELECT COUNT(Grupos.Grupo) AS 'Total de grupos'
FROM Grupos

SELECT Usuarios.Nome
FROM Usuarios
FULL OUTER JOIN Grupos
ON Grupos.Id = Grupos.Grupo
ORDER BY Usuarios.Nome