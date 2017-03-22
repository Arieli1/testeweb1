USE teste
GO
CREATE PROCEDURE BUSCAALUNO
@NOMEALUNO VARCHAR (20) --- Declarando variável (note que utilizamos o @ antes do nome da variável)
AS
SELECT n.nome, c.NOME--- Consulta
FROM TBL_ALUNO n,TBL_CURSO c
WHERE n.nome = @NOMEALUNO --- Utilizando variável como filtro para a consulta

execute BUSCAALUNO 'Arieli'
