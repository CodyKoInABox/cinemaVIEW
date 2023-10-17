--@block
SHOW TABLES;

--@block
SELECT * FROM filme;

--@block
SELECT * FROM ator;

--@block EXERCICIO 1
CREATE VIEW exercicio1 AS
SELECT f.tituloP AS Titulo, f.impropriedade AS Classificacao, g.descricao AS Genero, a.nome AS Direcao
FROM filme f
INNER JOIN genero g
ON g.cod_genero = f.genero
INNER JOIN ator a
ON f.diretor = a.cod_ator;

--@block
SELECT * FROM exercicio1;

--@block EXERCICIO 2
CREATE VIEW FilmesLivresTomHanks AS
SELECT f.tituloP AS Titulo
FROM filme f
INNER JOIN ator a
ON f.diretor = a.cod_ator
WHERE f.impropriedade = "livre";

--@block
SELECT * FROM filmeslivrestomhanks;

--@block EXERCICIO 3
CREATE VIEW AtoresEFilmes AS
SELECT a.nome, f.tituloP
FROM filme f
INNER JOIN elenco e
ON f.cod_filme = e.cod_filme
INNER JOIN ator a
ON e.cod_ator = a.cod_ator;

--@block
SELECT * FROM atoresefilmes;

--@block EXERCICIO 4
CREATE VIEW AtoresEPaises AS
SELECT a.nome, a.nacionalidade
FROM ator a;

--@block
SELECT * FROM atoresepaises;

--@block EXERCICIO 5
CREATE VIEW FilmesLongos AS
SELECT f.tituloP AS Titulo, a.nome AS Diretor
FROM filme f
INNER JOIN ator a
ON f.diretor = a.cod_ator
WHERE f.duracao > 125;

--@block
SELECT * FROM filmeslongos;

--@block EXERCICIO 6
CREATE VIEW exercicio6 AS
SELECT f.tituloP AS Titulo, f.duracao AS Duracao, f.pais_origem AS Origem, f.impropriedade AS Impropriedade
FROM filme f;

--@block
SELECT * FROM exercicio6;